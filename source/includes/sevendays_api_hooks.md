# 7 Days to Die API Hooks

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
 * No return behavior
 * Used internally by Oxide to start Unity logging

### OnServerInitialized()
 * Called from ConnectionManager.OnServerInitialized
 * No return behavior
 * Called after the server startup has been completed and is awaiting connections

### OnServerSave()
 * Called from GameManager.SavePlayerData and GameManager.SaveWorld
 * No return behavior
 * Is called before the server saves world and player data

### OnServerQuit()
 * Called from GameManager.OnApplicationQuit
 * No return behavior
 * Is called before the server starts the shutdown sequence
 * This should generally not be used by plugins, instead use the Unload hook

### OnRunCommand(ConsoleSdtd console, ConsoleCommand command, String[] args)
 * Called from ConsoleSdtd.ExecuteRemoteCmdInternal
 * Help! This is missing a description!

## Player hooks

### OnPlayerConnected(ClientInfo client)
 * Called from GameManager.md0013
 * Help! This is missing a description!

### OnPlayerDisconnected(ClientInfo client)
 * Called from ConnectionManager.RemovePlayer
 * Help! This is missing a description!

### OnPlayerChat(string message, int team, string playerName)
 * Called from GameManager.SendChatMessage
 * Help! This is missing a description!

## Entity hooks

### OnEntitySpawned(Entity entity)
 * Called from World.SpawnEntityInWorld
 * Help! This is missing a description!

### OnEntityHurt(cl0006 entity, DamageSource source)
 * Called from cl0006.DamageEntity
 * Help! This is missing a description!

### OnEntityDeath(cl0006 entity)
 * Called from cl0006.OnEntityDeath and EntityCar.OnEntityDeath
 * Help! This is missing a description!

## Item hooks

None yet!

## Structure hooks

None yet!
