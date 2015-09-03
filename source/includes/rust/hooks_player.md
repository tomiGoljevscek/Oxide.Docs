# Player Hooks

## OnUserApprove

``` csharp
void OnUserApprove(Network.Connection connection)
{
    Puts("OnUserApprove works!");
}
```

``` javascript
OnUserApprove: function(connection) {
    print("OnUserApprove works!");
}
```

``` lua
function PLUGIN:OnUserApprove(connection)
    print("OnUserApprove works!")
end
```

``` python
def OnUserApprove(self, connection):
    print "OnUserApprove works!"
```

 * Called from ConnectionAuth.OnNewConnection
 * Used by RustCore and abstracted into CanClientLogin
 * Returning a non-null value overrides default behavior, plugin should call Reject if it does this

## CanClientLogin

``` csharp
void CanClientLogin(Network.Connection connection)
{
    Puts("CanClientLogin works!");
}
```

``` javascript
CanClientLogin: function(connection) {
    print("CanClientLogin works!");
}
```

``` lua
function PLUGIN:CanClientLogin(connection)
    print("CanClientLogin works!")
end
```

``` python
def CanClientLogin(self, connection):
    print "CanClientLogin works!"
```

 * Called from RustCore.IOnUserApprove
 * Returning a string will use the string as the error message
 * Returning true will allow the connection, returning nothing will by default allow the connection, returning anything else will reject it with an error message

## OnPlayerConnected

``` csharp
void OnPlayerConnected(Network.Message packet)
{
    Puts("OnPlayerConnected works!");
}
```

``` javascript
OnPlayerConnected: function(packet) {
    print("OnPlayerConnected works!");
}
```

``` lua
function PLUGIN:OnPlayerConnected(packet)
    print("OnPlayerConnected works!")
end
```

``` python
def OnPlayerConnected(self, packet):
    print "OnPlayerConnected works!"
```

 * Called from ServerMgr.ClientReady
 * Called before the player object is created, but after the player has been approved to join the game
 * Can get the connection from packet.connection
 * No return behavior

## OnPlayerDisconnected

``` csharp
void OnPlayerDisconnected(BasePlayer player)
{
    Puts("OnPlayerDisconnected works!");
}
```

``` javascript
OnPlayerDisconnected: function(player) {
    print("OnPlayerDisconnected works!");
}
```

``` lua
function PLUGIN:OnPlayerDisconnected(player)
    print("OnPlayerDisconnected works!")
end
```

``` python
def OnPlayerDisconnected(self, player):
    print "OnPlayerDisconnected works!"
```

 * Called from BasePlayer.OnDisconnected
 * Called after the player has disconnected from the server
 * No return behavior

## OnPlayerInit

``` csharp
void OnPlayerInit(BasePlayer player)
{
    Puts("OnPlayerInit works!");
}
```

``` javascript
OnPlayerInit: function(player) {
    print("OnPlayerInit works!");
}
```

``` lua
function PLUGIN:OnPlayerInit(player)
    print("OnPlayerInit works!")
end
```

