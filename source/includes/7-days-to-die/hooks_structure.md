# Structure Hooks

## OnDoorUse

``` csharp
void OnDoorUse(TileEntitySecure door, string steamId)
{
    Puts("OnDoorUse works!");
}
```

 * Called when the player tries to use a door
 * Returning true allows door usage, nothing will by default will allow door usage, returning anything else will reject door usage
