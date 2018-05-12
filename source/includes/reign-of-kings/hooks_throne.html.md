# Throne Hooks

## OnThroneCapture

``` csharp
void OnThroneCapture(AncientThroneCaptureEvent evt)
{
    Puts("OnThroneCapture works!");
}
```

 * Called when a player starts capturing the throne
 * No return behavior

## OnThroneCaptured

``` csharp
void OnThroneCaptured(AncientThroneCaptureEvent evt)
{
    Puts("OnThroneCaptured works!");
}
```

 * Called when a player captured the throne
 * No return behavior

## OnThroneReleased

``` csharp
void OnThroneReleased(AncientThroneReleaseEvent evt)
{
    Puts("OnThroneReleased works!");
}
```

 * Called when the king dies or renounces the throne
 * No return behavior

## OnThroneRename

``` csharp
void OnThroneRename(AncientThroneRenameEvent evt)
{
    Puts("OnThroneRename works!");
}
```

 * Called when the king renames the realm
 * No return behavior

## OnThroneTax

``` csharp
void OnThroneTax(AncientThroneTaxEvent evt)
{
    Puts("OnThroneTax works!");
}
```

 * Called when the king changes the tax
 * No return behavior
