---
title: Player Hooks
---

# Player Hooks

## OnExperienceGained

``` csharp
void OnExperienceGained(ClientInfo client, uint exp)
{
    Puts("OnExperienceGained works!");
}
```

 * Called when the player has gained experience
 * No return behavior

## OnPlayerConnected

``` csharp
void OnPlayerConnected(ClientInfo client)
{
    Puts("OnPlayerConnected works!");
}
```

 * Called when the player has connected to the server
 * No return behavior

## OnPlayerDisconnected

``` csharp
void OnPlayerDisconnected(ClientInfo client)
{
    Puts("OnPlayerDisconnected works!");
}
```

 * Called when the player has disconnected from the server
 * No return behavior

## OnPlayerChat

``` csharp
object OnPlayerChat(ClientInfo client, string message)
{
    Puts("OnPlayerChat works!");
    return null;
}
```

 * Called when the player sends chat to the server
 * Returning a non-null value overrides default behavior

## OnPlayerRespawned

``` csharp
void OnPlayerRespawned(ClientInfo client, string reason)
{
    Puts("OnPlayerRespawned works!");
}
```

 * Called when the player has respawned
 * No return behavior

## OnPlayerSpawn

``` csharp
object OnPlayerSpawn(ClientInfo client)
{
    Puts("OnPlayerSpawn works!");
}
```

 * Called when the player is spawning
 * Returning a non-null value overrides default behavior
