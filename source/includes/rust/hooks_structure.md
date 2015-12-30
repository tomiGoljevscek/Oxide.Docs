# Structure Hooks

## CanUseDoor

``` csharp
void CanUseDoor(BasePlayer player, BaseLock door)
{
    Puts("CanUseDoor works!");
}
```

``` lua
function PLUGIN:CanUseDoor(player, door)
    print("CanUseDoor works!")
end
```

``` javascript
CanUseDoor: function(player, door) {
    print("CanUseDoor works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def CanUseDoor(self, player, door):
    print "CanUseDoor works!"
```

 * Called from BaseLock.OnTryToOpen and BaseLock.OnTryToClose
 * Called when a player tries to use a locked door
 * Returning true will allow door usage, nothing will by default will allow door usage, returning anything else will reject door usage

## CanUseDoor

``` csharp
void CanUseDoor(BasePlayer player, CodeLock door)
{
    Puts("CanUseDoor works!");
}
```

``` lua
function PLUGIN:CanUseDoor(player, door)
    print("CanUseDoor works!")
end
```

``` javascript
CanUseDoor: function(player, door) {
    print("CanUseDoor works!");
}
```

``` coffeescript
We need a CoffeeScript example here
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
void CanUseDoor(BasePlayer player, KeyLock door)
{
    Puts("CanUseDoor works!");
}
```

``` lua
function PLUGIN:CanUseDoor(player, door)
    print("CanUseDoor works!")
end
```

``` javascript
CanUseDoor: function(player, door) {
    print("CanUseDoor works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def CanUseDoor(self, player, door):
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

``` lua
function PLUGIN:OnDoorClosed(door, player)
    print("OnDoorClosed works!")
end
```

``` javascript
OnDoorClosed: function(door, player) {
    print("OnDoorClosed works!");
}
```

``` coffeescript
We need a CoffeeScript example here
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

``` lua
function PLUGIN:OnDoorOpened(door, player)
    print("OnDoorOpened works!")
end
```

``` javascript
OnDoorOpened: function(door, player) {
    print("OnDoorOpened works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnDoorOpened(self, door, player):
    print "OnDoorOpened works!"
```

 * Called from RustCore.IOnDoorOpened
 * Called when a player opened a door
 * No return behavior

## OnCupboardAuthorize

``` csharp
void OnCupboardAuthorize(BuildingPrivlidge priviledge, BasePlayer player)
{
    Puts("OnCupboardAuthorize works!");
}
```

``` lua
function PLUGIN:OnCupboardAuthorize(priviledge, player)
    print("OnCupboardAuthorize works!")
end
```

``` javascript
OnCupboardAuthorize: function(priviledge, player) {
    print("OnCupboardAuthorize works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnCupboardAuthorize(self, priviledge, player):
    print "OnCupboardAuthorize works!"
```

 * Called from BuildingPrivlidge.AddSelfAuthorize
 * Called when a cupboard attempts to authorize a player
 * Returning a non-null value cancels the authorization

## OnCupboardDeauthorize

``` csharp
void OnCupboardDeauthorize(BuildingPrivlidge priviledge, BasePlayer player)
{
    Puts("OnCupboardAuthorize works!");
}
```

``` lua
function PLUGIN:OnCupboardDeauthorize(priviledge, player)
    print("OnCupboardDeauthorize works!")
end
```

``` javascript
OnCupboardDeauthorize: function(priviledge, player) {
    print("OnCupboardDeauthorize works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnCupboardDeauthorize(self, priviledge, player):
    print "OnCupboardDeauthorize works!"
```

 * Called from BuildingPrivlidge.RemoveSelfAuthorize
 * Called when a cupboard attempts to deauthorize a player
 * Returning a non-null value cancels the deauthorization

## OnEntityBuilt

``` csharp
void OnEntityBuilt(Planner plan, GameObject go)
{
    Puts("OnEntityBuilt works!");
}
```

``` lua
function PLUGIN:OnEntityBuilt(plan, obj)
    print("OnEntityBuilt works!")
end
```

``` javascript
OnEntityBuilt: function(plan, obj) {
    print("OnEntityBuilt works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnEntityBuilt(self, planner, component):
    print "OnEntityBuilt works!"
```

 * Called from Planner.DoBuild
 * Called when any structure is built (walls, ceilings, stairs, etc.)
 * No return behavior

## OnHammerHit

``` csharp
void OnHammerHit(BasePlayer player, HitInfo info)
{
    Puts("OnHammerHit works!");
}
```

``` lua
function PLUGIN:OnHammerHit(player, info)
    print("OnHammerHit works!")
end
```

``` javascript
OnHammerHit: function(player, info) {
    print("OnHammerHit works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnHammerHit(self, player, info):
    print "OnHammerHit works!"
```

 * Called from RustCore.IOnHammerHit
 * Called when the player has hit something with a hammer
 * No return behavior

## OnStructureDemolish

``` csharp
void OnStructureDemolish(BuildingBlock block, BasePlayer player)
{
    Puts("OnStructureDemolish works!");
}
```

``` lua
function PLUGIN:OnStructureDemolish(block, player)
    print("OnStructureDemolish works!")
end
```

``` javascript
OnStructureDemolish: function(block, player) {
    print("OnStructureDemolish works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnStructureDemolish(self, block, player):
    print "OnStructureDemolish works!"
```

 * Called from BuildingBlock.DoImmediateDemolish
 * Called when a player selects DemolishImmediate from the BuildingBlock menu
 * Returning true will cancel the demolition

## OnStructureRepair

``` csharp
void OnStructureRepair(BuildingBlock block, BasePlayer player)
{
    Puts("OnStructureRepair works!");
}
```

``` lua
function PLUGIN:OnStructureRepair(block, player)
    print("OnStructureRepair works!")
end
```

``` javascript
OnStructureRepair: function(block, player) {
    print("OnStructureRepair works!");
}
```

``` coffeescript
We need a CoffeeScript example here
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

``` lua
function PLUGIN:OnStructureRotate(block, player)
    print("OnStructureRotate works!")
end
```

``` javascript
OnStructureRotate: function(block, player) {
    print("OnStructureRotate works!");
}
```

``` coffeescript
We need a CoffeeScript example here
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

``` lua
function PLUGIN:OnStructureUpgrade(block, player, grade)
    print("OnStructureUpgrade works!")
end
```

``` javascript
OnStructureUpgrade: function(block, player, grade) {
    print("OnStructureUpgrade works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnStructureUpgrade(self, block, player, grade):
    print "OnStructureUpgrade works!"
```

 * Called from BuildingBlock.DoUpgradeToGrade
 * Called when a player upgrades the grade of a BuildingBlock
 * Returning true will cancel the upgrade
