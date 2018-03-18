# Player Hooks

## CanClientLogin

``` csharp
void CanClientLogin(PlayerSession session)
{
    Puts("CanClientLogin works!");
}
```

 * Called when the player is attempting to connect to the server
 * Returning a string will use the string as the error message
 * Returning false will reject the connection with a default error message

## CanCraft

``` csharp
void CanCraft(PlayerSession session, CrafterServer crafter)
{
    Puts("CanCraft works!");
}
```

 * Called when the player attempts to craft an item
 * Returning true or false overrides default behavior

## CanUseMachine

``` csharp
void CanUseMachine(PlayerSession session, object machine)
{
    Puts("CanUseMachine works!");
}
```

 * Called when the player attempts to use a machine
 * Returning true or false overrides default behavior

## OnFindSpawnPoint

``` csharp
void OnFindSpawnPoint(PlayerSession session)
{
    Puts("OnFindSpawnPoint works!");
}
```

 * Called when a spawnpoint is looked up for the player
 * No return behavior


## OnPlayerChat

``` csharp
void OnPlayerChat(PlayerSession session, string message)
{
    Puts("OnPlayerChat works!");
}
```

 * Called when the player sends chat to the server
 * Returning a non-null value overrides default behavior

## OnPlayerConnected

``` csharp
void OnPlayerConnected(PlayerSession session)
{
    Puts("OnPlayerConnected works!");
}
```

 * Called when the player has connected to the server
 * No return behavior

## OnPlayerDeath

``` csharp
void OnPlayerDeath(PlayerSession session, EntityEffectSourceData source)
{
    Puts("OnPlayerDeath works!");
}
```

 * Called when the player dies
 * No return behavior

## OnPlayerDisconnected

``` csharp
void OnPlayerDisconnected(PlayerSession session)
{
    Puts("OnPlayerDisconnected works!");
}
```

 * Called when the player has disconnected from the server
 * No return behavior

## OnPlayerInput

``` csharp
void OnPlayerInput(PlayerSession session, InputControls input)
{
    Puts("OnPlayerInput works!");
}
```

 * Called when input is received the player
 * No return behavior

## OnPlayerRespawn

``` csharp
void OnPlayerRespawn(PlayerSession session, Vector3 spawnLocation)
{
    Puts("OnPlayerRespawn works!");
}
```

 * Called when the player is attempting to respawn
 * No return behavior

## OnPlayerSpawn

``` csharp
void OnPlayerSpawn(PlayerSession session)
{
    Puts("OnPlayerSpawn works!");
}
```

 * Called when the player is attempting to spawn
 * No return behavior

## OnPlayerSuicide

``` csharp
void OnPlayerSuicide(PlayerSession session)
{
    Puts("OnPlayerSuicide works!");
}
```

 * Called when the player suicides
 * No return behavior

## OnPlayerTakeDamage

``` csharp
void OnPlayerTakeDamage(PlayerSession session, EntityEffectSourceData source)
{
    Puts("OnPlayerTakeDamage works!");
}
```

 * Called when the player is about to take damage
 * No return behavior

## OnPlayerVoice

``` csharp
void OnPlayerVoice(PlayerSession session)
{
    Puts("OnPlayerVoice works!");
}
```

 * Called when the player is using ingame voice communication
 * Returning a non-null value overrides default behavior

## OnUserApprove

``` csharp
void OnUserApprove(Network.Connection connection)
{
    Puts("OnUserApprove works!");
}
```

 * Used by HurtworldCore and abstracted into CanClientLogin
 * Returning a non-null value overrides default behavior
