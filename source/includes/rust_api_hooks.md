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
 * Called from Bootstrap.StartupShared
 * No return behavior
 * Used internally by Oxide to start Unity logging

### ModifyTags(string oldtags)
 * Called from ServerMgr.UpdateServerInformation
 * Returning a string overrides the tags with new ones
 * Used by RustCore and abstracted into BuildServerTags

### BuildServerTags(IList<string> tags)
 * Called from RustCore.ModifyTags
 * No return behavior
 * Add tags to the list, they will be concat'd at the end

### OnTerrainInitialized()
 * Called from InitializePVT.Apply
 * No return behavior
 * Called after the terrain generation process has completed

### OnServerInitialized()
 * Called from ServerMgr.Initialize
 * No return behavior
 * Called after the server startup has been completed and is awaiting connections

### OnServerSave()
 * Called from SaveRestore.DoAutomatedSave
 * No return behavior
 * Called before the server saves and rotates the .sav files

### OnServerShutdown()
 * Called from ConsoleGlobal
 * No return behavior
 * Called before the server starts the shutdown sequence
 * This should generally not be used by plugins, instead use the Unload hook
 * This is the direct replacement to OnServerQuit, which has since been removed

### OnTick()
 * Called from ServerMgr.DoTick
 * No return behavior
 * Called every tick (defined by the tickrate of the server?)

### OnRunCommand(ConsoleSystem.Arg arg)
 * Called from ConsoleSystem.Run_Internal, ConsoleSystem.Run_Unrestricted, and ConsoleSystem.SystemRealm_Normal
 * Return true to override Rust's command handling system
 * Useful for intercepting commands before they get to their intended target (like chat.say)
 * Used by RustCore to implement chat commands

## Player hooks

### OnUserApprove(Network.Connection connection)
 * Called from ConnectionAuth.OnNewConnection
 * Returning a non-null value overrides default behavior, plugin should call Reject if it does this
 * Used by RustCore and abstracted into CanClientLogin

### CanClientLogin(Network.Connection connection)
 * Called from RustCore.OnUserApprove
 * Returning true will allow the connection, returning nothing will by default allow the connection, returning anything else will reject it with an error message
 * Returning a string will use the string as the error message

### OnPlayerConnected(Network.Message packet)
 * Called from ServerMgr.ClientReady
 * No return behavior
 * Called before the player object is created, but after the player has been approved to join the game
 * Can get the connection from packet.connection

### OnPlayerDisconnected(BasePlayer player)
 * Called from BasePlayer.OnDisconnected
 * No return behavior
 * Called before the player object is created, but after the player has been approved to join the game

