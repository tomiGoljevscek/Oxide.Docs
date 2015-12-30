# Entity Hooks

## OnAirdrop

``` csharp
void OnAirdrop(Vector3 position)
{
    Puts("OnAirdrop works!");
}
```

``` lua
We need a Lua example here
```

``` javascript
We need a JavaScript example here
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
We need a Python example here
```

 * Called from SupplyDropZone.CallAirDropAt
 * No return behavior
 * Called when an airdrop has been called

## OnHurt

``` csharp
void OnHurt(TakeDamage takeDamage, DamageEvent damage)
{
    Puts("OnHurt works!");
}
```

``` lua
We need a Lua example here
```

``` javascript
We need a JavaScript example here
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
We need a Python example here
```

 * Called from RustLegacyCore.OnProcessDamageEvent
 * No return behavior
 * Called when any kind of entity takes damage

## OnKilled

``` csharp
void OnKilled(TakeDamage takeDamage, DamageEvent damage)
{
    Puts("OnKilled works!");
}
```

``` lua
We need a Lua example here
```

``` javascript
We need a JavaScript example here
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
We need a Python example here
```

 * Called from RustLegacyCore.OnProcessDamageEvent
 * No return behavior
 * Called when any kind of entity was killed
