# Entity Hooks

## OnAirdrop

``` csharp
void OnAirdrop(CargoPlane plane, Vector3 location)
{
    Puts("OnAirdrop works!");
}
```
``` javascript
OnAirdrop: function(plane, location) {
    print("OnAirdrop works!");
}
```

``` lua
function PLUGIN:OnAirdrop(plane, location)
    print("OnAirdrop works!")
end
```

``` python
def OnAirdrop(self, plane, location):
    print "OnAirdrop works!"
```

 * Called from CargoPlane.UpdateDropPosition
 * Called when an airdrop has been called
 * No return behavior

## OnEntityDeath

``` csharp
void OnEntityDeath(BaseCombatEntity entity, HitInfo info)
{
    Puts("OnEntityDeath works!");
}
```

``` javascript
OnEntityDeath: function(entity, info) {
    print("OnEntityDeath works!");
}
```

``` lua
function PLUGIN:OnEntityDeath(entity, info)
    print("OnEntityDeath works!")
end
```

``` python
def OnEntityDeath(self, entity, info):
    print "OnEntityDeath works!"
```

 * Called from BaseCombatEntity.Die
 * hitInfo might be null, check it before use
 * Editing hitInfo has no effect because the death has already happened
 * No return behavior

## OnEntityEnter

``` csharp
void OnEntityEnter(TriggerBase trigger, BaseEntity entity) {
    Puts("OnEntityEnter works!");
}
```

``` javascript
OnEntityEnter: function(trigger, entity) {
    print("OnEntityEnter works!");
}
```

``` lua
function PLUGIN:OnEntityEnter(trigger, entity)
    print("OnEntityEnter works!")
end
```

``` python
def OnEntityEnter(self, trigger, entity):
    print "OnEntityEnter works!"
```

 * Called from TriggerBase.OnEntityEnter
 * Called when an entity enters an area/zone (building privilege zone, water area, radiation zone, hurt zone, etc.)
 * No return behavior

## OnEntityGroundMissing

``` csharp
void OnEntityGroundMissing(BaseEntity entity)
{
    Puts("OnEntityGroundMissing works!");
}
```

``` javascript
OnEntityGroundMissing: function(entity) {
    print("OnEntityGroundMissing works!");
}
```

``` lua
function PLUGIN:OnEntityGroundMissing(entity)
    print("OnEntityGroundMissing works!")
end
```

``` python
def OnEntityGroundMissing(self, entity):
    print "OnEntityGroundMissing works!"
```

 * Called from DestroyOnGroundMissing.OnGroundMissing
 * Called when an entity (sleepingbag, sign, furnace,...) is going to be destroyed because the buildingblock it is on was removed
 * Returning a non-null value overides default server behavior

## OnEntitySpawned

``` csharp
void OnEntitySpawned(BaseNetworkable entity)
{
    Puts("OnEntitySpawned works!");
}
```

``` javascript
OnEntitySpawned: function(entity) {
    print("OnEntitySpawned works!");
}
```

``` lua
function PLUGIN:OnEntitySpawned(entity)
    print("OnEntitySpawned works!")
end
```

``` python
def OnEntitySpawned(self, entity):
    print "OnEntitySpawned works!"
```

 * Called from BaseNetworkable.Spawn
 * Called after any networked entity has spawned (including trees)
 * No return behavior

## OnEntityTakeDamage

``` csharp
void OnEntityTakeDamage(BaseCombatEntity entity, HitInfo info)
{
    Puts("OnEntityTakeDamage works!");
}
```

``` javascript
OnEntityTakeDamage: function(entity, info) {
    print("OnEntityTakeDamage works!");
}
```

``` lua
function PLUGIN:OnEntityTakeDamage(entity, info)
    print("OnEntityTakeDamage works!")
end
```

``` python
def OnEntityTakeDamage(self, entity, info):
    print "OnEntityTakeDamage works!"
```

 * Called from BaseCombatEntity.Hurt
 * Alternatively, modify the hitInfo object to change the damage
 * It should be okay to set the damage to 0, but if you don't return non-null, the player's client will receive a damage indicator (if entity is a BasePlayer)
 * hitInfo has all kinds of useful things in it, such as hitInfo.Weapon, hitInfo.damageAmount or hitInfo.damageType
 * Returning a non-null value overrides default server behavior (useful for godmode etc.)

## OnEntityLeave

``` csharp
void OnEntityLeave(TriggerBase trigger, BaseEntity entity)
{
    Puts("OnEntityLeave works!");
}
```

``` javascript
OnEntityLeave: function(trigger, entity) {
    print("OnEntityLeave works!");
}
```

``` lua
function PLUGIN:OnEntityLeave(trigger, entity)
    print("OnEntityLeave works!")
end
```

``` python
def OnEntityLeave(self, trigger, entity):
    print "OnEntityLeave works!"
```

 * Called from TriggerBase.OnEntityLeave
 * Called when an entity leaves an area/zone (building privilege zone, water area, radiation zone, hurt zone, etc.)
 * No return behavior

## OnResourceDepositCreated

``` csharp
void OnResourceDepositCreated(ResourceDepositManager.ResourceDeposit deposit)
{
    Puts("OnResourceDepositCreated works!");
}
```

``` javascript
OnResourceDepositCreated: function(deposit) {
    print("OnResourceDepositCreated works!");
}
```

``` lua
function PLUGIN:OnResourceDepositCreated(deposit)
    print("OnResourceDepositCreated works!")
end
```

``` python
def OnResourceDepositCreated(self, deposit):
    print "OnResourceDepositCreated works!"
```

 * Called from ResourceDepositManager.CreateFromPosition
 * Called when a resource deposit has been created
 * No return behavior
