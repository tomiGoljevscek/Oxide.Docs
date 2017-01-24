# Player Hooks

## CanBeTargeted (autoturret)

``` csharp
void CanBeTargeted(BasePlayer player, AutoTurret turret) 
{
    Puts("CanBeTargeted works!");
}
```

 * Called when an autoturrent is attempting to target the player
 * Returning true overrides default behavior

## CanBeTargeted (helicopter)

``` csharp
void CanBeTargeted(BasePlayer player, HelicopterTurret turret) 
{
    Puts("CanBeTargeted works!");
}
```

 * Called when a helicopter is attempting to target the player
 * Returning true overrides default behavior

## CanBeWounded

``` csharp
void CanBeWounded(BasePlayer player, HitInfo info) 
{
    Puts("CanBeWounded works!");
}
```

 * Called when any damage is attempted on player
 * Returning true overrides default behavior

## CanBypassQueue

``` csharp
void CanBypassQueue(Network.Connection connection)
{
    Puts("CanBypassQueue works!");
}
```

 * Called before a player is added to the connection queue
 * Returning true will bypass the queue, returning nothing will by default queue the player

## CanClientLogin

``` csharp
void CanClientLogin(Network.Connection connection)
{
    Puts("CanClientLogin works!");
}
```

 * Called when the player is attempting to login
 * Returning a string will use the string as the error message
 * Returning true allows the connection, returning nothing will by default allow the connection, returning anything else will reject it with an error message

## CanEquipItem

``` csharp
void CanEquipItem(PlayerInventory inventory, Item item)
{
    Puts("CanEquipItem works!");
}
```

 * Called when the player attempts to equip an item
 * Returning true overrides default behavior

## CanLootPlayer

``` csharp
void CanLootPlayer(BasePlayer target, BasePlayer looter) 
{
    Puts("CanLootPlayer works!");
}
```

 * Called when the player attempts to loot another player
 * Returning true overrides default behavior

## CanWearItem

``` csharp
void CanWearItem(PlayerInventory inventory, Item item)
{
    Puts("CanWearItem works!");
}
```

 * Called when the player attempts to equip an item
 * Returning true overrides default behavior

## OnExplosiveThrown

``` csharp
void OnExplosiveThrown(BasePlayer player, BaseEntity entity)
{
    Puts("OnExplosiveThrown works!");
}
```

 * Called when the player throws an explosive item (C4, grenade, ...)
 * No return behavior

## OnFindSpawnPoint

``` csharp
void OnFindSpawnPoint()
{
    Puts("OnFindSpawnPoint works!");
}
```

 * Useful for controlling player spawnpoints (like making all spawns occur in a set area)
 * Return a BasePlayer.SpawnPoint object to use that spawnpoint

## OnPlayerAttack

``` csharp
void OnPlayerAttack(BasePlayer attacker, HitInfo info)
{
    Puts("OnPlayerAttack works!");
}
```

 * Useful for modifying an attack before it goes out
 * hitInfo.HitEntity should be the entity that this attack would hit
 * Returning true cancels the attack

## OnPlayerChat

``` csharp
void OnPlayerChat(ConsoleSystem.Arg arg)
{
    Puts("OnPlayerChat works!");
}
```

 * Called when the player sends chat to the server
 * Returning true overrides default behavior of chat, not commands

## OnPlayerConnected

``` csharp
void OnPlayerConnected(Network.Message packet)
{
    Puts("OnPlayerConnected works!");
}
```

 * Called before the player object is created, but after the player has been approved to join the game
 * Can get the connection from packet.connection
 * No return behavior

## OnPlayerDisconnected

``` csharp
void OnPlayerDisconnected(BasePlayer player, string reason)
{
    Puts("OnPlayerDisconnected works!");
}
```

 * Called after the player has disconnected from the server
 * No return behavior

## OnPlayerInit

