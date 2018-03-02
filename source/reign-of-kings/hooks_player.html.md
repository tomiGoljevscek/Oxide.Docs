# Player Hooks

## OnUserApprove

``` csharp
void OnUserApprove(ConnectionLoginData data)
{
    Puts("OnUserApprove works!");
}
```

 * Returning true overrides default behavior, plugin should call approval.Deny if it does this

## OnPlayerCapture

``` csharp
void OnPlayerCapture(PlayerCaptureEvent e)
{
    Puts("OnPlayerCapture works!");
}
```

 * Called once the loading bar of roping a player is completed.

## OnPlayerChat

``` csharp
void OnPlayerChat(PlayerEvent e)
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

 * No return behavior
 * Called before the player object is created, but after the player has been approved

## OnPlayerDisconnected

``` csharp
void OnPlayerDisconnected(Player player)
{
    Puts("OnPlayerDisconnected works!");
}
```

 * No return behavior
 * Called after the player has disconnected from the server

## OnPlayerEscape

``` csharp
void OnPlayerEscape(PlayerEscapeEvent e)
{
    Puts("OnPlayerEscape works!");
}
```

## OnPlayerInteract

``` csharp
void OnPlayerInteract(InteractEvent e)
{
    Puts("OnPlayerInteract works!");
}
```

 * Called when a player interacts with an object, like a crafting station, loot, chests, or anything with an inventory.

## OnPlayerRelease

``` csharp
void OnPlayerRelease(PlayerEscapeEvent e)
{
    Puts("OnPlayerRelease works!");
}
```

 * Called when a roped player gets freed from the rope.
 * Called when a roped player escapes.

## OnPlayerRespawn

``` csharp
void OnPlayerRespawn(PlayerRespawnEvent e)
{
    Puts("OnPlayerRespawn works!");
}
```

 * No return behavior
 * Called when the player respawns

 ## OnPlayerSleep

``` csharp
void OnPlayerSleep(PlayerSleepEvent e)
{
    Puts("OnPlayerSleep works!");
}
```

 * Called when a player sleeps (logout).

## OnPlayerSpawn

``` csharp
void OnPlayerSpawn(PlayerFirstSpawnEvent e)
{
    Puts("OnPlayerSpawn works!");
}
```

 * No return behavior
 * Called when the player spawns

## OnPlayerUnlock

``` csharp
void OnPlayerUnlock(ObjectUnlockEvent e)
{
    Puts("OnPlayerUnlock works!");
}
```

 * Called when a player unlocks a door or cage with a lockpick.
