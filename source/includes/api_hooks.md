# API Hooks

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

### OnServerInitialized()
 * Called from Assembly-CSharp/ServerMgr
 * No return behavior
 * Called after the server startup has been completed and is awaiting connections

### OnTick()
 * Called from Assembly-CSharp/ServerMgr.DoTick
 * No return behavior
 * Called every tick (defined by the tickrate of the server?)

### OnRunCommand(Facepunch/ConsoleSystem.Arg arg)
 * Called from Facepunch/ConsoleSystem.Run, Facepunch/ConsoleSystem.RunUnrestricted and Facepunch/ConsoleSystem.ClientRun
 * Return true to override Rust's command handling system
 * Useful for intercepting commands before they get to their intended target (like chat.say)
 * Used by RustCore to implement chat commands

## Player hooks

### OnUserApprove(Facepunch/Network.Connection connection)
 * Called from Assembly-CSharp/ConnectionAuth.OnNewConnection
 * Returning a non-null value overrides default behavior, plugin should call Reject if it does this
 * Used by RustCore and abstracted into CanClientLogin

### CanClientLogin(Facepunch/Network.Connection connection)
 * Called from RustCore.OnUserApprove
 * Returning true will allow the connection, returning nothing will by default allow the connection, returning anything else will reject it with an error message
 * Returning a string will use the string as the error message

### OnFindSpawnPoint()
 * Called from Assembly-CSharp/ServerMgr
 * Return a Assembly-CSharp/BasePlayer.SpawnPoint object to use that spawnpoint
 * Useful for controlling player spawnpoints (like making all spawns occur in a set area)

### OnPlayerConnected(Facepunch/Network.Message packet)
 * Called from Assembly-CSharp/ServerMgr
 * No return behavior
 * Called before the player object is created, but after the player has been approved to join the game
 * Can get the connection from packet.connection

