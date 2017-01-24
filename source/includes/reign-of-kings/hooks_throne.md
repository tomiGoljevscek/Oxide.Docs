# Throne Hooks

## OnThroneCapture

``` csharp
void OnThroneCapture(AncientThroneCaptureEvent e)
{
    Puts("OnThroneCapture works!");
}

 * Called when a player starts capturing the throne.

## OnThroneCaptured

``` csharp
void OnThroneCaptured(AncientThroneCaptureEvent e)
{
    Puts("OnThroneCaptured works!");
}

 * Called when a player captured the throne.

## OnThroneReleased

``` csharp
void OnThroneReleased(AncientThroneReleaseEvent e)
{
    Puts("OnThroneReleased works!");
}

 * Called when the king dies or renounces the throne.

## OnThroneRename

``` csharp
void OnThroneRename(AncientThroneRenameEvent e)
{
    Puts("OnThroneRename works!");
}

 * Called when the king renames the realm.

## OnThroneTax

``` csharp
void OnThroneTax(AncientThroneTaxEvent e)
{
    Puts("OnThroneTax works!");
}

 * Called when the king changes the tax.
