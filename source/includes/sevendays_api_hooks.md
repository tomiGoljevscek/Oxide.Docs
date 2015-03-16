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
 * Called from Assembly-CSharp/??
 * No return behavior
 * Used internally by Oxide to start Unity logging

### OnServerInitialized()
 * Called from Assembly-CSharp/??
 * No return behavior
 * Called after the server startup has been completed and is awaiting connections

### OnServerSave()
 * Called from Assembly-CSharp/??
 * No return behavior
 * Is called before the server saves world and player data

### OnServerQuit()
 * Called from Assembly-CSharp/??
 * No return behavior
 * Is called before the server starts the shutdown sequence
 * This should generally not be used by plugins, instead use the Unload hook

### OnRunCommand(ConsoleCommand command, String arg, String[] args)
 * Called from Assembly-CSharp/??
 * Help! This is missing a description!

## Player hooks

### OnPlayerConnected(ClientInfo client)
 * Called from Assembly-CSharp/??
 * Help! This is missing a description!

### OnPlayerDisconnected(ClientInfo client)
 * Called from Assembly-CSharp/??
 * Help! This is missing a description!

### OnPlayerChat(string message, int team, string playerName)
 * Called from Assembly-CSharp/??
 * Help! This is missing a description!

## Entity hooks

### OnEntitySpawned(Entity entity)
 * Called from Assembly-CSharp/??
 * Help! This is missing a description!

### OnEntityHurt(cl0006 entity, DamageSource source)
 * Called from Assembly-CSharp/??
 * Help! This is missing a description!

### OnEntityDeath(cl0006 entity)
 * Called from Assembly-CSharp/??
 * Help! This is missing a description!

## Item hooks

None yet!

## Structure hooks

None yet!
