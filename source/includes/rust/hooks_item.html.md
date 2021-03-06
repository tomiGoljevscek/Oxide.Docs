---
title: Item Hooks
---

# Item Hooks

## CanAcceptItem

``` csharp
ItemContainer.CanAcceptResult CanAcceptItem(ItemContainer container, Item item, int targetPos)
{
    Puts("CanAcceptItem works!");
    return null;
}
```

 * Called when attempting to put an item in a container
 * Returning a CanAcceptResult enum value overrides default behavior

## CanCombineDroppedItem

``` csharp
bool CanCombineDroppedItem(DroppedItem item, DroppedItem targetItem)
{
    Puts("CanCombineDroppedItem works!");
    return true;
}
```

 * Called when an item is dropped on another item
 * Returning true or false overrides default behavior

## CanMoveItem

``` csharp
object CanMoveItem(Item item, PlayerInventory playerLoot, uint targetContainer, int targetSlot)
{
    Puts("CanMoveItem works!");
    return null;
}
```

 * Called when moving an item from one inventory slot to another
 * Returning a non-null value overrides default behavior

## CanStackItem

``` csharp
bool CanStackItem(Item item, Item targetItem)
{
    Puts("CanStackItem works!");
    return true;
}
```

 * Called when moving an item onto another item
 * Returning true or false overrides default behavior

## OnConsumeFuel

``` csharp
void OnConsumeFuel(BaseOven oven, Item fuel, ItemModBurnable burnable)
{
    Puts("OnConsumeFuel works!");
}
```

 * Called right before fuel is used (furnace, lanterns, camp fires, etc.)
 * No return behavior

## OnContainerDropItems

``` csharp
void OnContainerDropItems(ItemContainer container)
{
    Puts("OnContainerDropItems works!");
}
```

 * Called when an item is dropped from a container
 * No return behavior

## OnFindBurnable

``` csharp
Item OnFindBurnable(BaseOven oven)
{
    Puts("OnFindBurnable works!");
    return null;
}
```

 * Called when looking for fuel for the oven
 * Returning an Item overrides default behavior

## OnHealingItemUse

``` csharp
object OnHealingItemUse(MedicalTool tool, BasePlayer player)
{
    Puts("OnHealingItemUse works!");
    return null;
}
```

 * Called when a player attempts to use a medical tool
 * Returning a non-null value overrides default behavior

## OnItemAction

``` csharp
object OnItemAction(Item item, string action, BasePlayer player)
{
    Puts("OnItemAction works!");
    return null;
}
```

 * Called when a button is clicked on an item in the inventory (drop, unwrap, ...)
 * Returning a non-null value overrides default behavior

## OnItemAddedToContainer

``` csharp
void OnItemAddedToContainer(ItemContainer container, Item item)
{
    Puts("OnItemAddedToContainer works!");
}
```

 * Called right after an item was added to a container
 * An entire stack has to be created, not just adding more wood to a wood stack for example
 * No return behavior

## OnItemCraft

``` csharp
bool OnItemCraft(ItemCraftTask item)
{
    Puts("OnItemCraft works!");
    return true;
}
```

 * Called right after an item is added to the crafting queue
 * Returning true or false overrides default behavior

## OnItemCraftCancelled

``` csharp
void OnItemCraftCancelled(ItemCraftTask task)
{
    Puts("OnItemCraftCancelled works!");
}
```

 * Called before an item has been crafted
 * No return behavior

## OnItemCraftFinished

``` csharp
void OnItemCraftFinished(ItemCraftTask task, Item item)
{
    Puts("OnItemCraftFinished works!");
}
```

 * Called right after an item has been crafted
 * No return behavior

## OnItemDeployed

``` csharp
void OnItemDeployed(Deployer deployer, BaseEntity entity)
{
    Puts("OnItemDeployed works!");
}
```

 * Called right after an item has been deployed
 * No return behavior

## OnItemDropped

