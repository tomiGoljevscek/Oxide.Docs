# Structure Hooks

## OnStructureBuilt

``` csharp
void OnStructureBuilt(StructureComponent component, IStructureComponentItem item)
{
    Puts("OnStructureBuilt works!");
}
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

 * Called when a structure tries to decay
 * Returning true overrides default behavior

## OnDoorToggle

``` csharp
void OnDoorToggle(BasicDoor door, ulong timestamp, Controllable controllable)
{
    Puts("OnDoorToggle works!");
}
```

 * Called when the player attempts to open or close a door
 * Returning true allows the state of the door to be toggled and returning false denies the state of the door being toggled, returning anything else will resume default behavior
