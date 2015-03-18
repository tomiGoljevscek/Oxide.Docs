# Rust API Hooks

## Plugin hooks

### Init()
 * Called when the plugin is being loaded
 * Other plugins may or may not be present, dependant on load order
 * Other plugins WILL have been executed though, so globals exposed by them will be present

### LoadDefaultConfig()
 * Called when the config for the plugin should be initialized
 * Only called if the config file does not already exist

### Unload()
 * Called when the plugin is being unloaded

### OnPluginLoaded(plugin)
 * Called when specified plugin has been loaded

### OnPluginUnloaded(plugin)
 * Called when specified plugin has been unloaded

## General hooks

### OnInitLogging()
 * Called from Assembly-CSharp/Bootstrap.StartupShared
 * No return behavior
 * Used internally by Oxide to start Unity logging

### ModifyTags(string oldtags)
 * Called from Assembly-CSharp/ServerMgr.UpdateServerInformation
 * Returning a string overrides the tags with new ones
 * Used by RustCore and abstracted into BuildServerTags

### BuildServerTags(IList<string> tags)
 * Called from RustCore.ModifyTags
 * No return behavior
 * Add tags to the list, they will be concat'd at the end

### OnTerrainInitialized()
 * Called from Assembly-CSharp/InitializePVT.Apply
 * No return behavior
 * Called after the terrain generation process has completed

### OnServerInitialized()
 * Called from Assembly-CSharp/ServerMgr
 * No return behavior
 * Called after the server startup has been completed and is awaiting connections

### OnServerSave()
 * Called from Assembly-CSharp/SaveRestore
 * No return behavior
 * Called before the server saves and rotates the .sav files

### OnServerShutdown()
 * Called from Assembly-CSharp/ConsoleGlobal
 * No return behavior
 * Called before the server starts the shutdown sequence
 * This should generally not be used by plugins, instead use the Unload hook
 * This is the direct replacement to OnServerQuit, which has since been removed

### OnTick()
 * Called from Assembly-CSharp/ServerMgr.DoTick
 * No return behavior
 * Called every tick (defined by the tickrate of the server?)

### OnRunCommand(ConsoleSystem.Arg arg)
 * Called from Assembly-CSharp/ConsoleSystem.Run_Internal, Assembly-CSharp/ConsoleSystem.Run_Unrestricted, and Assembly-CSharp/ConsoleSystem.SystemRealm_Normal
 * Return true to override Rust's command handling system
 * Useful for intercepting commands before they get to their intended target (like chat.say)
 * Used by RustCore to implement chat commands

## Player hooks

### OnUserApprove(Network.Connection connection)
 * Called from Assembly-CSharp/ConnectionAuth.OnNewConnection
 * Returning a non-null value overrides default behavior, plugin should call Reject if it does this
 * Used by RustCore and abstracted into CanClientLogin

### CanClientLogin(Network.Connection connection)
 * Called from RustCore.OnUserApprove
 * Returning true will allow the connection, returning nothing will by default allow the connection, returning anything else will reject it with an error message
 * Returning a string will use the string as the error message

### OnPlayerConnected(Network.Message packet)
 * Called from Assembly-CSharp/ServerMgr
 * No return behavior
 * Called before the player object is created, but after the player has been approved to join the game
 * Can get the connection from packet.connection

### OnPlayerDisconnected(BasePlayer player)
 * Called from Assembly-CSharp/ServerMgr
 * No return behavior
 * Called before the player object is created, but after the player has been approved to join the game

