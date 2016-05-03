# Structure Hooks

## OnDoorUse

``` csharp
void OnDoorUse(TileEntitySecure door, string steamId)
{
    Puts("OnDoorUse works!");
}
```

``` lua
function PLUGIN:OnDoorUse(door, steamId)
    print("OnDoorUse works!")
end
```

``` coffeescript
OnDoorUse: (door, userid) =>
  print "OnDoorUse works!"
```

``` javascript
OnDoorUse: function(door, steamId) {
  print("OnDoorUse works!");
}
```

``` python
def OnDoorUse(self, door, steamId):
  print "OnDoorUse works!"
```

 * Called when a player tries to use a door
 * Returning true allows door usage, nothing will by default will allow door usage, returning anything else will reject door usage
