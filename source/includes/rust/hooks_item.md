# Item Hooks

## CanAcceptItem

``` csharp
void CanAcceptItem(ItemContainer container, Item item)
{
    Puts("CanAcceptItem works!");
}
```

 * Called when attempting to put an item in a container
 * Returning true overrides default behavior

## OnBlueprintReveal

``` csharp
void OnBlueprintReveal(Item item, BasePlayer player)
{
    Puts("OnBlueprintReveal works!");
}
```

 * Called when the player attempts to reveal a blueprint
 * Returning true overrides default behavior

## OnBlueprintRevealed

``` csharp
void OnBlueprintRevealed(Item item, Item revealed, BasePlayer player)
{
    Puts("OnBlueprintRevealed works!");
}
```

 * Called when the player has revealed a blueprint
 * No return behavior

## OnConsumableUse

``` csharp
void OnConsumableUse(Item item)
{
    Puts("OnConsumableUse works!");
}
```

 * Called right after a consumable item is used
 * No return behavior
 
## OnConsumeFuel

``` csharp
void OnConsumeFuel(BaseOven oven, Item fuel, ItemModBurnable burnable)
{
    Puts("OnConsumeFuel works!");
}
```

 * Called right before fuel is used (furnace, lanterns, camp fires, etc.)
 * No return behavior

## OnDispenserGather

``` csharp
void OnDispenserGather(ResourceDispenser dispenser, BaseEntity entity, Item item)
{
    Puts("OnDispenserGather works!");
}
```

 * Called before the player is given items from a resource
 * No return behavior

## OnHealingItemUse

``` csharp
void OnHealingItemUse(HeldEntity item, BasePlayer target)
{
    Puts("OnHealingItemUse works!");
}
```

 * Called right before a Syringe or Medkit item is used
 * Returning true overrides default behavior

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
void OnItemCraft(ItemCraftTask item)
{
    Puts("OnItemCraft works!");
}
```

 * Called right after an item is added to the crafting queue
 * Return an ItemCraftTask object to modify behavior or outcome

## OnItemCraftCancelled

``` csharp
void OnItemCraftCancelled(ItemCraftTask task)
{
    Puts("OnItemCraftCancelled works!");
}
```

 * Called before an item has been crafted
 * Returning true overrides default behavior

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

## OnCollectiblePickup

``` csharp
void OnCollectiblePickup(Item item, BasePlayer player)
{
    Puts("OnCollectiblePickup works!");
}
```

 * Called when the player collects an item
 * No return behavior

## OnItemResearch

``` csharp
void OnItemResearch(Item item, BasePlayer player)
{
    Puts("OnItemResearch works!");
}
```

 * Called right before a player begins to research an item
 * Returning true overrides default behavior

## OnItemResearchEnd

``` csharp
void OnItemResearchEnd(ResearchTable table, float chance)
{
    Puts("OnItemResearchEnd works!");
    return chance;
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

## OnItemSplit

``` csharp
void OnItemSplit(Item item, int amount)
{
    Puts("OnItemSplit works!");
}
```

 * Called right before an item is split into multiple stacks
 * No return behavior

## OnItemUpgrade

``` csharp
void OnItemUpgrade(Item item, Item upgraded, BasePlayer player)
{
    Puts("OnItemUpgrade works!");
}
```

 * Called right before an item is upgraded
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

## OnCropGather

``` csharp
void OnCropGather(PlantEntity plant, Item item, BasePlayer player)
{
    Puts("OnCropGather works!");
}
```

 * Called when the player gathers a plant
 * No return behavior

## OnQuarryEnabled

``` csharp
void OnQuarryEnabled(MiningQuarry quarry)
{
    Puts("OnQuarryEnabled works!");
}
```

 * Called when a mining quarry is turned on/enabled
 * No return behavior

## OnQuarryGather

``` csharp
void OnQuarryGather(MiningQuarry quarry, Item item)
{
    Puts("OnQuarryGather works!");
}
```

 * Called before items are gathered from a quarry
 * No return behavior

## OnSurveyGather

``` csharp
void OnSurveyGather(SurveyCharge survey, Item item)
{
    Puts("OnSurveyGather works!");
}
```

 * Called before items are gathered from a survey charge
 * No return behavior

## OnTrapArm

``` csharp
void OnTrapArm(BearTrap trap, BasePlayer player)
{
    Puts("OnTrapArm works!");
}
```

 * Called when the player arms a bear trap
 * No return behavior

## OnTrapDisarm

``` csharp
void OnTrapDisarm(Landmine trap, BasePlayer player)
{
    Puts("OnTrapDisarm works!");
}
```

 * Called when the player disarms a land mine
 * No return behavior

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
void OnTrapTrigger(BaseTrap trap, GameObject go)
{
    Puts("OnTrapTrigger works!");
}
```

 * Called when a trap is triggered by a game object
 * No return behavior
