# Entity Hooks

## OnEntitySpawned

``` csharp
void OnEntitySpawned(BaseNetworkable entity)
{
    Puts("OnEntitySpawned works!");
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

 * Called from BaseNetworkable.Spawn
 * No return behavior
 * Called after any networked entity has spawned (including trees)

## OnEntityTakeDamage

``` csharp
void OnEntityTakeDamage(BaseCombatEntity entity, HitInfo hitInfo)
{
    Puts("OnEntityTakeDamage works!");
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

 * Called from BaseCombatEntity.Hurt
 * Returning non-null value overrides default server behavior (useful for godmode etc.)
 * Alternatively, modify the hitInfo object to change the damage
 * It should be okay to set the damage to 0, but if you don't return non-null, the player's client will receive a damage indicator (if entity is a BasePlayer)
 * hitInfo has all kinds of useful things in it, such as hitInfo.Weapon, hitInfo.damageAmount or hitInfo.damageType

## OnEntityDeath

``` csharp
void OnEntityDeath(BaseCombatEntity entity, HitInfo hitInfo)
{
    Puts("OnEntityDeath works!");
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

 * Called from BaseCombatEntity.Die
 * No return behavior
 * hitInfo might be null, check it before use
 * Editing hitInfo has no effect because the death has already happened

## OnEntityEnter

``` csharp
void OnEntityEnter(TriggerBase triggerBase, BaseEntity entity)
{
    Puts("OnEntityEnter works!");
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

 * Called from TriggerBase.OnEntityEnter
 * No return behavior
 * Called when an entity enters an area/zone (building privilege zone, water area, radiation zone, hurt zone, etc.)

## OnEntityLeave

``` csharp
void OnEntityLeave(TriggerBase triggerBase, BaseEntity entity)
{
    Puts("OnEntityLeave works!");
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

 * Called from TriggerBase.OnEntityLeave
 * No return behavior
 * Called when an entity leaves an area/zone (building privilege zone, water area, radiation zone, hurt zone, etc.)

## OnEntityGroundMissing

``` csharp
void OnEntityGroundMissing(BaseEntity entity)
{
    Puts("OnEntityGroundMissing works!");
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

 * Called from DestroyOnGroundMissing.OnGroundMissing
 * Returning non-null value ovverides default server behavior
 * Called when an entity (sleepingbag, sign, furnace,...) is going to be destroyed because the buildingblock it is on was removed
