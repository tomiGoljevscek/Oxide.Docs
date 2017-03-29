# Entity Hooks

## OnEntityDeath

``` csharp
void OnEntityDeath(AnimalStatManager stats, EntityEffectSourceData source)
{
    Puts("OnEntityDeath works!");
}
```

 * Called when an entity has died
 * No return behavior

## OnEntitySpawned

``` csharp
void OnEntitySpawned(NetworkViewData data)
{
    Puts("OnEntitySpawned works!");
}
```

 * Called when an entity has spawned
 * No return behavior

## OnEntityTakeDamage

``` csharp
void OnEntityTakeDamage(AIEntity entity, EntityEffectSourceData source)
{
    Puts("OnEntityTakeDamage works!");
}
```

 * Called when an entity is about to take damage
 * No return behavior
