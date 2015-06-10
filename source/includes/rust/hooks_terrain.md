# Terrain Hooks

## OnTerrainInitialized

``` csharp
void OnTerrainInitialized()
{
    Puts("OnTerrainInitialized works!");
}
```

``` javascript
OnTerrainInitialized: function()
{
    print("OnTerrainInitialized works!");
}
```

``` lua
We need a Lua example here
```

``` python
We need a Python example here
```

 * Called from InitializePVT.Apply
 * No return behavior
 * Called after the terrain generation process has completed
