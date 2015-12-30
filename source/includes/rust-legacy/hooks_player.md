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

 * Called from ConnectionAcceptor.uLink_OnPlayerApproval
 * Returning a non-null value overrides default behavior, plugin should call approval.Deny if it does this
 * Used by RustLegacyCore and abstracted into CanClientLogin

## CanClientLogin

``` csharp
void CanClientLogin(ClientConnection connection, uLink.NetworkPlayerApproval approval)
{
    Puts("CanClientLogin works!");
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

 * Called from RustLegacyCore.OnUserApprove
 * Returning a uLink.NetworkConnectionError will reject the connection, returning anything else will allow the connection

## OnPlayerConnected

``` csharp
void OnPlayerConnected(NetUser netuser)
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

 * Called from ServerManagement.OnUserConnected
 * No return behavior
 * Called before the player object is created, but after the player has been approved

## OnPlayerDisconnected

``` csharp
void OnPlayerDisconected(uLink.NetworkPlayer networkPlayer)
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

 * Called from ConnectionAcceptor.uLink_OnPlayerDisconnected
 * No return behavior
 * Called after the player has disconnected from the server

## OnPlayerSpawn

``` csharp
void OnPlayerSpawn(PlayerClient client, bool usecamp, RustProto.Avatar avatar)
{
    Puts("OnPlayerSpawn works!");
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

 * Called from ServerManagement.SpawnPlayer
 * No return behavior
 * Called when the player spawns

## OnPlayerChat

``` csharp
void OnPlayerChat(NetUser netuser, string message)
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

 * Called from RustLegacyCore.OnRunCommand
 * Called when a player sends chat to the server
 * Returning a non-null value overrides default behavior of chat, not commands

## OnPlayerVoice

``` csharp
void OnPlayerVoice(NetUser netuser, List<uLink.NetworkPlayer> players)
{
    Puts("OnPlayerVoice works!");
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

 * Called from RustLegacyCore.OnClientSpeak
 * Called when a player uses in-game voice communication

## OnItemCraft

``` csharp
void OnItemCraft(CraftingInventory inventory, BlueprintDataBlock blueprint, int amount, ulong startTime)
{
    Puts("OnItemCraft works!");
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

 * Called from CraftingInventory.OnItemCraft
 * Returning non-null overrides default behavior
 * Called when a player starts crafting an item

## OnBlueprintUse

``` csharp
void OnBlueprintUse(BlueprintDataBlock blueprint, IBlueprintItem item)
{
    Puts("OnBlueprintUse works!");
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

 * Called from BlueprintDataBlock.UseItem
 * Returning non-null overrides default behavior
 * Called when a player tries to study a blueprint

## OnResearchItem

``` csharp
void OnResearchItem(ResearchToolItem<T> item, IInventoryItem otherItem)
{
    Puts("OnResearchItem works!");
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

 * Called from ResearchToolItem<T>.TryCombine
 * Returning a InventoryItem.MergeResult will cancel default behavior
 * Called when a player tries to research an item
