# Player Hooks

## OnUserApprove(Network.Connection connection)
 * Called from ConnectionAuth.OnNewConnection
 * Returning a non-null value overrides default behavior, plugin should call Reject if it does this
 * Used by RustCore and abstracted into CanClientLogin

## CanClientLogin(Network.Connection connection)
 * Called from RustCore.OnUserApprove
 * Returning true will allow the connection, returning nothing will by default allow the connection, returning anything else will reject it with an error message
 * Returning a string will use the string as the error message

## OnPlayerConnected(Network.Message packet)
 * Called from ServerMgr.ClientReady
 * No return behavior
 * Called before the player object is created, but after the player has been approved to join the game
 * Can get the connection from packet.connection

## OnPlayerDisconnected(BasePlayer player)
 * Called from BasePlayer.OnDisconnected
 * No return behavior
 * Called after the player has disconnected from the server

## OnPlayerInit(BasePlayer player)
 * Called from BasePlayer.PlayerInit
 * No return behavior
 * Called when the player is initialising (after they've connected, before they wake up)

## OnFindSpawnPoint()
 * Called from ServerMgr.BasePlayer/SpawnPoint
 * Return a BasePlayer.SpawnPoint object to use that spawnpoint
 * Useful for controlling player spawnpoints (like making all spawns occur in a set area)

## OnPlayerRespawned(BasePlayer player)
 * Called from BasePlayer.Respawn
 * No return behavior
 * Called when the player spawns (specifically when they click the "Respawn" button)
 * ONLY called after the player has transitioned from dead to not-dead, so not when they're waking up
 * This means it's possible for a player to connect and disconnect from a server without OnPlayerRespawned ever triggering for them

## OnPlayerChat(ConsoleSystem.Arg arg)
 * Called from chat.say
 * Returning a non-null value overrides default behavior of chat, not commands

## OnRunPlayerMetabolism(PlayerMetabolism metabolism)
 * Called from PlayerMetabolism.RunMetabolism
 * Called before a metabolism update occurs for the specified player
 * Returning true cancels the update
 * Metabolism update consists of managing the player's temperature, health etc.
 * You can use this to turn off or change certain aspects of the metabolism, either by editing values before returning, or taking complete control of the method
 * Access the player object using metabolism:GetComponent("BasePlayer")

## OnPlayerAttack(BasePlayer attacker, HitInfo hitInfo)
 * Called from BasePlayer.SharedProjectileAttack and BaseMelee.DoAttackShared
 * Returning true cancels the attack
 * Useful for modifying an attack before it goes out
 * hitInfo.HitEntity should be the entity that this attack would hit

## OnPlayerLoot(PlayerLoot lootInventory, BaseEntity targetEntity)
 * Called from PlayerLoot.StartLootingEntity
 * No return behavior
 * Called when the player starts looting an entity

## OnPlayerLoot(PlayerLoot lootInventory, BasePlayer targetPlayer)
 * Called from PlayerLoot.StartLootingPlayer
 * No return behavior
 * Called when the player starts looting another player

## OnPlayerLoot(PlayerLoot lootInventory, Item targetItem)
 * Called from PlayerLoot.StartLootingItem
 * No return behavior
 * Called when the player starts looting an item

## OnPlayerInput(BasePlayer player, InputState input)
 * Called from BasePlayer.OnReceiveTick
 * No return behavior
 * Called when input is received from a connected client

## OnPlayerSleepEnded(BasePlayer player)
 * Called from BasePlayer.EndSleeping()
 * No return behavior
 * Called when a player awakes

## OnItemCraft(ItemCraftTask item)
 * Called from ItemCrafter.CraftItem
 * Return a ItemCraftTask object to modify behavior
 * Called right after an item has started crafting

## OnGather(ResourceDispenser dispenser, BaseEntity entity, Item item)
 * Called from ResourceDispenser.GiveResourceFromItem
 * No return behavior
 * Called before the player is given items from a resource

## Placeholder

``` csharp
private void Placeholder()
{
    Puts("Placeholder works!");
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

 * Placeholder