``` csharp
void OnPlayerInit(BasePlayer player)
{
    Puts("OnPlayerInit works!");
}
```

 * Called when the player is initializing (after they've connected, before they wake up)
 * No return behavior

## OnPlayerInput

``` csharp
void OnPlayerInput(BasePlayer player, InputState input)
{
    Puts("OnPlayerInput works!");
}
```

 * Called when input is received from a connected client
 * No return behavior

## OnPlayerLanded

``` csharp
void OnPlayerLanded(BasePlayer player)
{
    Puts("OnPlayerLanded works!");
}
```

 * Called when the player lands on the ground
 * No return behavior

## OnPlayerRespawn

``` csharp
void OnPlayerRespawn(BasePlayer player)
{
    Puts("OnPlayerRespawn works!");
}
```

 * Called when the player is attempting to respawn
 * Returning true overrides the default behavior

## OnPlayerRespawned

``` csharp
void OnPlayerRespawned(BasePlayer player)
{
    Puts("OnPlayerRespawned works!");
}
```

 * Called when the player has respawned (specifically when they click the "Respawn" button)
 * ONLY called after the player has transitioned from dead to not-dead, so not when they're waking up
 * This means it's possible for a player to connect and disconnect from a server without OnPlayerRespawned ever triggering for them
 * No return behavior

## OnLootEntity

``` csharp
void OnLootEntity(BasePlayer player, BaseEntity entity)
{
    Puts("OnLootEntity works!");
}
```

 * Called when the player starts looting an entity
 * No return behavior

## OnLootPlayer

``` csharp
void OnLootPlayer(BasePlayer player, BasePlayer target)
{
    Puts("OnLootPlayer works!");
}
```

 * Called when the player starts looting another player
 * No return behavior

## OnLootItem

``` csharp
void OnLootItem(BasePlayer player, Item item)
{
    Puts("OnLootItem works!");
}
```

 * Called when the player starts looting an item
 * No return behavior

## OnMeleeThrown

``` csharp
void OnMeleeThrown(BasePlayer player, Item item)
{
    Puts("OnMeleeThrown works!");
}
```

 * Called when the player throws a melee item (axe, rock, ...)
 * No return behavior

## OnPlayerSleepEnded

``` csharp
void OnPlayerSleepEnded(BasePlayer player)
{
    Puts("OnPlayerSleepEnded works!");
}
```

 * Called when the player awakes
 * No return behavior

## OnRocketLaunched

``` csharp
void OnRocketLaunched(BasePlayer player, BaseEntity entity)
{
    Puts("OnRocketLaunched works!");
}
```

 * Called when the player launches a rocket
 * No return behavior

## OnRunPlayerMetabolism

``` csharp
void OnRunPlayerMetabolism(PlayerMetabolism metabolism)
{
    Puts("OnRunPlayerMetabolism works!");
}
```

 * Called before a metabolism update occurs for the specified player
 * Metabolism update consists of managing the player's temperature, health etc.
 * You can use this to turn off or change certain aspects of the metabolism, either by editing values before returning, or taking complete control of the method
 * Access the player object using metabolism:GetComponent("BasePlayer")
 * Returning true cancels the update

## OnNewConnection

``` csharp
void OnNewConnection(Network.Connection connection)
{
    Puts("OnNewConnection works!");
}
```

 * Called when a new connection is made by a user, after token, but before other checks.
 * Returning true overrides default behavior, plugin should call Reject if it does this

## OnUserApprove

``` csharp
void OnUserApprove(Network.Connection connection)
{
    Puts("OnUserApprove works!");
}
```

 * Used by RustCore and abstracted into CanClientLogin
 * Returning true overrides default behavior, plugin should call Reject if it does this

## OnWeaponFired

``` csharp
void OnWeaponFired(BaseProjectile projectile, BasePlayer player, ItemModProjectile mod, ProtoBuf.ProjectileShoot projectiles)
{
    Puts("OnWeaponFired works!");
}
```

 * Called when the player fires a weapon
 * No return behavior
