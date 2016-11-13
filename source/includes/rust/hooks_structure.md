# Structure Hooks

## CanBuild

``` csharp
void CanBuild(Planner plan, Construction prefab)
{
    Puts("CanBuild works!");
}
```

``` lua
function PLUGIN:CanBuild(player, prefab)
    print("CanBuild works!")
end
```

``` coffeescript
CanBuild: (player, prefab) =>
    print "CanBuild works!"
```

``` javascript
CanBuild: function(player, prefab) {
    print("CanBuild works!");
}
```

``` python
def CanBuild(self, player, prefab):
    print "CanBuild works!"
```

 * Called when the player tries to build something
 * Returning true overrides default behavior

## CanUseLock

``` csharp
void CanUseLock(BasePlayer player, BaseLock @lock)
{
    Puts("CanUseLock works!");
}
```

``` lua
function PLUGIN:CanUseLock(player, lock)
    print("CanUseLock works!")
end
```

``` coffeescript
CanUseLock: (player, lock) =>
    print "CanUseLock works!"
```

``` javascript
CanUseLock: function(player, lock) {
    print("CanUseLock works!");
}
```

``` python
def CanUseLock(self, player, lock):
    print "CanUseLock works!"
```

 * Called when the player tries to use a locked entity
 * Returning true bypasses lock handling, nothing will by default will allow normal handling, returning anything else will reject lock usage

## CanUseLock

``` csharp
void CanUseLock(BasePlayer player, CodeLock @lock)
{
    Puts("CanUseLock works!");
}
```

``` lua
function PLUGIN:CanUseLock(player, lock)
    print("CanUseLock works!")
end
```

``` coffeescript
We need a CoffeeScript example here
```

``` javascript
CanUseLock: function(player, lock) {
    print("CanUseLock works!");
}
```

``` python
def CanUseLock(self, player, lock):
    print "CanUseLock works!"
```

 * Called when the player tries to use a door with a code lock
 * Returning true allows door usage, nothing will by default will allow door usage, returning anything else will reject door usage

## CanUseLock

``` csharp
void CanUseLock(BasePlayer player, KeyLock @lock)
{
    Puts("CanUseLock works!");
}
```

``` lua
function PLUGIN:CanUseLock(player, lock)
    print("CanUseLock works!")
end
```

``` coffeescript
We need a CoffeeScript example here
```

``` javascript
CanUseLock: function(player, lock) {
    print("CanUseLock works!");
}
```

``` python
def CanUseLock(self, player, lock):
    print "CanUseLock works!"
```

 * Called when the player tries to use a door with a key lock
 * Returning true allows door usage, nothing will by default will allow door usage, returning anything else will reject door usage

## OnCupboardClearList

``` csharp
void OnCupboardClearList(BuildingPrivlidge privilege, BasePlayer player)
{
    Puts("OnCupboardClearList works!");
}
```

``` lua
function PLUGIN:OnCupboardClearList(privilege, player)
    print("OnCupboardClearList works!")
end
```

``` coffeescript
We need a CoffeeScript example here
```

``` javascript
OnCupboardClearList: function(privilege, player) {
    print("OnCupboardClearList works!");
}
```

``` python
def OnCupboardClearList(self, privilege, player):
    print "OnCupboardClearList works!"
```

 * Called when an attempt is made to clear a cupboard authorized list
 * Returning true overrides default behavior

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
def OnDoorClosed(self, lock, player):
    print "OnDoorClosed works!"
```

 * Called when the player closed a door
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
def OnDoorOpened(self, lock, player):
    print "OnDoorOpened works!"
```

 * Called when the player opened a door
 * No return behavior

## OnCupboardAuthorize

``` csharp
void OnCupboardAuthorize(BuildingPrivlidge privilege, BasePlayer player)
{
    Puts("OnCupboardAuthorize works!");
}
```

``` lua
function PLUGIN:OnCupboardAuthorize(privilege, player)
    print("OnCupboardAuthorize works!")
end
```

``` coffeescript
We need a CoffeeScript example here
```

``` javascript
OnCupboardAuthorize: function(privilege, player) {
    print("OnCupboardAuthorize works!");
}
```

``` python
def OnCupboardAuthorize(self, privilege, player):
    print "OnCupboardAuthorize works!"
```

 * Called when a cupboard attempts to authorize a player
 * Returning true cancels the authorization

## OnCupboardDeauthorize

``` csharp
void OnCupboardDeauthorize(BuildingPrivlidge privilege, BasePlayer player)
{
    Puts("OnCupboardDeauthorize works!");
}
```

``` lua
function PLUGIN:OnCupboardDeauthorize(privilege, player)
    print("OnCupboardDeauthorize works!")
end
```

``` coffeescript
We need a CoffeeScript example here
```

``` javascript
OnCupboardDeauthorize: function(privilege, player) {
    print("OnCupboardDeauthorize works!");
}
```

``` python
def OnCupboardDeauthorize(self, privilege, player):
    print "OnCupboardDeauthorize works!"
```

 * Called when a cupboard attempts to deauthorize a player
 * Returning true cancels the deauthorization

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
void OnStructureDemolish(BaseCombatEntity entity, BasePlayer player)
{
    Puts("OnStructureDemolish works!");
}
```

``` lua
function PLUGIN:OnStructureDemolish(entity, player)
    print("OnStructureDemolish works!")
end
```

``` coffeescript
We need a CoffeeScript example here
```

``` javascript
OnStructureDemolish: function(entity, player) {
    print("OnStructureDemolish works!");
}
```

``` python
def OnStructureDemolish(self, entity, player):
    print "OnStructureDemolish works!"
```

 * Called when the player selects DemolishImmediate from the BuildingBlock or BaseCombatEntity menu
 * Returning true overrides the demolition

## OnStructureRepair

``` csharp
void OnStructureRepair(BaseCombatEntity entity, BasePlayer player)
{
    Puts("OnStructureRepair works!");
}
```

``` lua
function PLUGIN:OnStructureRepair(entity, player)
    print("OnStructureRepair works!")
end
```

``` coffeescript
We need a CoffeeScript example here
```

``` javascript
OnStructureRepair: function(entity, player) {
    print("OnStructureRepair works!");
}
```

``` python
def OnStructureRepair(self, entity, player):
    print "OnStructureRepair works!"
```

 * Called when the player repairs a BuildingBlock or BaseCombatEntity
 * No return behavior

## OnStructureRotate

``` csharp
void OnStructureRotate(BaseCombatEntity entity, BasePlayer player)
{
    Puts("OnStructureRotate works!");
}
```

``` lua
function PLUGIN:OnStructureRotate(entity, player)
    print("OnStructureRotate works!")
end
```

``` coffeescript
We need a CoffeeScript example here
```

``` javascript
OnStructureRotate: function(entity, player) {
    print("OnStructureRotate works!");
}
```

``` python
def OnStructureRotate(self, entity, player):
    print "OnStructureRotate works!"
```

 * Called when the player rotates a BuildingBlock or BaseCombatEntity
 * No return behavior

## OnStructureUpgrade

``` csharp
void OnStructureUpgrade(BaseCombatEntity entity, BasePlayer player, BuildingGrade.Enum grade)
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

 * Called when the player upgrades the grade of a BuildingBlock or BaseCombatEntity
 * Returning true overrides the upgrade
