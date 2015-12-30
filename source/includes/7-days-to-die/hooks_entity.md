# Entity Hooks

## OnAirdrop

``` csharp
void OnAirdrop(Vector3 location)
{
    Puts("OnAirdrop works!");
}
```

``` lua
function PLUGIN:OnAirdrop(location)
    print("OnAirdrop works!")
end
```

``` javascript
OnAirdrop: function(location) {
    print("OnAirdrop works!");
}
```

``` coffeescript
We need a CoffeeScript example here
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

``` lua
function PLUGIN:OnEntityTakeDamage(entity, source)
    print("OnEntityTakeDamage works!")
end
```

``` javascript
OnEntityTakeDamage: function(entity, source) {
    print("OnEntityTakeDamage works!");
}
```

``` coffeescript
We need a CoffeeScript example here
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

``` lua
function PLUGIN:OnEntityDeath(entity, response)
    print("OnEntityDeath works!")
end
```

``` javascript
OnEntityDeath: function(entity, response) {
    print("OnEntityDeath works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnEntityDeath(self, entity, response):
    print "OnEntityDeath works!"
```

 * Called from Entity.OnEntityDeath
 * Called when an entity has died
 * No return behavior
