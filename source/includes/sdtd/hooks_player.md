# Player Hooks

## OnPlayerConnected

``` csharp
void OnPlayerConnected(EntityPlayer player)
{
    Puts("OnPlayerConnected works!");
}
```

``` javascript
We need a JavaScript example here
```

``` lua
We need a Lua example here
```

``` python
We need a Python example here
```

 * Called from GameManager.RequestToSpawnPlayer
 * Help! This is missing a description!

## OnPlayerDisconnected

``` csharp
void OnPlayerDisconnected(EntityPlayer player)
{
    Puts("OnPlayerDisconnected works!");
}
```

``` javascript
We need a JavaScript example here
```

``` lua
We need a Lua example here
```

``` python
We need a Python example here
```

 * Called from GameManager.PlayerDisconnected
 * Help! This is missing a description!

## OnPlayerChat

``` csharp
void OnPlayerChat(string message, string playerName)
{
    Puts("OnPlayerChat works!");
}
```

``` javascript
We need a JavaScript example here
```

``` lua
We need a Lua example here
```

``` python
We need a Python example here
```

 * Called from GameManager.GameMessageServer
 * Help! This is missing a description!

## OnPlayerRespawned

``` csharp
void OnPlayerRespawned(EntityPlayer player, string reason)
{
    Puts("OnPlayerRespawned works!");
}
```

``` javascript
We need a JavaScript example here
```

``` lua
We need a Lua example here
```

``` python
We need a Python example here
```

 * Called from EntityPlayer.Respawn
 * Help! This is missing a description!

## OnExperienceGained

``` csharp
void OnExperienceGained(EntityPlayer player, uint exp)
{
    Puts("OnExperienceGained works!");
}
```

``` javascript
We need a JavaScript example here
```

``` lua
We need a Lua example here
```

``` python
We need a Python example here
```

 * Called from EntityPlayer.AddExp
 * Help! This is missing a description!
