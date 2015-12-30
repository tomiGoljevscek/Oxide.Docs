# Player Hooks

## OnUserApprove

``` csharp
void OnUserApprove(ConnectionLoginData data)
{
    Puts("OnUserApprove works!");
}
```

``` lua
We need a Lua example here
```

``` javascript
We need a JavaScript example here
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
We need a Python example here
```

 * Called from ??
 * Returning a non-null value overrides default behavior, plugin should call approval.Deny if it does this

## OnPlayerConnected

``` csharp
void OnPlayerConnected(Player player)
{
    Puts("OnPlayerConnected works!");
}
```

``` lua
We need a Lua example here
```

``` javascript
We need a JavaScript example here
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
We need a Python example here
```

 * Called from ??
 * No return behavior
 * Called before the player object is created, but after the player has been approved

## OnPlayerDisconnected

``` csharp
void OnPlayerDisconected(Player player)
{
    Puts("OnPlayerDisconnected works!");
}
```

``` lua
We need a Lua example here
```

``` javascript
We need a JavaScript example here
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
We need a Python example here
```

 * Called from ??
 * No return behavior
 * Called after the player has disconnected from the server

## OnPlayerSpawn

``` csharp
void OnPlayerSpawn(PlayerFirstSpawnEvent e)
{
    Puts("OnPlayerSpawn works!");
}
```

``` lua
We need a Lua example here
```

``` javascript
We need a JavaScript example here
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
We need a Python example here
```

 * Called from ??
 * No return behavior
 * Called when the player spawns

## OnPlayerChat

``` csharp
void OnPlayerChat(PlayerEvent e)
{
    Puts("OnPlayerChat works!");
}
```

``` lua
We need a Lua example here
```

``` javascript
We need a JavaScript example here
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
We need a Python example here
```

 * Called from ??
 * Called when a player sends chat to the server
 * Returning a non-null value overrides default behavior of chat, not commands
