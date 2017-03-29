# Structure Hooks

## CanUseDoubleDoor

``` csharp
void CanUseDoubleDoor(PlayerSession session, DoubleDoorServer door)
{
    Puts("CanUseDoubleDoor works!");
}
```

 * Called when a player attempts to open a double door
 * Returning true or false overrides default behavior

## CanUseGarageDoor

``` csharp
void CanUseGarageDoor(PlayerSession session, GarageDoorServer door)
{
    Puts("CanUseGarageDoor works!");
}
```

 * Called when a player attempts to open a garage door
 * Returning true or false overrides default behavior

## CanUsePillboxDoor

``` csharp
void CanUsePillboxDoor(PlayerSession session, DoorPillboxServer door)
{
    Puts("CanUsePillboxDoor works!");
}
```

 * Called when a player attempts to open a pillbox door
 * Returning true or false overrides default behavior

## CanUseSingleDoor

``` csharp
void CanUseSingleDoor(PlayerSession session, SingleDoorServer door)
{
    Puts("CanUseSingleDoor works!");
}
```

 * Called when a player attempts to open a single door
 * Returning true or false overrides default behavior

## OnDoubleDoorUsed

``` csharp
void OnDoubleDoorUsed(PlayerSession session, DoubleDoorServer door)
{
    Puts("OnDoubleDoorUsed works!");
}
```

 * Called when a player opened a double door
 * No return behavior

## OnGarageDoorUsed

``` csharp
void OnGarageDoorUsed(PlayerSession session, GarageDoorServer door)
{
    Puts("OnGarageDoorUsed works!");
}
```

 * Called when a player opened a garage door
 * No return behavior

## OnSingleDoorUsed

``` csharp
void OnSingleDoorUsed(PlayerSession session, SingleDoorServer door)
{
    Puts("OnSingleDoorUsed works!");
}
```

 * Called when a player opened a single door
 * No return behavior
