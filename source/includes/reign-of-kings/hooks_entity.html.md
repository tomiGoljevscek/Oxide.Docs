# Entity Hooks

## OnEntityHealthChange

``` csharp
void OnEntityHealthChange(EntityDamageEvent evt)
{
    Puts("OnEntityHealthChange works!");
}
```

 * Called when an entity's health changes
 * No return behavior

## OnEntityDeath

``` csharp
void OnEntityDeath(EntityDeathEvent evt)
{
    Puts("OnEntityDeath works!");
}
```

 * Called when an entity dies
 * No return behavior
