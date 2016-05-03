# Player Hooks

## CanBeWounded

``` csharp
void CanBeWounded(BasePlayer player, HitInfo info) 
{
    Puts("CanBeWounded works!");
}
```

``` lua
function PLUGIN:CanBeWounded(player, info)
    print("CanBeWounded works!")
end
```

``` javascript
CanBeWounded: function(player, info) {
    print("CanBeWounded works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def CanBeWounded(self, player, info):
    print "CanBeWounded works!"
```

 * Called when any damage is attempted on player
 * Returning true overrides default behavior

## CanClientLogin

``` csharp
void CanClientLogin(Network.Connection connection)
{
    Puts("CanClientLogin works!");
}
```

``` lua
function PLUGIN:CanClientLogin(connection)
    print("CanClientLogin works!")
end
```

``` javascript
CanClientLogin: function(connection) {
    print("CanClientLogin works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def CanClientLogin(self, connection):
    print "CanClientLogin works!"
```

 * Returning a string will use the string as the error message
 * Returning true allowsthe connection, returning nothing will by default allow the connection, returning anything else will reject it with an error message

## CanLootPlayer

``` csharp
void CanLootPlayer(BasePlayer target, BasePlayer looter) 
{
    Puts("CanLootPlayer works!");
}
```

``` lua
function PLUGIN:CanLootPlayer(player, target)
    print("CanLootPlayer works!")
end
```

``` javascript
CanLootPlayer: function(player, target) {
    print("CanLootPlayer works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def CanLootPlayer(self, player, target):
    print "CanLootPlayer works!"
```

 * Called when a player attempts to loot another player
 * Returning true overrides default behavior

## OnFindSpawnPoint

``` csharp
void OnFindSpawnPoint()
{
    Puts("OnFindSpawnPoint works!");
}
```

``` lua
function PLUGIN:OnFindSpawnPoint()
    print("OnFindSpawnPoint works!")
end
```

``` javascript
OnFindSpawnPoint: function() {
    print("OnFindSpawnPoint works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnFindSpawnPoint(self):
    print "OnFindSpawnPoint works!"
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

``` lua
function PLUGIN:OnPlayerAttack(attacker, info)
    print("OnPlayerAttack works!")