``` csharp
void OnItemDropped(Item item, BaseEntity entity)
{
    Puts("OnItemDropped works!");
}
```

 * Called right after an item has been dropped
 * No return behavior

## OnItemPickup

``` csharp
object OnItemPickup(Item item, BasePlayer player)
{
    Puts("OnItemPickup works!");
    return null;
}
```

 * Called right after an item has been picked up
 * Returning a non-null value overrides default behavior

## OnItemRemovedFromContainer

``` csharp
void OnItemRemovedFromContainer(ItemContainer container, Item item)
{
    Puts("OnItemRemovedFromContainer works!");
}
```

 * Called right after an item was removed from a container
 * The entire stack has to be removed for this to be called, not just a little bit
 * No return behavior

## OnItemRepair

``` csharp
void OnItemRepair(BasePlayer player, Item item)
{
    Puts("OnItemRepair works!");
}
```

 * Called right before an item is repaired
 * No return behavior

## OnItemResearch

``` csharp
void OnItemResearch(ResearchTable table, Item, targetItem, BasePlayer player)
{
    Puts("OnItemResearch works!");
}
```

 * Called right before a player begins to research an item
 * No return behavior

## OnItemResearched

``` csharp
float OnItemResearched(ResearchTable table, float chance)
{
    Puts("OnItemResearched works!");
    return 1;
}
```

 * Called right before a player finishes researching an item
 * Returning a float will affect if researching is successful or not

## OnItemResearchStart

``` csharp
void OnItemResearchStart(ResearchTable table)
{
    Puts("OnItemResearchStart works!");
}
```

 * Called when the player has started researching an item
 * No return behavior

## OnItemScrap

``` csharp
object OnItemScrap(ResearchTable table, Item item)
{
    Puts("OnItemResearchStart works!");
    return null;
}
```

 * Called when an item is being scrapped at a research table
 * Returning a non-null value overrides default behavior

## OnItemSplit

``` csharp
Item OnItemSplit(Item item, int amount)
{
    Puts("OnItemSplit works!");
    return null;
}
```

 * Called right before an item is split into multiple stacks
 * Returning an Item overrides default behavior

## OnItemUpgrade

``` csharp
void OnItemUpgrade(Item item, Item upgraded, BasePlayer player)
{
    Puts("OnItemUpgrade works!");
}
```

 * Called right before an item is upgraded
 * No return behavior

## OnItemUse

``` csharp
void OnItemUse(Item item, int amountToUse)
{
    Puts("OnItemUse works!");
}
```

 * Called when an item is used
 * No return behavior

## OnLoseCondition

``` csharp
void OnLoseCondition(Item item, ref float amount)
{
    Puts("OnLoseCondition works!");
}
```

 * Called right before the condition of the item is modified
 * No return behavior

## OnMaxStackable

``` csharp
int OnMaxStackable(Item item)
{
    Puts("OnMaxStackable works!");
    return 1;
}
```

 * Called when an items max stackable is calculated
 * Returning a numeric value (int) overrides the default value

## OnTrapArm

``` csharp
object OnTrapArm(BearTrap trap, BasePlayer player)
{
    Puts("OnTrapArm works!");
    return null;
}
```

 * Called when the player arms a bear trap
 * Returning a non-null value overrides default behavior

## OnTrapDisarm

``` csharp
object OnTrapDisarm(Landmine trap, BasePlayer player)
{
    Puts("OnTrapDisarm works!");
    return null;
}
```

 * Called when the player disarms a land mine
 * Returning a non-null value overrides default behavior

## OnTrapSnapped

``` csharp
void OnTrapSnapped(BaseTrapTrigger trap, GameObject go)
{
    Puts("OnTrapSnapped works!");
}
```

 * Called when a trap is triggered by a game object
 * No return behavior

## OnTrapTrigger

``` csharp
object OnTrapTrigger(BaseTrap trap, GameObject go)
{
    Puts("OnTrapTrigger works!");
    return null;
}
```

 * Called when a trap is triggered by a game object
 * Returning a non-null value overrides default behavior
