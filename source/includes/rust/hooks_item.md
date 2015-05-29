# Item Hooks

## OnItemDeployed(Deployer deployer, BaseEntity deployedEntity)
 * Called from Deployer.DoDeploy_Regular and Deployer.DoDeploy_Slot
 * No return behavior
 * Called right after an item has been deployed

## OnItemAddedToContainer(ItemContainer container, Item item)
 * Called from ItemContainer.Insert
 * No return behavior
 * Called right after an item was added to a container
 * An entire stack has to be created, not just adding more wood to a wood stack for example

## OnItemRemovedFromContainer(ItemContainer container, Item item)
 * Called from ItemContainer.Remove
 * No return behavior
 * Called right after an item was removed from a container
 * The entire stack has to be removed for this to be called, not just a little bit

## OnConsumableUse(Item item)
 * Called from Item.UseOneItem
 * No return behavior
 * Called right after a consumable item is used

## OnConsumeFuel(BaseOven oven, Item fuel, ItemModBurnable burnable)
 * Called from BaseOven.ConsumeFuel
 * No return behavior
 * Called right before fuel is used (furnace, lanterns, camp fires, etc.)

## OnLoseCondition(Item item, ref float amount)
 * Called from Item.LoseCondition
 * No return behavior
 * Called right before the condition of the item is modified

## Placeholder

``` csharp
private void Placeholder()
{
    Puts("Placeholder works!");
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

 * Placeholder
