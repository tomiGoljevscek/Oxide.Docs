# Player Hooks

## OnUserApprove

``` csharp
void OnUserApprove(ClientConnection connection, uLink.NetworkPlayerApproval approval, ConnectionAcceptor acceptor)
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

 * Returning true overrides default behavior, plugin should call approval.Deny if it does this

## CanClientLogin

``` csharp
void CanClientLogin(ClientConnection connection, uLink.NetworkPlayerApproval approval)
{
    Puts("CanClientLogin works!");
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

 * Returning a uLink.NetworkConnectionError will reject the connection, returning anything else will allow the connection

## OnPlayerConnected

``` csharp
void OnPlayerConnected(NetUser netuser)
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

 * Called before the player object is created, but after the player has been approved
 * No return behavior

## OnPlayerDisconnected

``` csharp
void OnPlayerDisconnected(uLink.NetworkPlayer networkPlayer)
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

 * Called after the player has disconnected from the server
 * No return behavior

## OnPlayerSpawn

``` csharp
void OnPlayerSpawn(PlayerClient client, bool usecamp, RustProto.Avatar avatar)
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

 * Called when the player spawns
 * No return behavior

## OnPlayerChat

``` csharp
void OnPlayerChat(NetUser netuser, string message)
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

 * Called when a player sends chat to the server
 * Returning true overrides default behavior of chat, not commands

## OnPlayerVoice

``` csharp
void OnPlayerVoice(NetUser netuser, List<uLink.NetworkPlayer> players)
{
    Puts("OnPlayerVoice works!");
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

 * Called when a player uses in-game voice communication

## OnItemCraft

``` csharp
void OnItemCraft(CraftingInventory inventory, BlueprintDataBlock blueprint, int amount, ulong startTime)
{
    Puts("OnItemCraft works!");
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

 * Called when a player starts crafting an item
 * Returning true overrides default behavior

## OnBlueprintUse

``` csharp
void OnBlueprintUse(BlueprintDataBlock blueprint, IBlueprintItem item)
{
    Puts("OnBlueprintUse works!");
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

 * Called when a player tries to study a blueprint
 * Returning true overrides default behavior

## OnResearchItem

``` csharp
void OnResearchItem(ResearchToolItem<T> item, IInventoryItem otherItem)
{
    Puts("OnResearchItem works!");
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

 * Called when a player tries to research an item
 * Returning a InventoryItem.MergeResult will cancel default behavior
