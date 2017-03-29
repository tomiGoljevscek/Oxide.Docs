# Vehicle Hooks

## CanEnterVehicle

``` csharp
void CanEnterVehicle(PlayerSession session, VehiclePassenger vehicle)
{
    Puts("CanEnterVehicle works!");
}
```

 * Called when a player attempts to enter a vehicle
 * Returning a non-null value overrides default behavior

## CanExitVehicle

``` csharp
void CanExitVehicle(PlayerSession session, VehiclePassenger vehicle)
{
    Puts("CanExitVehicle works!");
}
```

 * Called when a player attempts to exit a vehicle
 * Returning true or false overrides default behavior

## OnEnterVehicle

``` csharp
void OnEnterVehicle(PlayerSession session, VehiclePassenger vehicle)
{
    Puts("OnEnterVehicle works!");
}
```

 * Called when a player enters a vehicle
 * No return behavior

## OnExitVehicle

``` csharp
void OnExitVehicle(PlayerSession session, VehiclePassenger vehicle)
{
    Puts("OnExitVehicle works!");
}
```

 * Called when a player exits a vehicle
 * No return behavior
