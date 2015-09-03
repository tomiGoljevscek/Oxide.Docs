# Structure Hooks

## OnDoorUse

``` csharp
void OnDoorUse(TileEntitySecure door, string steamId)
{
    Puts("OnDoorUse works!");
}
```

``` javascript
OnDoorUse: function(door, steamId) {
    print("OnDoorUse works!");
}
```

``` lua
function PLUGIN:OnDoorUse(door, steamId)
    print("OnDoorUse works!")
end
```

``` python
def OnDoorUse(self, door, steamId):
    print "OnDoorUse works!"
```

 * Called from TileEntitySecure.IsUserAllowed
 * Called when a player tries to use a door
 * Returning true will allow door usage, nothing will by default will allow door usage, returning anything else will reject door usage