### OnPlayerInit(Assembly-CSharp/BasePlayer player)
 * Called from Assembly-CSharp/BasePlayer
 * No return behavior
 * Called when the player is initialising (after they've connected, before they wake up)

### OnPlayerSpawn(Assembly-CSharp/BasePlayer player, Facepunch/Network.Connection connection)
 * Called when the player spawns (specifically when they click the "Respawn" button)
 * No return behavior
 * ONLY called when the player is transitioning from dead to not-dead, so not when they're waking up
 * This means it's possible for a player to connect and disconnect from a server without OnPlayerSpawn ever triggering for them

### OnPlayerChat(Assembly-CSharp/chat.say arg)
 * Called from Assembly-CSharp/chat.say
 * Returning a non-null value overrides default behavior of chat, not commands

### OnRunPlayerMetabolism(Assembly-CSharp/PlayerMetabolism metabolism)
 * Called before a metabolism update occurs for the specified player
 * Returning true cancels the update
 * Metabolism update consists of managing the player's temperature, health etc
 * You can use this to turn off or change certain aspects of the metabolism, either by editing values before returning, or taking complete control of the method
 * Access the player object using metabolism:GetComponent("BasePlayer")

### OnPlayerAttack(Assembly-CSharp/BasePlayer attacker, Assembly-CSharp/HitInfo hitinfo)
 * Called from Assembly-CSharp/BasePlayer
 * Returning true cancels the attack
 * Useful for modifying an attack before it goes out
 * hitinfo.HitEntity should be the entity that this attack would hit

### OnPlayerLoot(Assembly-CSharp/PlayerLoot lootinventory, Assembly-CSharp/BaseEntity targetentity)
 * Called from Assembly-CSharp/PlayerLoot
 * No return behavior
 * Called when the player starts looting an entity

### OnPlayerLoot(Assembly-CSharp/PlayerLoot lootinventory, Assembly-CSharp/BasePlayer targetplayer)
 * Called from Assembly-CSharp/PlayerLoot
 * No return behavior
 * Called when the player starts looting another player

### OnPlayerLoot(Assembly-CSharp/PlayerLoot lootinventory, Assembly-CSharp/Item targetitem)
 * Called from Assembly-CSharp/PlayerLoot
 * No return behavior
 * Called when the player starts looting an item

### OnPlayerDisconnected(Assembly-CSharp/BasePlayer player)
 * Called from Assembly-CSharp/ServerMgr
 * No return behavior
 * Called before the player object is created, but after the player has been approved to join the game

## Entity hooks

### OnEntitySpawn(UnityEngine/Monobehavior entity)
 * Called from Assembly-CSharp/BaseNetworkable
 * No return behavior
 * Called when any networked entity is spawned (including trees)

### OnEntityAttacked(UnityEngine/Monobehavior entity, Assembly-CSharp/HitInfo hitinfo)
 * Called from multiple places, each entity's attack handler basically
 * Returning non-null value overrides default server behavior (useful for godmode etc)
 * Alternatively, modify the hitinfo object to change the damage
 * It should be ok to set the damage to 0, but if you don't return non-null, the player's client will receive a damage indicator (if entity is a BasePlayer)
 * hitinfo has all kinds of useful things in it, such as hitinfo.Weapon, hitinfo.damageAmount or hitinfo.damageType
 * Currently implemented for: BasePlayer, BaseAnimal

### OnEntityDeath(UnityEngine/Monobehavior entity, Assembly-CSharp/HitInfo hitinfo)
 * Called from multiple places, each entity's death handler basically
 * No return behavior
 * hitinfo might be null, check it before use
 * Editing hitinfo probably has no effect
 * Currently implemented for: BasePlayer, BaseAnimal

### OnEntityEnter(Assembly-CSharp/TriggerBase triggerbase, Assembly-CSharp/BaseEntity entity)
 * Called from Assembly-CSharp/TriggerBase
 * No return behavior
 * Called when an entity enters an area/zone (building privilege zone, water area, radiation zone, hurt zone, etc)

### OnEntityLeave(Assembly-CSharp/TriggerBase triggerbase, Assembly-CSharp/BaseEntity entity)
 * Called from Assembly-CSharp/TriggerBase
 * No return behavior
 * Called when an entity leaves an area/zone (building privilege zone, water area, radiation zone, hurt zone, etc)

## Item hooks

### OnItemCraft(Assembly-CSharp/ItemCraftTask item)
 * Called from Assembly-CSharp/ItemCrafter
 * Return a Assembly-CSharp/ItemCraftTask object to modify behavior
 * Called right after an item has started crafting

### OnItemDeployed(Assembly-CSharp/Deployer deployer, Assembly-CSharp/BaseEntity deployedentity)
 * Assembly-CSharp/Deployer
 * No return behavior
 * Called right after an item has been deployed

### OnItemAddedToContainer(Assembly-CSharp/ItemContainer container, Assembly-CSharp/Item item)
 * Called from Assembly-CSharp/ItemContainer
 * No return behavior
 * Called right after an item was added to a container
 * An entire stack has to be created, not just adding more wood to a wood stack for example

### OnItemRemovedFromContainer(Assembly-CSharp/ItemContainer container, Assembly-CSharp/Item item)
 * Called from Assembly-CSharp/ItemContainer
 * No return behavior
 * Called right after an item was removed from a container
 * The entire stack has to be removed for this to be called, not just a little bit

### OnGather(Assembly-CSharp/ResourceDispenser dispenser, Assembly-CSharp/BaseEntity entity, Assembly-CSharp/Item item)
 * Assembly-CSharp/ResourceDispenser
 * No return behavior
 * Called before the player is given items from a resource

## Structure hooks

### CanOpenDoor(Assembly-CSharp/BasePlayer player, Assembly-CSharp/BaseLock door)
 * Called from Assembly-CSharp/BaseLock
 * Returning true will allow door usage, nothing will by default will allow door usage, returning anything else will reject door usage

### CanOpenDoor(Assembly-CSharp/BasePlayer player, Assembly-CSharp/CodeLock code)
 * Called from Assembly-CSharp/CodeLock
 * Returning true will allow door code usage, nothing will by default will allow door code usage, returning anything else will reject door code usage

### CanOpenDoor(Assembly-CSharp/BasePlayer player, Assembly-CSharp/KeyLock key)
 * Called from Assembly-CSharp/KeyLock
 * Returning true will allow door key usage, nothing will by default will allow door key usage, returning anything else will reject door key usage

### OnEntityBuilt(Assembly-CSharp/BasePlayer player, UnityEngine/GameObject gameobject)
 * Called from Assembly-CSharp/Item.Modules.Planner
 * No return behavior
 * Called when any structure is built (walls, ceilings, stairs, etc)
