# Structure Hooks

## CanUseDoor

``` csharp
void CanUseDoor(BasePlayer player, BaseLock lock)
{
    Puts("CanUseDoor works!");
}
```

``` javascript
CanUseDoor: function(player, lock) {
    print("CanUseDoor works!");
}
```

``` lua
function PLUGIN:CanUseDoor(player, lock)
    print("CanUseDoor works!")
end
```

``` python
def CanUseDoor(self, player, lock):
    print "CanUseDoor works!"
```

 * Called from BaseLock.OnTryToOpen and BaseLock.OnTryToClose
 * Called when a player tries to use a locked door
 * Returning true will allow door usage, nothing will by default will allow door usage, returning anything else will reject door usage

## CanUseDoor

``` csharp
void CanUseDoor(BasePlayer player, CodeLock lock)
{
    Puts("CanUseDoor works!");
}
```

``` javascript
CanUseDoor: function(player, lock) {
    print("CanUseDoor works!");
}
```

``` lua
function PLUGIN:CanUseDoor(player, lock)
    print("CanUseDoor works!")
end
```

``` python
def CanUseDoor(self, player, door):
    print "CanUseDoor works!"
```

 * Called from CodeLock.OnTryToOpen and CodeLock.OnTryToClose
 * Called when a player tries to use a door with a code lock
 * Returning true will allow door usage, nothing will by default will allow door usage, returning anything else will reject door usage

## CanUseDoor

``` csharp
void CanUseDoor(BasePlayer player, KeyLock lock)
{
    Puts("CanUseDoor works!");
}
```

``` javascript
CanUseDoor: function(player, lock) {
    print("CanUseDoor works!");
}
```

``` lua
function PLUGIN:CanUseDoor(player, lock)
    print("CanUseDoor works!")
end
```

``` python
def CanUseDoor(self, player, lock):
    print "CanUseDoor works!"
```

 * Called from KeyLock.OnTryToOpen and KeyLock.OnTryToClose
 * Called when a player tries to use a door with a key lock
 * Returning true will allow door usage, nothing will by default will allow door usage, returning anything else will reject door usage

## OnDoorClosed

``` csharp
void OnDoorClosed(Door door, BasePlayer player)
{
    Puts("OnDoorClosed works!");
}
```

``` javascript
OnDoorClosed: function(door, player) {
    print("OnDoorClosed works!");
}
```

``` lua
function PLUGIN:OnDoorClosed(door, player)
    print("OnDoorClosed works!")
end
```

``` python
def OnDoorClosed(self, door, player):
    print "OnDoorClosed works!"
```

 * Called from RustCore.IOnDoorClosed
 * Called when a player closed a door
 * No return behavior

## OnDoorOpened

``` csharp
void OnDoorOpened(Door door, BasePlayer player)
{
    Puts("OnDoorOpened works!");
}
```

``` javascript
OnDoorOpened: function(door, player) {
    print("OnDoorOpened works!");
}
```

``` lua
function PLUGIN:OnDoorOpened(door, player)
    print("OnDoorOpened works!")
end
```

``` python
def OnDoorOpened(self, door, player):
    print "OnDoorOpened works!"
```

 * Called from RustCore.IOnDoorOpened
 * Called when a player opened a door
 * No return behavior

## OnEntityBuilt

``` csharp
void OnEntityBuilt(Planner planner, UnityEngine/GameObject component)
{
    Puts("OnEntityBuilt works!");
}
```

``` javascript
OnEntityBuilt: function(planner, component) {
    print("OnEntityBuilt works!");
}
```

``` lua
function PLUGIN:OnEntityBuilt(planner, component)
    print("OnEntityBuilt works!")
end
```

``` python
def OnEntityBuilt(self, planner, component):
    print "OnEntityBuilt works!"
```

 * Called from Planner.DoBuild
 * Called when any structure is built (walls, ceilings, stairs, etc.)
 * No return behavior

## OnStructureDemolish

``` csharp
void OnStructureDemolish(BuildingBlock block, BasePlayer player)
{
    Puts("OnStructureDemolish works!");
}
```

``` javascript
OnStructureDemolish: function(block, player) {
    print("OnStructureDemolish works!");
}
```

``` lua
function PLUGIN:OnStructureDemolish(block, player)
    print("OnStructureDemolish works!")
end
```

``` python
def OnStructureDemolish(self, block, player):
    print "OnStructureDemolish works!"
```

 * Called from BuildingBlock.DoImmediateDemolish
 * Called when a player selects DemolishImmediate from the BuildingBlock menu
 * Return true to cancel

## OnStructureRepair

``` csharp
void OnStructureRepair(BuildingBlock block, BasePlayer player)
{
    Puts("OnStructureRepair works!");
}
```

``` javascript
OnStructureRepair: function(block, player) {
    print("OnStructureRepair works!");
}
```

``` lua
function PLUGIN:OnStructureRepair(block, player)
    print("OnStructureRepair works!")
end
```

``` python
def OnStructureRepair(self, block, player):
    print "OnStructureRepair works!"
```

 * Called from BuildingBlock.DoRepair
 * Called when a player repairs a BuildingBlock
 * No return behavior

## OnStructureRotate

``` csharp
void OnStructureRotate(BuildingBlock block, BasePlayer player)
{
    Puts("OnStructureRotate works!");
}
```

``` javascript
OnStructureRotate: function(block, player) {
    print("OnStructureRotate works!");
}
```

``` lua
function PLUGIN:OnStructureRotate(block, player)
    print("OnStructureRotate works!")
end
```

``` python
def OnStructureRotate(self, block, player):
    print "OnStructureRotate works!"
```

 * Called from BuildingBlock.DoRotation
 * Called when a player rotates a BuildingBlock
 * No return behavior

## OnStructureUpgrade

``` csharp
void OnStructureUpgrade(BuildingBlock block, BasePlayer player, BuildingGrade.Enum grade)
{
    Puts("OnStructureUpgrade works!");
}
```

``` javascript
OnStructureUpgrade: function(block, player, grade) {
    print("OnStructureUpgrade works!");
}
```

``` lua
function PLUGIN:OnStructureUpgrade(block, player, grade)
    print("OnStructureUpgrade works!")
end
```

``` python
def OnStructureUpgrade(self, block, player, grade):
    print "OnStructureUpgrade works!"
```

 * Called from BuildingBlock.DoUpgradeToGrade
 * Called when a player upgrades the grade of a BuildingBlock
 * Returning a BuildingGrade.Enum grade will change the grade that will be upgraded to
