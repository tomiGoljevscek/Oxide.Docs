# Resource Gathering Hooks

## OnCollectiblePickup

``` csharp
void OnCollectiblePickup(LootOnPickup node, WorldItemInteractServer player, List<ItemInstance> items)
{
    Puts("OnCollectiblePickup works!");
}
```

 * Called when the player collects an item
 * No return behavior

## OnDispenserGather

``` csharp
void OnDispenserGather(GameObject resourceNode, HurtMonoBehavior player, List<ItemInstance> items)
{
    Puts("OnDispenserGather works!");
}
```

 * Called before the player is given items from a resource node
 * No return behavior

## OnPlantGather

``` csharp
void OnPlantGather(GrowingPlantUsable plant, WorldItemInteractServer player, List<ItemInstance> items)
{
    Puts("OnPlantGather works!");
}
```

 * Called before the player is given items from a plant
 * No return behavior