### OnPlayerInit(BasePlayer player)
 * Called from BasePlayer.PlayerInit
 * No return behavior
 * Called when the player is initialising (after they've connected, before they wake up)

### OnFindSpawnPoint()
 * Called from ServerMgr.BasePlayer/SpawnPoint
 * Return a BasePlayer.SpawnPoint object to use that spawnpoint
 * Useful for controlling player spawnpoints (like making all spawns occur in a set area)

### OnPlayerRespawned(BasePlayer player)
 * Called from BasePlayer.Respawn
 * Called when the player spawns (specifically when they click the "Respawn" button)
 * No return behavior
 * ONLY called after the player has transitioned from dead to not-dead, so not when they're waking up
 * This means it's possible for a player to connect and disconnect from a server without OnPlayerRespawned ever triggering for them

### OnPlayerChat(ConsoleSystem.Arg arg)
 * Called from chat.say
 * Returning a non-null value overrides default behavior of chat, not commands

### OnRunPlayerMetabolism(PlayerMetabolism metabolism)
 * Called from PlayerMetabolism.RunMetabolism
 * Called before a metabolism update occurs for the specified player
 * Returning true cancels the update
 * Metabolism update consists of managing the player's temperature, health etc.
 * You can use this to turn off or change certain aspects of the metabolism, either by editing values before returning, or taking complete control of the method
 * Access the player object using metabolism:GetComponent("BasePlayer")

### OnPlayerAttack(BasePlayer attacker, HitInfo hitInfo)
 * Called from BasePlayer.SharedProjectileAttack and BaseMelee.DoAttackShared
 * Returning true cancels the attack
 * Useful for modifying an attack before it goes out
 * hitInfo.HitEntity should be the entity that this attack would hit

### OnPlayerLoot(PlayerLoot lootInventory, BaseEntity targetEntity)
 * Called from PlayerLoot.StartLootingEntity
 * No return behavior
 * Called when the player starts looting an entity

### OnPlayerLoot(PlayerLoot lootInventory, BasePlayer targetPlayer)
 * Called from PlayerLoot.StartLootingPlayer
 * No return behavior
 * Called when the player starts looting another player

### OnPlayerLoot(PlayerLoot lootInventory, Item targetItem)
 * Called from PlayerLoot.StartLootingItem
 * No return behavior
 * Called when the player starts looting an item

### OnPlayerInput(BasePlayer player, InputState input)
 * Called from BasePlayer.OnReceiveTick
 * No return behavior
 * Called when input is received from a connected client

## Entity hooks

### OnEntitySpawned(BaseNetworkable entity)
 * Called from BaseNetworkable.Spawn
 * No return behavior
 * Called after any networked entity has spawned (including trees)

### OnEntityAttacked(BaseCombatEntity entity, HitInfo hitInfo)
 * Called from BaseCombatEntity.Hurt
 * Returning non-null value overrides default server behavior (useful for godmode etc.)
 * Alternatively, modify the hitInfo object to change the damage
 * It should be okay to set the damage to 0, but if you don't return non-null, the player's client will receive a damage indicator (if entity is a BasePlayer)
 * hitInfo has all kinds of useful things in it, such as hitInfo.Weapon, hitInfo.damageAmount or hitInfo.damageType

### OnEntityDeath(BaseCombatEntity entity, HitInfo hitInfo)
 * Called from BaseCombatEntity.Die
 * No return behavior
 * hitInfo might be null, check it before use
 * Editing hitInfo has no effect because the death has already happened

### OnEntityEnter(TriggerBase triggerBase, BaseEntity entity)
 * Called from TriggerBase.OnEntityEnter
 * No return behavior
 * Called when an entity enters an area/zone (building privilege zone, water area, radiation zone, hurt zone, etc.)

### OnEntityLeave(TriggerBase triggerBase, BaseEntity entity)
 * Called from TriggerBase.OnEntityLeave
 * No return behavior
 * Called when an entity leaves an area/zone (building privilege zone, water area, radiation zone, hurt zone, etc.)

## Item hooks

### OnItemCraft(ItemCraftTask item)
 * Called from ItemCrafter.CraftItem
 * Return a ItemCraftTask object to modify behavior
 * Called right after an item has started crafting

### OnItemDeployed(Deployer deployer, BaseEntity deployedEntity)
 * Called from Deployer.DoDeploy_Regular and Deployer.DoDeploy_Slot
 * No return behavior
 * Called right after an item has been deployed

### OnItemAddedToContainer(ItemContainer container, Item item)
 * Called from ItemContainer.Insert
 * No return behavior
 * Called right after an item was added to a container
 * An entire stack has to be created, not just adding more wood to a wood stack for example

### OnItemRemovedFromContainer(ItemContainer container, Item item)
 * Called from ItemContainer.Remove
 * No return behavior
 * Called right after an item was removed from a container
 * The entire stack has to be removed for this to be called, not just a little bit

### OnConsumableUse(Item item)
 * Called from Item.UseOneItem
 * No return behavior
 * Called right after a consumable item is used

### OnConsumeFuel(BaseOven oven, Item fuel, ItemModBurnable burnable)
 * Called from BaseOven.ConsumeFuel
 * No return behavior
 * Called right before fuel is used (furnace, lanterns, camp fires, etc.)

### OnGather(ResourceDispenser dispenser, BaseEntity entity, Item item)
 * Called from ResourceDispenser.GiveResourceFromItem
 * No return behavior
 * Called before the player is given items from a resource

## Signs Hooks

### CanUpdateSign(Signage sign, BasePlayer player)
 * Called from Signage.CanUpdateSign
 * Return true or false to override Rust's check
 * Called before the player changes the text on a sign or locks it
 
### OnSignLocked(Signage sign, BasePlayer player)
 * Called from Signage.LockSign
 * No return behavior
 * Called after the player has locked a sign
 
### OnSignUpdated(Signage sign, BasePlayer player, string text)
 * Called from Signage.UpdateSign
 * No return behavior
 * Called after the player has changed the text on a sign
 
## Structure hooks

### CanOpenDoor(BasePlayer player, BaseLock lock)
 * Called from BaseLock.OnTryToOpen and BaseLock.OnTryToClose
 * Returning true will allow door usage, nothing will by default will allow door usage, returning anything else will reject door usage

### CanOpenDoor(BasePlayer player, CodeLock lock)
 * Called from CodeLock.OnTryToOpen and CodeLock.OnTryToClose
 * Returning true will allow door usage, nothing will by default will allow door usage, returning anything else will reject door usage

### CanOpenDoor(BasePlayer player, KeyLock lock)
 * Called from KeyLock.OnTryToOpen and KeyLock.OnTryToClose
 * Returning true will allow door usage, nothing will by default will allow door usage, returning anything else will reject door usage

### OnEntityBuilt(Planner planner, UnityEngine/GameObject gameObject)
 * Called from Item.Modules.Planner
 * No return behavior
 * Called when any structure is built (walls, ceilings, stairs, etc.)

### OnBuildingBlockUpgrade(BuildingBlock block, BasePlayer player, BuildingGrade.Enum grade)
 * Called from BuildingBlock.DoUpgradeToGrade
 * Returning a BuildingGrade.Enum grade will change the grade that will be upgraded to
 * Called when a player upgrades the grade of a BuildingBlock

### OnBuildingBlockRotate(BuildingBlock block, BasePlayer player)
 * Called from BuildingBlock.DoRotation
 * No return behavior
 * Called when a player rotates a BuildingBlock

### OnBuildingBlockDemolish(BuildingBlock block, BasePlayer player)
 * Called from BuildingBlock.DoImmediateDemolish
 * Return true to cancel
 * Called when a player selects DemolishImmediate from the BuildingBlock menu
