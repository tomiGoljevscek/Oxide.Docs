# Structure Hooks

## OnStructureBuilt

``` csharp
void OnStructureBuilt(StructureComponent component, IStructureComponentItem item)
{
    Puts("OnStructureBuilt works!");
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

 * Called from StructureComponentDataBlock.DoAction1
 * No return behavior
 * Called when an structure was built by a player

## OnStructureDecay

``` csharp
void OnStructureDecay(StructureMaster master)
{
    Puts("OnStructureDecay works!");
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

 * Called from StructureMaster.DoDecay
 * Returning a non-null value overrides default behavior
 * Called when a structure tries to decay

## OnDoorToggle

``` csharp
void OnDoorToggle(BasicDoor door, ulong timestamp, Controllable controllable)
{
    Puts("OnDoorToggle works!");
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

 * Called from BasicDoor.ToggleStateServer
 * Returning true allows the state of the door to be toggled and returning false denies the state of the door being toggled, returning anything else will resume default behavior
 * Called when a player attempts to open or close a door
