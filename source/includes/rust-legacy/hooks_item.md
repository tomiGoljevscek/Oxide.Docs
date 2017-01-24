# Item Hooks

## OnItemAdded

``` csharp
void OnItemAdded(Inventory inventory, int slot, IInventoryItem item)
{
    Puts("OnItemAdded works!");
}
```

 * Called when an item was added to an inventory
 * No return behavior

## OnItemRemoved

``` csharp
void OnItemRemoved(Inventory inventory, int slot, IInventoryItem item)
{
    Puts("OnItemRemoved works!");
}
```

 * Called when an item was removed from an inventory
 * No return behavior

## OnItemDeployed

``` csharp
void OnItemDeployed(DeployableObject deployable, IDeployableItem item)
{
    Puts("OnItemDeployed works!");
}
```

 * Called when an item was deployed by a player
 * No return behavior
