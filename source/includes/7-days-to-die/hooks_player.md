# Player Hooks

## OnPlayerConnected

``` csharp
void OnPlayerConnected(ClientInfo info)
{
    Puts("OnPlayerConnected works!");
}
```

 * Called when the player has connected to the server
 * No return behavior

## OnPlayerDisconnected

``` csharp
void OnPlayerDisconnected(ClientInfo info)
{
    Puts("OnPlayerDisconnected works!");
}
```

 * Called when the player has disconnected from the server
 * No return behavior

## OnPlayerChat

``` csharp
void OnPlayerChat(string message, string name)
{
    Puts("OnPlayerChat works!");
}
```

 * Called when the player sends chat to the server
 * No return behavior

## OnPlayerRespawned

``` csharp
void OnPlayerRespawned(ClientInfo info, string reason)
{
    Puts("OnPlayerRespawned works!");
}
```

 * Called when the player has respawned
 * No return behavior

## OnExperienceGained

``` csharp
void OnExperienceGained(ClientInfo info, uint exp)
{
    Puts("OnExperienceGained works!");
}
```

 * Called when the player has gained experience
 * No return behavior
