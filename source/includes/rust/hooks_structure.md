# Structure Hooks

## CanOpenDoor(BasePlayer player, BaseLock lock)
 * Called from BaseLock.OnTryToOpen and BaseLock.OnTryToClose
 * Returning true will allow door usage, nothing will by default will allow door usage, returning anything else will reject door usage

## CanOpenDoor(BasePlayer player, CodeLock lock)
 * Called from CodeLock.OnTryToOpen and CodeLock.OnTryToClose
 * Returning true will allow door usage, nothing will by default will allow door usage, returning anything else will reject door usage

## CanOpenDoor(BasePlayer player, KeyLock lock)
 * Called from KeyLock.OnTryToOpen and KeyLock.OnTryToClose
 * Returning true will allow door usage, nothing will by default will allow door usage, returning anything else will reject door usage

## OnEntityBuilt(Planner planner, UnityEngine/GameObject component)
 * Called from Planner.DoBuild
 * No return behavior
 * Called when any structure is built (walls, ceilings, stairs, etc.)

## OnBuildingBlockUpgrade(BuildingBlock block, BasePlayer player, BuildingGrade.Enum grade)
 * Called from BuildingBlock.DoUpgradeToGrade
 * Returning a BuildingGrade.Enum grade will change the grade that will be upgraded to
 * Called when a player upgrades the grade of a BuildingBlock

## OnBuildingBlockRotate(BuildingBlock block, BasePlayer player)
 * Called from BuildingBlock.DoRotation
 * No return behavior
 * Called when a player rotates a BuildingBlock

## OnBuildingBlockDemolish(BuildingBlock block, BasePlayer player)
 * Called from BuildingBlock.DoImmediateDemolish
 * Return true to cancel
 * Called when a player selects DemolishImmediate from the BuildingBlock menu

## Placeholder

``` csharp
private void Placeholder()
{
    Puts("Placeholder works!");
}
```

``` javascript
We need a JavaScript example here
```

``` lua
We need a Lua example here
```

``` python
We need a Python example here
```

 * Placeholder
