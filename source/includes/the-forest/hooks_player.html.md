---
title: Player Hooks
---

# Player Hooks

## CanClientLogin

``` csharp
bool CanClientLogin(BoltConnection connection)
{
    Puts("CanClientLogin works!");
    return true;
}
```

 * Called when the player is attempting to login
 * Returning a string will use the string as the error message
 * Returning true allows the connection, returning nothing will by default allow the connection, returning anything else will reject it with an error message

## OnPlayerChat

``` csharp
void OnPlayerChat(BoltEntity entity, string message)
{
    Puts("OnPlayerChat works!");
}
```

 * Called when the player sends chat to the server
 * Returning a non-null value overrides default behavior of chat, not commands

## OnPlayerConnected

``` csharp
void OnPlayerConnected(BoltEntity entity)
{
    Puts("OnPlayerConnected works!");
}
```

 * Called after the player has connected to the server
 * No return behavior

## OnPlayerDisconnected

``` csharp
void OnPlayerDisconnected(BoltEntity entity)
{
    Puts("OnPlayerDisconnected works!");
}
```

 * Called after the player has disconnected from the server
 * No return behavior

## OnPlayerSpawn

``` csharp
void OnPlayerSpawn(BoltEntity entity)
{
    Puts("OnPlayerSpawn works!");
}
```

 * Called when the player spawns for the first time on the server
 * No return behavior

## OnUserApprove

``` csharp
object OnUserApprove(BoltConnection connection)
{
    Puts("OnUserApprove works!");
    return null;
}
```

 * Called when the player has been approved to connect to the server
 * Returning a non-null value overrides default behavior
