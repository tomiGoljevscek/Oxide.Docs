# Structure Hooks

## OnStructureBuilt

``` csharp
void OnStructureBuilt(StructureComponent component, IStructureComponentItem item)
{
    Puts("OnStructureBuilt works!");
}
```

``` lua
function PLUGIN:OnStructureBuilt(component, item)
    print("OnStructureBuilt works!")
end
```

``` coffeescript
OnStructureBuilt: (component, item) =>
  print "OnStructureBuilt works!"
```

``` javascript
OnStructureBuilt: function(component, item) {
  print("OnStructureBuilt works!");
}
```

``` python
def OnStructureBuilt(self, component, item):
  print "OnStructureBuilt works!"
```

 * Called when an structure was built by a player
 * No return behavior

## OnStructureDecay

``` csharp
void OnStructureDecay(StructureMaster master)
{
    Puts("OnStructureDecay works!");
}
```

``` lua
We need a Lua example here
```

``` coffeescript
We need a CoffeeScript example here
```

``` javascript
We need a JavaScript example here
```

``` python
We need a Python example here
```

 * Called when a structure tries to decay
 * Returning a non-null value overrides default behavior

## OnDoorToggle

``` csharp
void OnDoorToggle(BasicDoor door, ulong timestamp, Controllable controllable)
{
    Puts("OnDoorToggle works!");
}
```

``` lua
function PLUGIN:OnDoorToggle(door, timestamp, controllable)
    print("OnDoorToggle works!")
end
```

``` coffeescript
OnDoorToggle: (door, timestamp, controllable) =>
  print "OnDoorToggle works!"
```

``` javascript
OnDoorToggle: function(door, timestamp, controllable) {
  print("OnDoorToggle works!");
}
```

``` python
def OnDoorToggle(self, door, timestamp, controllable):
  print "OnDoorToggle works!"
```

 * Called when a player attempts to open or close a door
 * Returning true allows the state of the door to be toggled and returning false denies the state of the door being toggled, returning anything else will resume default behavior