end
```

``` javascript
OnPlayerAttack: function(attacker, info) {
    print("OnPlayerAttack works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnPlayerAttack(self, attacker, info):
    print "OnPlayerAttack works!"
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

``` lua
function PLUGIN:OnPlayerChat(arg)
    print("OnPlayerChat works!")
end
```

``` javascript
OnPlayerChat: function(arg) {
    print("OnPlayerChat works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnPlayerChat(self, arg):
    print "OnPlayerChat works!"
```

 * Called when a player sends chat to the server
 * Returning true overrides default behavior of chat, not commands

## OnPlayerConnected

``` csharp
void OnPlayerConnected(Network.Message packet)
{
    Puts("OnPlayerConnected works!");
}
```

``` lua
function PLUGIN:OnPlayerConnected(packet)
    print("OnPlayerConnected works!")
end
```

``` javascript
OnPlayerConnected: function(packet) {
    print("OnPlayerConnected works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnPlayerConnected(self, packet):
    print "OnPlayerConnected works!"
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

``` lua
function PLUGIN:OnPlayerDisconnected(player, reason)
    print("OnPlayerDisconnected works!")
end
```

``` javascript
OnPlayerDisconnected: function(player, reason) {
    print("OnPlayerDisconnected works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnPlayerDisconnected(self, player, reason):
    print "OnPlayerDisconnected works!"
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

``` lua
function PLUGIN:OnPlayerInit(player)
    print("OnPlayerInit works!")
end
```

``` javascript
OnPlayerInit: function(player) {
    print("OnPlayerInit works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnPlayerInit(self, player):
    print "OnPlayerInit works!"
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

``` lua
function PLUGIN:OnPlayerInput(player, input)
    print("OnPlayerInput works!")
end
```

``` javascript
OnPlayerInput: function(player, input) {
    print("OnPlayerInput works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnPlayerInput(self, player, input):
    print "OnPlayerInput works!"
```

 * Called when input is received from a connected client
 * No return behavior

## OnPlayerRespawned

``` csharp
void OnPlayerRespawned(BasePlayer player)
{
    Puts("OnPlayerRespawned works!");
}
```

``` lua
function PLUGIN:OnPlayerRespawned(player)
    print("OnPlayerRespawned works!")
end
```

``` javascript
OnPlayerRespawned: function(player) {
    print("OnPlayerRespawned works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnPlayerRespawned(self, player):
    print "OnPlayerRespawned works!"
```

 * Called when the player spawns (specifically when they click the "Respawn" button)
 * ONLY called after the player has transitioned from dead to not-dead, so not when they're waking up
 * This means it's possible for a player to connect and disconnect from a server without OnPlayerRespawned ever triggering for them
 * No return behavior

## OnPlayerLoot

``` csharp
void OnPlayerLoot(PlayerLoot inventory, BaseEntity target)
{
    Puts("OnPlayerLoot works!");
}
```

``` lua
function PLUGIN:OnPlayerLoot(inventory, target)
    print("OnPlayerLoot works!")
end
```

``` javascript
OnPlayerLoot: function(inventory, target) {
    print("OnPlayerLoot works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnPlayerLoot(self, inventory, target):
    print "OnPlayerLoot works!"
```

 * Called when the player starts looting an entity
 * No return behavior

## OnPlayerLoot

``` csharp
void OnPlayerLoot(PlayerLoot inventory, BasePlayer target)
{
    Puts("OnPlayerLoot works!");
}
```

``` lua
function PLUGIN:OnPlayerLoot(inventory, target)
    print("OnPlayerLoot works!")
end
```

``` javascript
OnPlayerLoot: function(inventory, target) {
    print("OnPlayerLoot works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnPlayerLoot(self, inventory, target):
    print "OnPlayerLoot works!"
```

 * Called when the player starts looting another player
 * No return behavior

## OnPlayerLoot

``` csharp
void OnPlayerLoot(PlayerLoot inventory, Item item)
{
    Puts("OnPlayerLoot works!");
}
```

``` lua
function PLUGIN:OnPlayerLoot(inventory, item)
    print("OnPlayerLoot works!")
end
```

``` javascript
OnPlayerLoot: function(inventory, item) {
    print("OnPlayerLoot works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnPlayerLoot(self, inventory, target):
    print "OnPlayerLoot works!"
```

 * Called when the player starts looting an item
 * No return behavior

## OnPlayerSleepEnded

``` csharp
void OnPlayerSleepEnded(BasePlayer player)
{
    Puts("OnPlayerSleepEnded works!");
}
```

``` lua
function PLUGIN:OnPlayerSleepEnded(player)
    print("OnPlayerSleepEnded works!")
end
```

``` javascript
OnPlayerSleepEnded: function(player) {
    print("OnPlayerSleepEnded works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnPlayerSleepEnded(self, player):
    print "OnPlayerSleepEnded works!"
```

 * Called when a player awakes
 * No return behavior

## OnRocketLaunched

``` csharp
void OnRocketLaunched(BasePlayer player, BaseEntity entity)
{
    Puts("OnRocketLaunched works!");
}
```

``` lua
function PLUGIN:OnRocketLaunched(player, entity)
    print("OnRocketLaunched works!")
end
```

``` javascript
OnRocketLaunched: function(player, entity) {
    print("OnRocketLaunched works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnRocketLaunched(self, player, entity):
    print "OnRocketLaunched works!"
```

 * Called when a player launches a rocket
 * No return behavior

## OnRunPlayerMetabolism

``` csharp
void OnRunPlayerMetabolism(PlayerMetabolism metabolism)
{
    Puts("OnRunPlayerMetabolism works!");
}
```

``` lua
function PLUGIN:OnRunPlayerMetabolism(metabolism)
    print("OnRunPlayerMetabolism works!")
end
```

``` javascript
OnRunPlayerMetabolism: function(metabolism) {
    print("OnRunPlayerMetabolism works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnRunPlayerMetabolism(self, metabolism):
    print "OnRunPlayerMetabolism works!"
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

``` lua
function PLUGIN:OnNewConnection(connection)
    print("OnNewConnection works!")
end
```

``` javascript
OnNewConnection: function(connection) {
    print("OnNewConnection works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnNewConnection(self, connection):
    print "OnNewConnection works!"
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

``` lua
function PLUGIN:OnUserApprove(connection)
    print("OnUserApprove works!")
end
```

``` javascript
OnUserApprove: function(connection) {
    print("OnUserApprove works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnUserApprove(self, connection):
    print "OnUserApprove works!"
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

``` lua
function PLUGIN:OnWeaponFired(projectile, player, mod, projectiles)
    print("OnWeaponFired works!")
end
```

``` javascript
OnWeaponFired: function(projectile, player, mod, projectiles) {
    print("OnWeaponFired works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnWeaponFired(self, projectile, player, mod, projectiles):
    print "OnWeaponFired works!"
```

 * Called when a player fires a weapon
 * No return behavior

## OnWeaponThrown

``` csharp
void OnWeaponThrown(BasePlayer player, BaseEntity entity)
{
    Puts("OnWeaponThrown works!");
}
```

``` lua
function PLUGIN:OnWeaponThrown(player, entity)
    print("OnWeaponThrown works!")
end
```

``` javascript
OnWeaponThrown: function(player, entity) {
    print("OnWeaponThrown works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnWeaponThrown(self, player, entity):
    print "OnWeaponThrown works!"
```

 * Called when a player throws a weapon (grenade, c4, ...)
 * No return behavior
