# Universal Hooks

**Available for all supported games**

[![7 Days to Die](7-days-to-die/favicon-32x32.png)](/7-days-to-die/)
[![Blockstorm](blockstorm/favicon-32x32.png)](/blockstorm/)
[![Hurtworld](hurtworld/favicon-32x32.png)](/hurtworld/)
[![Reign of Kings](reign-of-kings/favicon-32x32.png)](/reign-of-kings/)
[![Rust](rust/favicon-32x32.png)](/rust/)
[![Rust Legacy](rust-legacy/favicon-32x32.png)](/rust-legacy/)
[![The Forest](the-forest/favicon-32x32.png)](/the-forest/)
[![Unturned](unturned/favicon-32x32.png)](/unturned/)

## Init

``` csharp
void Init()
{
    Puts("Init works!");
}
```

 * Called when a plugin is being initialized
 * Other plugins may or may not be present, dependant on load order

## Loaded

``` csharp
void Loaded()
{
    Puts("Loaded works!");
}
```

 * Called when a plugin has finished loading
 * Other plugins may or may not be present, dependant on load order

## Unload

``` csharp
void Unload()
{
    Puts("Save files, destroy timers, etc");
}
```

 * Called when a plugin is being unloaded

## LoadDefaultConfig

``` csharp
protected override void LoadDefaultConfig()
{
    Puts("Default configuration created");
}
```

 * Called when the config for a plugin should be initialized
 * Only called if the config file does not already exist

## OnFrame

``` csharp
void OnFrame()
{
    Puts("OnFrame works!");
}
```

 * Placeholder

## OnPluginLoaded

``` csharp
void OnPluginLoaded(Plugin name)
{
    Puts($"Plugin '{name}' has been loaded");
}
```

 * Called when a plugin has been loaded

## OnPluginUnloaded

``` csharp
void OnPluginUnloaded(Plugin name)
{
    Puts($"Plugin '{name}' has been unloaded");
}
```

 * Called when a plugin has been unloaded

## OnServerInitialized

``` csharp
void OnServerInitialized()
{
    Puts("OnServerInitialized works!");
}
```

 * No return behavior
 * Called after the server startup has been completed and is awaiting connections

## OnServerSave

``` csharp
void OnServerSave
{
    Puts("OnServerSave works!");
}
```

 * No return behavior
 * Called before the server saves and shuts down

## OnUserPermissionGranted

``` csharp
void OnUserPermissionGranted(string id, string perm)
{
    Puts($"User '{id}' granted permission: {perm}");
}
```

 * Called when a permission has been granted to a user

## OnUserPermissionRevoked

``` csharp
void OnUserPermissionRevoked(string id, string perm)
{
    Puts($"User '{id}' revoked permission: {perm}");
}
```

 * Called when a permission has been revoked from a user

## OnUserGroupAdded

``` csharp
void OnUserGroupAdded(string id, string name)
{
    Puts($"User '{id}' added to group: {name}");
}
```

 * Called when a user has been added to a group
 

## OnUserGroupRemoved

``` csharp
void OnUserGroupRemoved(string id, string name)
{
    Puts($"User '{id}' removed from group: {name}");
}
```

 * Called when a user has been removed from a group

## OnGroupPermissionGranted

``` csharp
void OnGroupPermissionGranted(string name, string perm)
{
    Puts($"Group '{name}' granted permission: {perm}");
}
```

 * Called when a permission has been granted to a group

## OnGroupPermissionRevoked

``` csharp
void OnGroupPermissionRevoked(string name, string perm)
{
    Puts($"Group '{name}' revoked permission: {perm}");
}
```

 * Called when a permission has been revoked from a group
