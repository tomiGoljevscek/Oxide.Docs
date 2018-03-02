# Item Hooks

## OnItemDrop

``` csharp
void OnItemDrop(Inventory inventory, int slot)
{
    Puts("OnItemDrop works!");
}
```

 * Called when an item is about to be dropped from an inventory
 * Returning a non-null value overrides default behavior

## OnItemEquipped

``` csharp
void OnItemEquipped(ItemInstance item, EquippedHandlerServer player, int slot)
{
    Puts("OnItemEquipped works!");
}
```

 * Called when an item is equipped into a gear slot
 * No return behavior

## OnItemPickup

``` csharp
void OnItemPickup(IStorable inventory, WorldItemInteractServer player)
{
    Puts("OnItemPickup works!");
}
```

 * Called when an item is picked up
 * No return behavior

## OnItemSelected

``` csharp
void OnItemSelected(ItemInstance item, EquippedHandlerServer player, int slot, byte sessionId)
{
    Puts("OnItemSelected works!");
}
```

 * Called when a player selected an item on the action bar
 * No return behavior
