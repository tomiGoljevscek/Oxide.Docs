# Entity Hooks

## OnAirdrop

``` csharp
void OnAirdrop(AIAirDrop airdrop, Vector3 location)
{
    Puts("OnAirdrop works!");
}
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

 * Called when an entity has spawned in the world
 * No return behavior

## OnEntityTakeDamage

``` csharp
void OnEntityTakeDamage(EntityAlive entity, DamageSource source)
{
    Puts("OnEntityTakeDamage works!");
}
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

 * Called when an entity has died
 * No return behavior