### OnPlayerInit(BasePlayer player)
 * Called from Assembly-CSharp/BasePlayer
 * No return behavior
 * Called when the player is initialising (after they've connected, before they wake up)

### OnFindSpawnPoint()
 * Called from Assembly-CSharp/ServerMgr
 * Return a Assembly-CSharp/BasePlayer.SpawnPoint object to use that spawnpoint
 * Useful for controlling player spawnpoints (like making all spawns occur in a set area)

### OnPlayerRespawned(BasePlayer player, Network.Connection connection)
 * Called when the player spawns (specifically when they click the "Respawn" button)
 * No return behavior
 * ONLY called after the player has transitioned from dead to not-dead, so not when they're waking up
 * This means it's possible for a player to connect and disconnect from a server without OnPlayerRespawned ever triggering for them

### OnPlayerChat(ConsoleSystem.Arg arg)
 * Called from Assembly-CSharp/chat.say
 * Returning a non-null value overrides default behavior of chat, not commands

### OnRunPlayerMetabolism(PlayerMetabolism metabolism)
 * Called before a metabolism update occurs for the specified player
 * Returning true cancels the update
 * Metabolism update consists of managing the player's temperature, health etc.
 * You can use this to turn off or change certain aspects of the metabolism, either by editing values before returning, or taking complete control of the method
 * Access the player object using metabolism:GetComponent("BasePlayer")

### OnPlayerAttack(BasePlayer attacker, HitInfo hitInfo)
 * Called from Assembly-CSharp/BasePlayer
 * Returning true cancels the attack
 * Useful for modifying an attack before it goes out
 * hitInfo.HitEntity should be the entity that this attack would hit

### OnPlayerLoot(PlayerLoot lootInventory, BaseEntity targetEntity)
 * Called from Assembly-CSharp/PlayerLoot
 * No return behavior
 * Called when the player starts looting an entity

### OnPlayerLoot(PlayerLoot lootInventory, BasePlayer targetPlayer)
 * Called from Assembly-CSharp/PlayerLoot
 * No return behavior
 * Called when the player starts looting another player

### OnPlayerLoot(PlayerLoot lootInventory, Item targetItem)
 * Called from Assembly-CSharp/PlayerLoot
 * No return behavior
 * Called when the player starts looting an item

## Entity hooks

### OnEntitySpawned(BaseNetworkable entity)
 * Called from Assembly-CSharp/BaseNetworkable
 * No return behavior
 * Called after any networked entity has spawned (including trees)

### OnEntityAttacked(BaseCombatEntity entity, HitInfo hitInfo)
 * Called from multiple places, each entity's attack handler basically
 * Returning non-null value overrides default server behavior (useful for godmode etc.)
 * Alternatively, modify the hitInfo object to change the damage
 * It should be okay to set the damage to 0, but if you don't return non-null, the player's client will receive a damage indicator (if entity is a BasePlayer)
 * hitInfo has all kinds of useful things in it, such as hitInfo.Weapon, hitInfo.damageAmount or hitInfo.damageType
 * Currently implemented for: BasePlayer, BaseAnimal

### OnEntityDeath(BaseCombatEntity entity, HitInfo hitInfo)
 * Called from multiple places, each entity's death handler basically
 * No return behavior
 * hitInfo might be null, check it before use
 * Editing hitInfo probably has no effect
 * Currently implemented for: BasePlayer, BaseAnimal

### OnEntityEnter(TriggerBase triggerBase, BaseEntity entity)
 * Called from Assembly-CSharp/TriggerBase
 * No return behavior
 * Called when an entity enters an area/zone (building privilege zone, water area, radiation zone, hurt zone, etc.)

### OnEntityLeave(TriggerBase triggerBase, BaseEntity entity)
 * Called from Assembly-CSharp/TriggerBase
 * No return behavior
 * Called when an entity leaves an area/zone (building privilege zone, water area, radiation zone, hurt zone, etc.)

## Item hooks

### OnItemCraft(ItemCraftTask item)
 * Called from Assembly-CSharp/ItemCrafter
 * Return a Assembly-CSharp/ItemCraftTask object to modify behavior
 * Called right after an item has started crafting

### OnItemDeployed(Deployer deployer, BaseEntity deployedEntity)
 * Assembly-CSharp/Deployer
 * No return behavior
 * Called right after an item has been deployed

### OnItemAddedToContainer(ItemContainer container, Item item)
 * Called from Assembly-CSharp/ItemContainer
 * No return behavior
 * Called right after an item was added to a container
 * An entire stack has to be created, not just adding more wood to a wood stack for example

### OnItemRemovedFromContainer(ItemContainer container, Item item)
 * Called from Assembly-CSharp/ItemContainer
 * No return behavior
 * Called right after an item was removed from a container
 * The entire stack has to be removed for this to be called, not just a little bit

### OnConsumableUse(Item item)
 * Called from Assembly-CSharp/Item
 * No return behavior
 * Called right after a consumable item is used

### OnGather(ResourceDispenser dispenser, BaseEntity entity, Item item)
 * Assembly-CSharp/ResourceDispenser
 * No return behavior
 * Called before the player is given items from a resource

## Structure hooks

### CanOpenDoor(BasePlayer player, BaseLock lock)
 * Called from Assembly-CSharp/BaseLock
 * Returning true will allow door usage, nothing will by default will allow door usage, returning anything else will reject door usage

### CanOpenDoor(BasePlayer player, CodeLock codeLock)
 * Called from Assembly-CSharp/CodeLock
 * Returning true will allow door usage, nothing will by default will allow door usage, returning anything else will reject door usage

### CanOpenDoor(BasePlayer player, KeyLock keyLock)
 * Called from Assembly-CSharp/KeyLock
 * Returning true will allow door usage, nothing will by default will allow door usage, returning anything else will reject door usage

### OnEntityBuilt(Planner planner, UnityEngine/GameObject gameObject)
 * Called from Assembly-CSharp/Item.Modules.Planner
 * No return behavior
 * Called when any structure is built (walls, ceilings, stairs, etc.)

### OnBuildingBlockUpgrade(BuildingBlock buildingBlock, BuildingGrade.Enum grade, BaseEntity.RPCMessage message)
 * Called from Assembly-CSharp/BuildingBlock
 * Returning a BuildingGrade.Enum grade will change the grade that will be upgraded to
 * Called when a player upgrades the grade of a BuildingBlock

### OnBuildingBlockRotate(BuildingBlock buildingBlock, BaseEntity.RPCMessage message)
 * Called from Assembly-CSharp/BuildingBlock
 * No return behavior
 * Called when a player rotates a BuildingBlock

### OnBuildingBlockDemolish(BuildingBlock buildingBlock, BaseEntity.RPCMessage message)
 * Called from Assembly-CSharp/BuildingBlock
 * Return true to cancel
 * Called when a player selects DemolishImmediate from the BuildingBlock menu
