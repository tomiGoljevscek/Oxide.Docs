# Terrain Hooks

## OnTerrainInitialized

``` csharp
void OnTerrainInitialized()
{
    Puts("OnTerrainInitialized works!");
}
```

``` javascript
OnTerrainInitialized: function() {
    print("OnTerrainInitialized works!");
}
```

``` lua
function PLUGIN:OnTerrainInitialized()
    print("OnTerrainInitialized works!")
end
```

``` python
def OnTerrainInitialized(self):
    print "OnTerrainInitialized works!"
```

 * Called from TerrainMeta.CalculateChecksum
 * Called after the terrain generation process has completed
 * No return behavior
