# Player Hooks

## OnChatCommand

``` csharp
object OnChatCommand(Player player, string command, string[] args)
{
    Puts("OnChatCommand works!");
    return null;
}
```

 * Called when a player runs a chat command
 * Returning a non-null value overrides default behavior

## OnUserApprove

``` csharp
object OnUserApprove(ConnectionLoginData data)
{
    Puts("OnUserApprove works!");
    return null;
}
```

 * Returning true overrides default behavior, plugin should call approval.Deny if it does this

## OnPlayerCapture

``` csharp
void OnPlayerCapture(PlayerCaptureEvent evt)
{
    Puts("OnPlayerCapture works!");
}
```

 * Called once the loading bar of roping a player is completed.

## OnPlayerChat

``` csharp
object OnPlayerChat(PlayerEvent evt)
{
    Puts("OnPlayerChat works!");
}
```

 * Called when the player sends chat to the server
 * Returning true overrides default behavior of chat, not commands

## OnPlayerConnected

``` csharp
void OnPlayerConnected(Player player)
{
    Puts("OnPlayerConnected works!");
}
```

 * Called before the player object is created, but after the player has been approved
 * No return behavior

## OnPlayerDisconnected

``` csharp
void OnPlayerDisconnected(Player player)
{
    Puts("OnPlayerDisconnected works!");
}
```

 * Called after the player has disconnected from the server
 * No return behavior

## OnPlayerEscape

``` csharp
void OnPlayerEscape(PlayerEscapeEvent evt)
{
    Puts("OnPlayerEscape works!");
}
```

## OnPlayerInteract

``` csharp
void OnPlayerInteract(InteractEvent evt)
{
    Puts("OnPlayerInteract works!");
}
```

 * Called when a player interacts with an object, like a crafting station, loot, chests, or anything with an inventory

## OnPlayerRelease

``` csharp
void OnPlayerRelease(PlayerEscapeEvent evt)
{
    Puts("OnPlayerRelease works!");
}
```

 * Called when a roped player gets freed from the rope

## OnPlayerRespawn

``` csharp
void OnPlayerRespawn(PlayerRespawnEvent evt)
{
    Puts("OnPlayerRespawn works!");
}
```

 * Called when the player respawns
 * No return behavior

 ## OnPlayerSleep

``` csharp
void OnPlayerSleep(PlayerSleepEvent evt)
{
    Puts("OnPlayerSleep works!");
}
```

 * Called when a player sleeps (logout)

## OnPlayerSpawn

``` csharp
void OnPlayerSpawn(PlayerFirstSpawnEvent evt)
{
    Puts("OnPlayerSpawn works!");
}
```

 * Called when the player spawns
 * No return behavior

## OnPlayerUnlock

``` csharp
void OnPlayerUnlock(ObjectUnlockEvent evt)
{
    Puts("OnPlayerUnlock works!");
}
```

 * Called when the player unlocks a door or cage with a lockpick
