# Entity Hooks

## OnAirdrop

``` csharp
void OnAirdrop(Vector3 position)
{
    Puts("OnAirdrop works!");
}
```

 * Called when an airdrop has been called
 * No return behavior

## OnHurt

``` csharp
void OnHurt(TakeDamage damage, DamageEvent evt)
{
    Puts("OnHurt works!");
}
```

 * Called when any kind of entity takes damage
 * No return behavior

## OnKilled

``` csharp
void OnKilled(TakeDamage damage, DamageEvent evt)
{
    Puts("OnKilled works!");
}
```

 * Called when any kind of entity was killed
 * No return behavior
