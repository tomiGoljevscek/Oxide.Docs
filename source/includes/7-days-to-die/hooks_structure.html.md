---
title: Structure Hooks
---

# Structure Hooks

## CanUseDoor

``` csharp
bool CanUseDoor(TileEntitySecure door)
{
    Puts("CanUseDoor works!");
    return true;
}
```

 * Called when the player tries to use a door
 * Returning true allows door usage, nothing will by default will allow door usage, returning anything else will reject door usage
