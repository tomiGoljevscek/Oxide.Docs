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

``` coffeescript
OnAirdrop: (location) =>
    print "OnAirdrop works!"
```

``` javascript
OnAirdrop: function(location) {
    print("OnAirdrop works!");
}
```

``` python
def OnAirdrop(self, location):
    print "OnAirdrop works!"
```

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

``` coffeescript
OnEntitySpawned: (entity) =>
    print "OnEntitySpawned works!"
```

``` javascript
OnEntitySpawned: function(entity) {
    print("OnEntitySpawned works!");
}
```

``` python
def OnEntitySpawned(self, entity):
    print "OnEntitySpawned works!"
```

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

``` coffeescript
OnEntityTakeDamage: (entity, source) =>
    print "OnEntityTakeDamage works!"
```

``` javascript
OnEntityTakeDamage: function(entity, source) {
    print("OnEntityTakeDamage works!");
}
```

``` python
def OnEntityTakeDamage(self, entity, source):
    print "OnEntityTakeDamage works!"
```

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

``` coffeescript
OnEntityDeath: (entity, response) =>
    print "OnEntityDeath works!"
```

``` javascript
OnEntityDeath: function(entity, response) {
    print("OnEntityDeath works!");
}
```

``` python
def OnEntityDeath(self, entity, response):
    print "OnEntityDeath works!"
```

 * Called when an entity has died
 * No return behavior
