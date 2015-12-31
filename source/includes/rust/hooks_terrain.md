# Terrain Hooks

## OnTerrainInitialized

``` csharp
void OnTerrainInitialized()
{
    Puts("OnTerrainInitialized works!");
}
```

``` lua
function PLUGIN:OnTerrainInitialized()
    print("OnTerrainInitialized works!")
end
```

``` coffeescript
OnTerrainInitialized: ->
  print "OnTerrainInitialized works!"
```

``` javascript
OnTerrainInitialized: function() {
  print("OnTerrainInitialized works!");
}
```

``` python
def OnTerrainInitialized(self):
  print "OnTerrainInitialized works!"
```

 * Called after the terrain generation process has completed
 * No return behavior
