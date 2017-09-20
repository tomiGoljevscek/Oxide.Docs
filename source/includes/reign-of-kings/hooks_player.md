# Player Hooks

## OnUserApprove

``` csharp
void OnUserApprove(ConnectionLoginData data)
{
    Puts("OnUserApprove works!");
}
```

 * Returning true overrides default behavior, plugin should call approval.Deny if it does this

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

## OnPlayerSpawn

``` csharp
void OnPlayerSpawn(PlayerFirstSpawnEvent e)
{
    Puts("OnPlayerSpawn works!");
}
```

 * No return behavior
 * Called when the player spawns

## OnPlayerRespawn

``` csharp
void OnPlayerRespawn(PlayerRespawnEvent e)
{
    Puts("OnPlayerRespawn works!");
}
```

 * No return behavior
 * Called when the player respawns

## OnPlayerChat

``` csharp
void OnPlayerChat(PlayerEvent e)
{
    Puts("OnPlayerChat works!");
}
```

 * Called when the player sends chat to the server
 * Returning true overrides default behavior of chat, not commands

## OnPlayerCapture

``` csharp
void OnPlayerCapture(PlayerCaptureEvent e)
{
    Puts("OnPlayerCapture works!");
}
```

 * Called once the loading bar of roping a player is completed.

## OnPlayerRelease

``` csharp
void OnPlayerRelease(PlayerEscapeEvent e)
{
    Puts("OnPlayerRelease works!");
}
```

 * Called when a roped player gets freed from the rope.
