# Structure Hooks

## CanUseDoor

``` csharp
void CanUseDoor(BasePlayer player, BaseLock lock)
{
    Puts("CanUseDoor works!");
}
```

``` javascript
CanUseDoor: function(player, lock)
{
    print("CanUseDoor works!");
}
```

``` lua
We need a Lua example here
```

``` python
We need a Python example here
```

 * Called from BaseLock.OnTryToOpen and BaseLock.OnTryToClose
 * Returning true will allow door usage, nothing will by default will allow door usage, returning anything else will reject door usage

## CanUseDoor

``` csharp
void CanUseDoor(BasePlayer player, CodeLock lock)
{
    Puts("CanUseDoor works!");
}
```

``` javascript
CanUseDoor: function(player, lock)
{
    print("CanUseDoor works!");
}
```

``` lua
We need a Lua example here
```

``` python
We need a Python example here
```

 * Called from CodeLock.OnTryToOpen and CodeLock.OnTryToClose
 * Returning true will allow door usage, nothing will by default will allow door usage, returning anything else will reject door usage

## CanUseDoor

``` csharp
void CanUseDoor(BasePlayer player, KeyLock lock)
{
    Puts("CanUseDoor works!");
}
```

``` javascript
CanUseDoor: function(player, lock)
{
    print("CanUseDoor works!");
}
```

``` lua
We need a Lua example here
```

``` python
We need a Python example here
```

 * Called from KeyLock.OnTryToOpen and KeyLock.OnTryToClose
 * Returning true will allow door usage, nothing will by default will allow door usage, returning anything else will reject door usage

## OnEntityBuilt

``` csharp
void OnEntityBuilt(Planner planner, UnityEngine/GameObject component)
{
    Puts("OnEntityBuilt works!");
}
```

``` javascript
OnEntityBuilt: function(planner, component)
{
    print("OnEntityBuilt works!");
}
```

``` lua
We need a Lua example here
```

``` python
We need a Python example here
```

 * Called from Planner.DoBuild
 * No return behavior
 * Called when any structure is built (walls, ceilings, stairs, etc.)

## OnBuildingBlockUpgrade

``` csharp
void OnBuildingBlockUpgrade(BuildingBlock block, BasePlayer player, BuildingGrade.Enum grade)
{
    Puts("OnBuildingBlockUpgrade works!");
}
```

``` javascript
OnBuildingBlockUpgrade: function(block, player, grade)
{
    print("OnBuildingBlockUpgrade works!");
}
```

``` lua
We need a Lua example here
```

``` python
We need a Python example here
```

 * Called from BuildingBlock.DoUpgradeToGrade
 * Returning a BuildingGrade.Enum grade will change the grade that will be upgraded to
 * Called when a player upgrades the grade of a BuildingBlock

## OnBuildingBlockRotate

``` csharp
void OnBuildingBlockRotate(BuildingBlock block, BasePlayer player)
{
    Puts("OnBuildingBlockRotate works!");
}
```

``` javascript
OnBuildingBlockRotate: function(block, player)
{
    print("OnBuildingBlockRotate works!");
}
```

``` lua
We need a Lua example here
```

``` python
We need a Python example here
```

 * Called from BuildingBlock.DoRotation
 * No return behavior
 * Called when a player rotates a BuildingBlock

## OnBuildingBlockDemolish

``` csharp
void OnBuildingBlockDemolish(BuildingBlock block, BasePlayer player)
{
    Puts("OnBuildingBlockDemolish works!");
}
```

``` javascript
OnBuildingBlockDemolish: function(block, player)
{
    print("OnBuildingBlockDemolish works!");
}
```

``` lua
We need a Lua example here
```

``` python
We need a Python example here
```

 * Called from BuildingBlock.DoImmediateDemolish
 * Return true to cancel
 * Called when a player selects DemolishImmediate from the BuildingBlock menu
