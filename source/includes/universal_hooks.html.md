---
title: Universal Hooks
---

# Universal Hooks

**Available for all supported games**

[![7 Days to Die](7-days-to-die/favicon-32x32.png)](/7-days-to-die)
[![Blockstorm](blockstorm/favicon-32x32.png)](/blockstorm)
[![Hurtworld](hurtworld/favicon-32x32.png)](/hurtworld)
[![Reign of Kings](reign-of-kings/favicon-32x32.png)](/reign-of-kings)
[![Rust](rust/favicon-32x32.png)](/rust)
[![Rust Legacy](rust-legacy/favicon-32x32.png)](/rust-legacy)
[![The Forest](the-forest/favicon-32x32.png)](/the-forest)
[![Unturned](unturned/favicon-32x32.png)](/unturned)

## Init

``` csharp
void Init()
{
    Puts("Init works!");
}
```

 * Called when a plugin is being initialized
 * Other plugins may or may not be present, dependant on load order
 * No return behavior

## Loaded

``` csharp
void Loaded()
{
    Puts("Loaded works!");
}
```

 * Called when a plugin has finished loading
 * Other plugins may or may not be present, dependant on load order
 * No return behavior

## Unload

``` csharp
void Unload()
{
    Puts("Save files, destroy timers, etc");
}
```

 * Called when a plugin is being unloaded
 * No return behavior

## LoadDefaultConfig

``` csharp
protected override void LoadDefaultConfig()
{
    Puts("Default configuration created");
}
```

 * Called when the config for a plugin should be initialized
 * Only called if the config file does not already exist
 * No return behavior

## LoadDefaultMessages

``` csharp
private new void LoadDefaultMessages()
{
    lang.RegisterMessages(new Dictionary<string, string>
    {
        ["Example"] = "This is an example message!",
        ["AnotherExample"] = "Here is another example"
    }, this);
}
```

 * Called when the localization for a plugin should be registered
 * No return behavior

## OnFrame

``` csharp
void OnFrame()
{
    Puts("OnFrame works!");
}
```

 * Called each frame
 * No return behavior

## OnPluginLoaded

``` csharp
void OnPluginLoaded(Plugin name)
{
    Puts($"Plugin '{name}' has been loaded");
}
```

 * Called when a plugin has been loaded
 * No return behavior

## OnPluginUnloaded

``` csharp
void OnPluginUnloaded(Plugin name)
{
    Puts($"Plugin '{name}' has been unloaded");
}
```

 * Called when a plugin has been unloaded
 * No return behavior

## OnServerInitialized

``` csharp
void OnServerInitialized()
{
    Puts("OnServerInitialized works!");
}
```

 * Called after the server startup has been completed and is awaiting connections
 * No return behavior

## OnServerSave

``` csharp
void OnServerSave()
{
    Puts("OnServerSave works!");
}
```

 * Called before the server saves and shuts down
 * No return behavior

## OnGroupPermissionGranted

``` csharp
void OnGroupPermissionGranted(string name, string perm)
{
    Puts($"Group '{name}' granted permission: {perm}");
}
```

 * Called when a permission has been granted to a group
 * No return behavior

## OnGroupPermissionRevoked

``` csharp
void OnGroupPermissionRevoked(string name, string perm)
{
    Puts($"Group '{name}' revoked permission: {perm}");
}
```

 * Called when a permission has been revoked from a group
 * No return behavior

## OnUserPermissionGranted

``` csharp
void OnUserPermissionGranted(string id, string perm)
{
    Puts($"User '{id}' granted permission: {perm}");
}
```

 * Called when a permission has been granted to a player
 * No return behavior

## OnUserPermissionRevoked

``` csharp
void OnUserPermissionRevoked(string id, string perm)
{
    Puts($"User '{id}' revoked permission: {perm}");
}
```

 * Called when a permission has been revoked from a player
 * No return behavior

## OnUserGroupAdded

``` csharp
void OnUserGroupAdded(string id, string name)
{
    Puts($"User '{id}' added to group: {name}");
}
```

 * Called when a player has been added to a group
 * No return behavior

## OnUserGroupRemoved

``` csharp
void OnUserGroupRemoved(string id, string name)
{
    Puts($"User '{id}' removed from group: {name}");
}
```

 * Called when a player has been removed from a group
 * No return behavior

## OnUserKicked

``` csharp
void OnUserKicked(IPlayer player, string reason)
{
    Puts($"User {player.Name} ({player.Id}) was kicked");
}
```

 * Called when a player has been kicked from the server
 * No return behavior

## OnUserBanned

``` csharp
void OnUserBanned(string name, string id, string address, string reason)
{
    Puts($"User {name} ({id}) was banned: {reason}");
}
```

 * Called when a player has been banned from the server
 * No return behavior

## OnUserUnbanned

``` csharp
void OnUserUnbanned(string name, string id, string ip)
{
    Puts($"Player {name} ({id}) was unbanned");
}
```

 * Called when a player has been unbanned from the server
 * No return behavior