``` python
def OnPlayerInit(self, player):
    print "OnPlayerInit works!"
```

 * Called from BasePlayer.PlayerInit
 * Called when the player is initializing (after they've connected, before they wake up)
 * No return behavior

## OnFindSpawnPoint

``` csharp
void OnFindSpawnPoint()
{
    Puts("OnFindSpawnPoint works!");
}
```

``` javascript
OnFindSpawnPoint: function() {
    print("OnFindSpawnPoint works!");
}
```

``` lua
function PLUGIN:OnFindSpawnPoint()
    print("OnFindSpawnPoint works!")
end
```

``` python
def OnFindSpawnPoint(self):
    print "OnFindSpawnPoint works!"
```

 * Called from ServerMgr.BasePlayer/SpawnPoint
 * Useful for controlling player spawnpoints (like making all spawns occur in a set area)
 * Return a BasePlayer.SpawnPoint object to use that spawnpoint

## OnHammerHit

``` csharp
void OnHammerHit(BasePlayer player, HitInfo info)
{
    Puts("OnHammerHit works!");
}
```

``` javascript
OnHammerHit: function(player, info) {
    print("OnHammerHit works!");
}
```

``` lua
function PLUGIN:OnHammerHit(player, info)
    print("OnHammerHit works!")
end
```

``` python
def OnHammerHit(self, player, info):
    print "OnHammerHit works!"
```

 * Called from RustCore.IOnHammerHit
 * Called when the player has hit something with a hammer
 * No return behavior

## OnPlayerRespawned

``` csharp
void OnPlayerRespawned(BasePlayer player)
{
    Puts("OnPlayerRespawned works!");
}
```

``` javascript
OnPlayerRespawned: function(player) {
    print("OnPlayerRespawned works!");
}
```

``` lua
function PLUGIN:OnPlayerRespawned(player)
    print("OnPlayerRespawned works!")
end
```

``` python
def OnPlayerRespawned(self, player):
    print "OnPlayerRespawned works!"
```

 * Called from BasePlayer.Respawn
 * Called when the player spawns (specifically when they click the "Respawn" button)
 * ONLY called after the player has transitioned from dead to not-dead, so not when they're waking up
 * This means it's possible for a player to connect and disconnect from a server without OnPlayerRespawned ever triggering for them
 * No return behavior

## OnPlayerChat

``` csharp
void OnPlayerChat(ConsoleSystem.Arg arg)
{
    Puts("OnPlayerChat works!");
}
```

``` javascript
OnPlayerChat: function(arg) {
    print("OnPlayerChat works!");
}
```

``` lua
function PLUGIN:OnPlayerChat(arg)
    print("OnPlayerChat works!")
end
```

``` python
def OnPlayerChat(self, arg):
    print "OnPlayerChat works!"
```

 * Called from chat.say
 * Called when a player sends chat to the server
 * Returning a non-null value overrides default behavior of chat, not commands

## OnRunPlayerMetabolism

``` csharp
void OnRunPlayerMetabolism(PlayerMetabolism metabolism)
{
    Puts("OnRunPlayerMetabolism works!");
}
```

``` javascript
OnRunPlayerMetabolism: function(metabolism) {
    print("OnRunPlayerMetabolism works!");
}
```

``` lua
function PLUGIN:OnRunPlayerMetabolism(metabolism)
    print("OnRunPlayerMetabolism works!")
end
```

``` python
def OnRunPlayerMetabolism(self, metabolism):
    print "OnRunPlayerMetabolism works!"
```

 * Called from PlayerMetabolism.RunMetabolism
 * Called before a metabolism update occurs for the specified player
 * Metabolism update consists of managing the player's temperature, health etc.
 * You can use this to turn off or change certain aspects of the metabolism, either by editing values before returning, or taking complete control of the method
 * Access the player object using metabolism:GetComponent("BasePlayer")
 * Returning true cancels the update

## OnPlayerAttack

``` csharp
void OnPlayerAttack(BasePlayer attacker, HitInfo info)
{
    Puts("OnPlayerAttack works!");
}
```

``` javascript
OnPlayerAttack: function(attacker, info) {
    print("OnPlayerAttack works!");
}
```

``` lua
function PLUGIN:OnPlayerAttack(attacker, info)
    print("OnPlayerAttack works!")
end
```

``` python
def OnPlayerAttack(self, attacker, info):
    print "OnPlayerAttack works!"
```

 * Called from BasePlayer.SharedProjectileAttack and BaseMelee.DoAttackShared
 * Useful for modifying an attack before it goes out
 * hitInfo.HitEntity should be the entity that this attack would hit
 * Returning true cancels the attack

## OnPlayerLoot

``` csharp
void OnPlayerLoot(PlayerLoot inventory, BaseEntity target)
{
    Puts("OnPlayerLoot works!");
}
```

``` javascript
OnPlayerLoot: function(inventory, target) {
    print("OnPlayerLoot works!");
}
```

``` lua
function PLUGIN:OnPlayerLoot(inventory, target)
    print("OnPlayerLoot works!")
end
```

``` python
def OnPlayerLoot(self, inventory, target):
    print "OnPlayerLoot works!"
```

 * Called from PlayerLoot.StartLootingEntity
 * Called when the player starts looting an entity
 * No return behavior

## OnPlayerLoot

``` csharp
void OnPlayerLoot(PlayerLoot inventory, BasePlayer target)
{
    Puts("OnPlayerLoot works!");
}
```

``` javascript
OnPlayerLoot: function(inventory, target) {
    print("OnPlayerLoot works!");
}
```

``` lua
function PLUGIN:OnPlayerLoot(inventory, target)
    print("OnPlayerLoot works!")
end
```

``` python
def OnPlayerLoot(self, inventory, target):
    print "OnPlayerLoot works!"
```

 * Called from PlayerLoot.StartLootingPlayer
 * Called when the player starts looting another player
 * No return behavior

## OnPlayerLoot

``` csharp
void OnPlayerLoot(PlayerLoot inventory, Item item)
{
    Puts("OnPlayerLoot works!");
}
```

``` javascript
OnPlayerLoot: function(inventory, item) {
    print("OnPlayerLoot works!");
}
```

``` lua
function PLUGIN:OnPlayerLoot(inventory, item)
    print("OnPlayerLoot works!")
end
```

``` python
def OnPlayerLoot(self, inventory, target):
    print "OnPlayerLoot works!"
```

 * Called from PlayerLoot.StartLootingItem
 * Called when the player starts looting an item
 * No return behavior

## OnPlayerInput

``` csharp
void OnPlayerInput(BasePlayer player, InputState input)
{
    Puts("OnPlayerInput works!");
}
```

``` javascript
OnPlayerInput: function(player, input) {
    print("OnPlayerInput works!");
}
```

``` lua
function PLUGIN:OnPlayerInput(player, input)
    print("OnPlayerInput works!")
end
```

``` python
def OnPlayerInput(self, player, input):
    print "OnPlayerInput works!"
```

 * Called from BasePlayer.OnReceiveTick
 * Called when input is received from a connected client
 * No return behavior

## OnPlayerSleepEnded

``` csharp
void OnPlayerSleepEnded(BasePlayer player)
{
    Puts("OnPlayerSleepEnded works!");
}
```

``` javascript
OnPlayerSleepEnded: function(player) {
    print("OnPlayerSleepEnded works!");
}
```

``` lua
function PLUGIN:OnPlayerSleepEnded(player)
    print("OnPlayerSleepEnded works!")
end
```

``` python
def OnPlayerSleepEnded(self, player):
    print "OnPlayerSleepEnded works!"
```

 * Called from BasePlayer.EndSleeping
 * Called when a player awakes
 * No return behavior

## OnWeaponThrown

``` csharp
void OnWeaponThrown(BasePlayer player, BaseEntity entity)
{
    Puts("OnWeaponThrown works!");
}
```

``` javascript
OnWeaponThrown: function(player, entity) {
    print("OnWeaponThrown works!");
}
```

``` lua
function PLUGIN:OnWeaponThrown(player, entity)
    print("OnWeaponThrown works!")
end
```

``` python
def OnWeaponThrown(self, player, entity):
    print "OnWeaponThrown works!"
```

 * Called from RustCore.IOnWeaponThrown
 * Called when a player throws a weapon (grenade, c4, ...)
 * No return behavior

## OnRocketLaunched

``` csharp
void OnRocketLaunched(BasePlayer player, BaseEntity entity)
{
    Puts("OnRocketLaunched works!");
}
```

``` javascript
OnRocketLaunched: function(player, entity) {
    print("OnRocketLaunched works!");
}
```

``` lua
function PLUGIN:OnRocketLaunched(player, entity)
    print("OnRocketLaunched works!")
end
```

``` python
def OnRocketLaunched(self, player, entity):
    print "OnRocketLaunched works!"
```

 * Called from RustCore.IOnRocketLaunched
 * Called when a player launches a rocket
 * No return behavior

## OnWeaponFired

``` csharp
void OnWeaponFired(BaseProjectile projectile, BasePlayer player, ItemModProjectile projectile, ProtoBuf.ProjectileShoot projectiles)
{
    Puts("OnWeaponFired works!");
}
```

``` javascript
OnWeaponFired: function(baseProjectile, player, modProjectile, projectiles) {
    print("OnWeaponFired works!");
}
```

``` lua
function PLUGIN:OnWeaponFired(baseProjectile, player, modProjectile, projectiles)
    print("OnWeaponFired works!")
end
```

``` python
def OnWeaponFired(self, baseProjectile, player, modProjectile, projectiles):
    print "OnWeaponFired works!"
```

 * Called from RustCore.IOnWeaponFired
 * Called when a player fires a weapon
 * No return behavior

## CanBeWounded

``` csharp
void CanBeWounded(BasePlayer player, HitInfo info) 
{
    Puts("CanBeWounded works!");
}
```

``` javascript
CanBeWounded: function(player, info) {
    print("CanBeWounded works!");
}
```

``` lua
function PLUGIN:CanBeWounded(player, info)
    print("CanBeWounded works!")
end
```

``` python
def CanBeWounded(self, player, info):
    print "CanBeWounded works!"
```

 * Called from BasePlayer.EligibleForWounding
 * Called when a player dies
 * Returning true or false will cancel default behavior

## CanLootPlayer

``` csharp
void CanLootPlayer(BasePlayer player, BasePlayer target) 
{
    Puts("CanLootPlayer works!");
}
```

``` javascript
CanLootPlayer: function(player, target) {
    print("CanLootPlayer works!");
}
```

``` lua
function PLUGIN:CanLootPlayer(player, target)
    print("CanLootPlayer works!")
end
```

``` python
def CanLootPlayer(self, player, target):
    print "CanLootPlayer works!"
```

 * Called from BasePlayer.CanBeLooted
 * Called when a player attempts to loot another player
 * Returning true or false will cancel default behavior
