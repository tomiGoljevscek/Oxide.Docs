# Player Hooks

## CanAttack

``` csharp
bool CanAttack(BasePlayer player)
{
    Puts("CanAttack works!");
}
```

 * Called when the player is attempting to perform a melee attack
 * Returning true or false overrides default behavior

## CanBeTargeted (autoturret)

``` csharp
bool CanBeTargeted(BaseCombatEntity player, MonoBehaviour behaviour)
{
    Puts("CanBeTargeted works!");
}
```

 * Called when an autoturret, flame turret, shotgun trap, or helicopter turret is attempting to target the player
 * Returning true or false overrides default behavior

## CanBeWounded

``` csharp
bool CanBeWounded(BasePlayer player, HitInfo info)
{
    Puts("CanBeWounded works!");
}
```

 * Called when any damage is attempted on player
 * Returning true or false overrides default behavior

## CanBypassQueue

``` csharp
bool CanBypassQueue(Network.Connection connection)
{
    Puts("CanBypassQueue works!");
}
```

 * Called before the player is added to the connection queue
 * Returning true will bypass the queue, returning nothing will by default queue the player

## CanCraft

``` csharp
bool CanCraft(ItemCrafter itemCrafter, ItemBlueprint bp, int amount)
{
    Puts("CanCraft works!");
}
```

 * Called when the player attempts to craft an item
 * Returning true or false overrides default behavior

## CanClientLogin

``` csharp
bool CanClientLogin(Network.Connection connection)
{
    Puts("CanClientLogin works!");
}
```

 * Called when the player is attempting to login
 * Returning a string will use the string as the error message
 * Returning true allows the connection, returning nothing will by default allow the connection, returning anything else will reject it with an error message

## CanEquipItem

``` csharp
bool CanEquipItem(PlayerInventory inventory, Item item)
{
    Puts("CanEquipItem works!");
}
```

 * Called when the player attempts to equip an item
 * Returning true or false overrides default behavior

## CanLootPlayer

``` csharp
bool CanLootPlayer(BasePlayer target, BasePlayer looter)
{
    Puts("CanLootPlayer works!");
}
```

 * Called when the player attempts to loot another player
 * Returning true or false overrides default behavior

## CanUseMailbox

``` csharp
bool CanUseMailbox(BasePlayer player, Mailbox mailbox)
{
    Puts("CanUseMailbox works!");
}
```

 * Called when the player tries to use a mailbox
 * Returning true or false overrides default behavior

## CanWearItem

``` csharp
bool CanWearItem(PlayerInventory inventory, Item item)
{
    Puts("CanWearItem works!");
}
```

 * Called when the player attempts to equip an item
 * Returning true or false overrides default behavior

## OnClientAuth

``` csharp
void OnClientAuth(Connection connection)
{
    Puts("OnClientAuth works!");
}
```

 * Called when the player is giving server connection authorization information
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

## OnLootEntity

``` csharp
void OnLootEntity(BasePlayer player, BaseEntity entity)
{
    Puts("OnLootEntity works!");
}
```

 * Called when the player starts looting an entity
 * No return behavior

## OnLootEntityEnd

``` csharp
void OnLootEntityEnd(BasePlayer player, BaseCombatEntity entity)
{
    Puts("OnLootEntityEnd works!");
}
```

 * Called when the player stops looting an entity
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

## OnLootPlayer

``` csharp
void OnLootPlayer(BasePlayer player, BasePlayer target)
{
    Puts("OnLootPlayer works!");
}
```

 * Called when the player starts looting another player
 * No return behavior

## OnPlayerAttack

``` csharp
void OnPlayerAttack(BasePlayer attacker, HitInfo info)
{
    Puts("OnPlayerAttack works!");
}
```

 * Useful for modifying an attack before it goes out
 * hitInfo.HitEntity should be the entity that this attack would hit
 * Returning a non-null value overrides default behavior

## OnPlayerBanned

``` csharp
void OnPlayerBanned(string name, ulong id, string address, string reason)
{
    Puts("OnPlayerBanned works!");
}
```

 * Called when the player is banned (Facepunch, EAC, server ban, etc.)
 * No return behavior

## OnPlayerChat

``` csharp
object OnPlayerChat(ConsoleSystem.Arg arg)
{
    Puts("OnPlayerChat works!");
}
```

 * Called when the player sends chat to the server
 * Returning a non-null value overrides default behavior of chat, not commands

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

## OnPlayerDie

``` csharp
object OnPlayerDie(BasePlayer player, HitInfo info)
{
    Puts("OnPlayerDie works!");
}
```

 * Called when the player is about to die
 * HitInfo may be null
 * Returning a non-null value overrides default behavior

## OnPlayerDisconnected

``` csharp
void OnPlayerDisconnected(BasePlayer player, string reason)
{
    Puts("OnPlayerDisconnected works!");
}
```

 * Called after the player has disconnected from the server
 * No return behavior

## OnPlayerHealthChange

``` csharp
object OnPlayerHealthChange(BasePlayer player, float oldValue, float newValue)
{
    Puts("OnPlayerHealthChange works!");
}
```

 * Called just before the player's health changes
 * Returning a non-null value cancels the health change

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

