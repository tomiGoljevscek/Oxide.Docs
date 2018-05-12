# Structure Hooks

## OnCubePlacement

``` csharp
void OnCubePlacement(CubePlaceEvent evt)
{
    Puts("OnCubePlacement works!");
}
```

 * Called when a cube is being placed
 * No return behavior

## OnCubeTakeDamage

``` csharp
void OnCubeTakeDamage(CubeDamageEvent evt)
{
    Puts("OnCubeTakeDamage works!");
}
```

 * Called when a cube is taking damage
 * No return behavior

## OnCubeDestroyed

``` csharp
void OnCubeDestroy(CubeDestroyEvent evt)
{
    Puts("OnCubeDestroyed works!");
}
```

 * Called when a cube is going to be destroyed
 * No return behavior
