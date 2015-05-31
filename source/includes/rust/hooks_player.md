# Player Hooks

## OnUserApprove

``` csharp
void OnUserApprove(Network.Connection connection)
{
    Puts("OnUserApprove works!");
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

 * Called from ConnectionAuth.OnNewConnection
 * Returning a non-null value overrides default behavior, plugin should call Reject if it does this
 * Used by RustCore and abstracted into CanClientLogin

## CanClientLogin

``` csharp
void CanClientLogin(Network.Connection connection)
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

 * Called from RustCore.OnUserApprove
 * Returning true will allow the connection, returning nothing will by default allow the connection, returning anything else will reject it with an error message
 * Returning a string will use the string as the error message

## OnPlayerConnected

``` csharp
void OnPlayerConnected(Network.Message packet)
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

 * Called from ServerMgr.ClientReady
 * No return behavior
 * Called before the player object is created, but after the player has been approved to join the game
 * Can get the connection from packet.connection

## OnPlayerDisconnected

``` csharp
void OnPlayerDisconnected(BasePlayer player)
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

 * Called from BasePlayer.OnDisconnected
 * No return behavior
 * Called after the player has disconnected from the server

## OnPlayerInit

``` csharp
void OnPlayerInit(BasePlayer player)
{
    Puts("OnPlayerInit works!");
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

 * Called from BasePlayer.PlayerInit
 * No return behavior
 * Called when the player is initialising (after they've connected, before they wake up)

## OnFindSpawnPoint()

``` csharp
void OnFindSpawnPoint()
{
    Puts("OnFindSpawnPoint works!");
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

 * Called from ServerMgr.BasePlayer/SpawnPoint
 * Return a BasePlayer.SpawnPoint object to use that spawnpoint
 * Useful for controlling player spawnpoints (like making all spawns occur in a set area)

## OnPlayerRespawned

``` csharp
void OnPlayerRespawned(BasePlayer player)
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

 * Called from BasePlayer.Respawn
 * No return behavior
 * Called when the player spawns (specifically when they click the "Respawn" button)
 * ONLY called after the player has transitioned from dead to not-dead, so not when they're waking up
 * This means it's possible for a player to connect and disconnect from a server without OnPlayerRespawned ever triggering for them

## OnPlayerChat

``` csharp
void OnPlayerChat(ConsoleSystem.Arg arg)
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

 * Called from chat.say
 * Returning a non-null value overrides default behavior of chat, not commands

## OnRunPlayerMetabolism

``` csharp
void OnRunPlayerMetabolism(PlayerMetabolism metabolism)
{
    Puts("OnRunPlayerMetabolism works!");
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

 * Called from PlayerMetabolism.RunMetabolism
 * Called before a metabolism update occurs for the specified player
 * Returning true cancels the update
 * Metabolism update consists of managing the player's temperature, health etc.
 * You can use this to turn off or change certain aspects of the metabolism, either by editing values before returning, or taking complete control of the method
 * Access the player object using metabolism:GetComponent("BasePlayer")

## OnPlayerAttack

``` csharp
void OnPlayerAttack(BasePlayer attacker, HitInfo hitInfo)
{
    Puts("OnPlayerAttack works!");
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

 * Called from BasePlayer.SharedProjectileAttack and BaseMelee.DoAttackShared
 * Returning true cancels the attack
 * Useful for modifying an attack before it goes out
 * hitInfo.HitEntity should be the entity that this attack would hit

## OnPlayerLoot

``` csharp
void OnPlayerLoot(PlayerLoot lootInventory, BaseEntity targetEntity)
{
    Puts("OnPlayerLoot works!");
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

 * Called from PlayerLoot.StartLootingEntity
 * No return behavior
 * Called when the player starts looting an entity

## OnPlayerLoot

``` csharp
void OnPlayerLoot(PlayerLoot lootInventory, BasePlayer targetPlayer)
{
    Puts("OnPlayerLoot works!");
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

 * Called from PlayerLoot.StartLootingPlayer
 * No return behavior
 * Called when the player starts looting another player

## OnPlayerLoot

``` csharp
void OnPlayerLoot(PlayerLoot lootInventory, Item targetItem)
{
    Puts("OnPlayerLoot works!");
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

 * Called from PlayerLoot.StartLootingItem
 * No return behavior
 * Called when the player starts looting an item

## OnPlayerInput

``` csharp
void OnPlayerInput(BasePlayer player, InputState input)
{
    Puts("OnPlayerInput works!");
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

 * Called from BasePlayer.OnReceiveTick
 * No return behavior
 * Called when input is received from a connected client

## OnPlayerSleepEnded

``` csharp
void OnPlayerSleepEnded(BasePlayer player)
{
    Puts("OnPlayerSleepEnded works!");
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

 * Called from BasePlayer.EndSleeping()
 * No return behavior
 * Called when a player awakes
