# Entity Hooks

## OnAirdrop

``` csharp
void OnAirdrop(Vector3 location)
{
    Puts("OnAirdrop works!");
}
```

``` javascript
OnAirdrop: function(location) {
    print("OnAirdrop works!");
}
```

``` lua
function PLUGIN:OnAirdrop(location)
    print("OnAirdrop works!")
end
```

``` python
def OnAirdrop(self, location):
    print "OnAirdrop works!"
```

 * Called from AIAirDrop.md0003
 * Called when an airdrop has been called
 * No return behavior

## OnEntitySpawned

``` csharp
void OnEntitySpawned(Entity entity)
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

 * Called from World.SpawnEntityInWorld
 * Called when an entity has spawned in the world
 * No return behavior

## OnEntityTakeDamage

``` csharp
void OnEntityTakeDamage(EntityAlive entity, DamageSource source)
{
    Puts("OnEntityTakeDamage works!");
}
```

``` javascript
OnEntityTakeDamage: function(entity, source) {
    print("OnEntityTakeDamage works!");
}
```

``` lua
function PLUGIN:OnEntityTakeDamage(entity, source)
    print("OnEntityTakeDamage works!")
end
```

``` python
def OnEntityTakeDamage(self, entity, source):
    print "OnEntityTakeDamage works!"
```

 * Called from EntityAlive.DamageEntity
 * Called when an entity takes damage from another source
 * No return behavior

## OnEntityDeath

``` csharp
void OnEntityDeath(Entity entity, DamageResponse response)
{
    Puts("OnEntityDeath works!");
}
```

``` javascript
OnEntityDeath: function(entity, response) {
    print("OnEntityDeath works!");
}
```

``` lua
function PLUGIN:OnEntityDeath(entity, response)
    print("OnEntityDeath works!")
end
```

``` python
def OnEntityDeath(self, entity, response):
    print "OnEntityDeath works!"
```

 * Called from Entity.OnEntityDeath
 * Called when an entity has died
 * No return behavior
