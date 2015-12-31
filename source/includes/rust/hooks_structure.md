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

``` coffeescript
CanUseDoor: (player, door) =>
  print "CanUseDoor works!"
```

``` javascript
CanUseDoor: function(player, door) {
  print("CanUseDoor works!");
}
```

``` python
def CanUseDoor(self, player, door):
  print "CanUseDoor works!"
```

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

``` coffeescript
We need a CoffeeScript example here
```

``` javascript
CanUseDoor: function(player, door) {
    print("CanUseDoor works!");
}
```

``` python
def CanUseDoor(self, player, door):
    print "CanUseDoor works!"
```

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

``` coffeescript
We need a CoffeeScript example here
```

``` javascript
CanUseDoor: function(player, door) {
    print("CanUseDoor works!");
}
```

``` python
def CanUseDoor(self, player, door):
    print "CanUseDoor works!"
```

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

``` coffeescript
We need a CoffeeScript example here
```

``` javascript
OnDoorClosed: function(door, player) {
    print("OnDoorClosed works!");
}
```

``` python
def OnDoorClosed(self, door, player):
    print "OnDoorClosed works!"
```

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

``` coffeescript
We need a CoffeeScript example here
```

``` javascript
OnDoorOpened: function(door, player) {
    print("OnDoorOpened works!");
}
```

``` python
def OnDoorOpened(self, door, player):
    print "OnDoorOpened works!"
```

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

``` coffeescript
We need a CoffeeScript example here
```

``` javascript
OnCupboardAuthorize: function(priviledge, player) {
    print("OnCupboardAuthorize works!");
}
```

``` python
def OnCupboardAuthorize(self, priviledge, player):
    print "OnCupboardAuthorize works!"
```

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

``` coffeescript
We need a CoffeeScript example here
```

``` javascript
OnCupboardDeauthorize: function(priviledge, player) {
    print("OnCupboardDeauthorize works!");
}
```

``` python
def OnCupboardDeauthorize(self, priviledge, player):
    print "OnCupboardDeauthorize works!"
```

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

``` coffeescript
We need a CoffeeScript example here
```

``` javascript
OnEntityBuilt: function(plan, obj) {
    print("OnEntityBuilt works!");
}
```

``` python
def OnEntityBuilt(self, planner, component):
    print "OnEntityBuilt works!"
```

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

``` coffeescript
We need a CoffeeScript example here
```

``` javascript
OnHammerHit: function(player, info) {
    print("OnHammerHit works!");
}
```

``` python
def OnHammerHit(self, player, info):
    print "OnHammerHit works!"
```

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

``` coffeescript
We need a CoffeeScript example here
```

``` javascript
OnStructureDemolish: function(block, player) {
    print("OnStructureDemolish works!");
}
```

``` python
def OnStructureDemolish(self, block, player):
    print "OnStructureDemolish works!"
```

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

``` coffeescript
We need a CoffeeScript example here
```

``` javascript
OnStructureRepair: function(block, player) {
    print("OnStructureRepair works!");
}
```

``` python
def OnStructureRepair(self, block, player):
    print "OnStructureRepair works!"
```

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

``` coffeescript
We need a CoffeeScript example here
```

``` javascript
OnStructureRotate: function(block, player) {
    print("OnStructureRotate works!");
}
```

``` python
def OnStructureRotate(self, block, player):
    print "OnStructureRotate works!"
```

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

``` coffeescript
We need a CoffeeScript example here
```

``` javascript
OnStructureUpgrade: function(block, player, grade) {
    print("OnStructureUpgrade works!");
}
```

``` python
def OnStructureUpgrade(self, block, player, grade):
    print "OnStructureUpgrade works!"
```

 * Called when a player upgrades the grade of a BuildingBlock
 * Returning true will cancel the upgrade
