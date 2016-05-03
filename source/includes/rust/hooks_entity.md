# Entity Hooks

## OnAirdrop

``` csharp
void OnAirdrop(CargoPlane plane, Vector3 location)
{
    Puts("OnAirdrop works!");
}
```

``` lua
function PLUGIN:OnAirdrop(plane, location)
    print("OnAirdrop works!")
end
```

``` coffeescript
OnAirdrop: (plane, location) =>
  print "OnAirdrop works!"
```

``` javascript
OnAirdrop: function(plane, location) {
  print("OnAirdrop works!");
}
```

``` python
def OnAirdrop(self, plane, location):
  print "OnAirdrop works!"
```

 * Called when an airdrop has been called
 * No return behavior

## OnEntityDeath

``` csharp
void OnEntityDeath(BaseCombatEntity entity, HitInfo info)
{
    Puts("OnEntityDeath works!");
}
```

``` lua
function PLUGIN:OnEntityDeath(entity, info)
    print("OnEntityDeath works!")
end
```

``` javascript
OnEntityDeath: function(entity, info) {
    print("OnEntityDeath works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnEntityDeath(self, entity, info):
    print "OnEntityDeath works!"
```

 * hitInfo might be null, check it before use
 * Editing hitInfo has no effect because the death has already happened
 * No return behavior

## OnEntityEnter

``` csharp
void OnEntityEnter(TriggerBase trigger, BaseEntity entity)
{
    Puts("OnEntityEnter works!");
}
```

``` lua
function PLUGIN:OnEntityEnter(trigger, entity)
    print("OnEntityEnter works!")
end
```

``` javascript
OnEntityEnter: function(trigger, entity) {
    print("OnEntityEnter works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnEntityEnter(self, trigger, entity):
    print "OnEntityEnter works!"
```

 * Called when an entity enters an area/zone (building privilege zone, water area, radiation zone, hurt zone, etc.)
 * No return behavior

## OnEntityGroundMissing

``` csharp
void OnEntityGroundMissing(BaseEntity entity)
{
    Puts("OnEntityGroundMissing works!");
}
```

``` lua
function PLUGIN:OnEntityGroundMissing(entity)
    print("OnEntityGroundMissing works!")
end
```

``` javascript
OnEntityGroundMissing: function(entity) {
    print("OnEntityGroundMissing works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnEntityGroundMissing(self, entity):
    print "OnEntityGroundMissing works!"
```

 * Called when an entity (sleepingbag, sign, furnace,...) is going to be destroyed because the buildingblock it is on was removed
 * Returning true overides default behavior

## OnEntityLeave

``` csharp
void OnEntityLeave(TriggerBase trigger, BaseEntity entity)
{
    Puts("OnEntityLeave works!");
}
```

``` lua
function PLUGIN:OnEntityLeave(trigger, entity)
    print("OnEntityLeave works!")
end
```

``` javascript
OnEntityLeave: function(trigger, entity) {
    print("OnEntityLeave works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnEntityLeave(self, trigger, entity):
    print "OnEntityLeave works!"
```

 * Called when an entity leaves an area/zone (building privilege zone, water area, radiation zone, hurt zone, etc.)
 * No return behavior

## OnEntitySpawned

``` csharp
void OnEntitySpawned(BaseNetworkable entity)
{
    Puts("OnEntitySpawned works!");
}
```

``` lua
function PLUGIN:OnEntitySpawned(entity)
    print("OnEntitySpawned works!")
end
```

``` javascript
OnEntitySpawned: function(entity) {
    print("OnEntitySpawned works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnEntitySpawned(self, entity):
    print "OnEntitySpawned works!"
```

 * Called after any networked entity has spawned (including trees)
 * No return behavior

## OnEntityTakeDamage

``` csharp
void OnEntityTakeDamage(BaseCombatEntity entity, HitInfo info)
{
    Puts("OnEntityTakeDamage works!");
}
```

``` lua
function PLUGIN:OnEntityTakeDamage(entity, info)
    print("OnEntityTakeDamage works!")
end
```

``` javascript
OnEntityTakeDamage: function(entity, info) {
    print("OnEntityTakeDamage works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnEntityTakeDamage(self, entity, info):
    print "OnEntityTakeDamage works!"
```

 * Alternatively, modify the hitInfo object to change the damage
 * It should be okay to set the damage to 0, but if you don't return non-null, the player's client will receive a damage indicator (if entity is a BasePlayer)
 * hitInfo has all kinds of useful things in it, such as hitInfo.Weapon, hitInfo.damageAmount or hitInfo.damageType
 * Returning true overrides default behavior (useful for godmode etc.)

## OnHelicopterTarget

``` csharp
void OnHelicopterTarget(HelicopterTurret turret, BaseCombatEntity entity)
{
    Puts("OnHelicopterTarget works!");
}
```

``` lua
function PLUGIN:OnHelicopterTarget(turret, BaseCombatEntity entity)
    print("OnHelicopterTarget works!")
end
```

``` javascript
OnHelicopterTarget: function(turret, BaseCombatEntity entity) {
    print("OnHelicopterTarget works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnHelicopterTarget(self, turret, BaseCombatEntity entity):
    print "OnHelicopterTarget works!"
```

 * Called when a helicopter attempts to target an entity
 * Returning true overrides default behavior

## OnResourceDepositCreated

``` csharp
void OnResourceDepositCreated(ResourceDepositManager.ResourceDeposit deposit)
{
    Puts("OnResourceDepositCreated works!");
}
```

``` lua
function PLUGIN:OnResourceDepositCreated(deposit)
    print("OnResourceDepositCreated works!")
end
```

``` javascript
OnResourceDepositCreated: function(deposit) {
    print("OnResourceDepositCreated works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnResourceDepositCreated(self, deposit):
    print "OnResourceDepositCreated works!"
```

 * Called when a resource deposit has been created
 * No return behavior

## OnTurretTarget

``` csharp
void OnTurretTarget(AutoTurret turret, BaseCombatEntity entity)
{
    Puts("OnTurretTarget works!");
}
```

``` lua
function PLUGIN:OnTurretTarget(turret, BaseCombatEntity entity)
    print("OnTurretTarget works!")
end
```

``` javascript
OnTurretTarget: function(turret, BaseCombatEntity entity) {
    print("OnTurretTarget works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnTurretTarget(self, turret, BaseCombatEntity entity):
    print "OnTurretTarget works!"
```

 * Called when an autoturret attempts to target an entity
 * Returning true overrides default behavior