## OnPlayerKicked

``` csharp
void OnPlayerKicked(BasePlayer player, string reason)
{
    Puts("OnPlayerKicked works!");
}
```

 * Called after the player is kicked from the server
 * No return behavior

## OnPlayerLand

``` csharp
object OnPlayerLand(BasePlayer player, float num)
{
    Puts("OnPlayerLand works!");
}
```

 * Called just before the player lands on the ground
 * Returning a non-null value overrides default behavior

## OnPlayerLanded

``` csharp
void OnPlayerLanded(BasePlayer player, float num)
{
    Puts("OnPlayerLanded works!");
}
```

 * Called when the player landed on the ground
 * No return behavior

## OnPlayerLootEnd

``` csharp
void OnPlayerLootEnd(PlayerLoot inventory)
{
    Puts("OnPlayerLootEnd works!");
}
```

 * Called when the player stops looting
 * No return behavior

## OnPlayerRecover

``` csharp
object OnPlayerRecover(BasePlayer player)
{
    Puts("OnPlayerRecover works!");
}
```

 * Called when the player is about to recover from the 'wounded' state
 * Returning a non-null value overrides default behavior

## OnPlayerRespawn

``` csharp
object OnPlayerRespawn(BasePlayer player)
{
    Puts("OnPlayerRespawn works!");
}
```

 * Called when the player is attempting to respawn
 * Returning a BasePlayer.SpawnPoint (takes a position and rotation) overrides the respawn location

## OnPlayerRespawned

``` csharp
void OnPlayerRespawned(BasePlayer player)
{
    Puts("OnPlayerRespawned works!");
}
```

 * Called when the player has respawned (specifically when they click the "Respawn" button)
 * ONLY called after the player has transitioned from dead to not-dead, so not when they're waking up
 * This means it's possible for the player to connect and disconnect from a server without OnPlayerRespawned ever triggering for them
 * No return behavior

## OnPlayerSleep

``` csharp
object OnPlayerSleep(BasePlayer player)
{
    Puts("OnPlayerSleep works!");
}
```

 * Called when the player is about to go to sleep
 * Returning a non-null value overrides default behavior

## OnPlayerSleepEnded

``` csharp
void OnPlayerSleepEnded(BasePlayer player)
{
    Puts("OnPlayerSleepEnded works!");
}
```

 * Called when the player awakes
 * No return behavior

## OnPlayerSpawn

``` csharp
object OnPlayerSpawn(BasePlayer player)
{
    Puts("OnPlayerSpawn works!");
}
```

 * Called when the player spawns for the first time on the server
 * Returning a non-null value overrides default behavior

## OnPlayerSpectate

``` csharp
object OnPlayerSpectate(BasePlayer player, string spectateFilter)
{
    Puts("OnPlayerSpectate works!");
}
```

 * Called when the player starts spectating
 * Returning a non-null value overrides default behavior

## OnPlayerSpectateEnd

``` csharp
object OnPlayerSpectateEnd(BasePlayer player, string spectateFilter)
{
    Puts("OnPlayerSpectateEnd works!");
}
```

 * Called when the player stops spectating
 * Returning a non-null value stops the spectate from ending

## OnPlayerTick

``` csharp
object OnPlayerTick(BasePlayer player, PlayerTick msg, bool wasPlayerStalled)
{
    Puts("OnPlayerTick works!");
}
```

 * Returning a non-null value overrides default behavior

## OnPlayerUnbanned

``` csharp
void OnPlayerUnbanned(string name, ulong id, string address)
{
    Puts("OnPlayerUnbanned works!");
}
```

 * Called when the player is unbanned (server ban only)
 * No return behavior

## OnPlayerViolation

``` csharp
object OnPlayerViolation(BasePlayer player, AntiHackType type, float amount)
{
    Puts("OnPlayerViolation works!");
}
```

 * Called when the player triggers an anti-hack violation
 * Returning a non-null value overrides default behavior

## OnPlayerWound

``` csharp
object OnPlayerWound(BasePlayer player)
{
    Puts("OnPlayerWound works!");
}
```

 * Called when the player is about to go down to the 'wounded' state
 * Returning a non-null value cancels the wounded state

## OnRunPlayerMetabolism

``` csharp
object OnRunPlayerMetabolism(PlayerMetabolism metabolism)
{
    Puts("OnRunPlayerMetabolism works!");
}
```

 * Called before a metabolism update occurs for the specified player
 * Metabolism update consists of managing the player's temperature, health etc.
 * You can use this to turn off or change certain aspects of the metabolism, either by editing values before returning, or taking complete control of the method
 * Access the player object using metabolism:GetComponent("BasePlayer")
 * Returning true cancels the update

## OnUserApprove

``` csharp
object OnUserApprove(Network.Connection connection)
{
    Puts("OnUserApprove works!");
}
```

 * Used by RustCore and abstracted into CanClientLogin
 * Returning a non-null value overrides default behavior, plugin should call Reject if it does this
