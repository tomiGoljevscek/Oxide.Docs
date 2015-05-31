# Item Hooks

## OnItemCraft

``` csharp
void OnItemCraft(ItemCraftTask item)
{
    Puts("OnItemCraft works!");
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

 * Called from ItemCrafter.CraftItem
 * Return a ItemCraftTask object to modify behavior
 * Called right after an item has started crafting

## OnItemDeployed

``` csharp
void OnItemDeployed(Deployer deployer, BaseEntity deployedEntity)
{
    Puts("OnItemDeployed works!");
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

 * Called from Deployer.DoDeploy_Regular and Deployer.DoDeploy_Slot
 * No return behavior
 * Called right after an item has been deployed

## OnItemAddedToContainer

``` csharp
void OnItemAddedToContainer(ItemContainer container, Item item)
{
    Puts("OnItemAddedToContainer works!");
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

 * Called from ItemContainer.Insert
 * No return behavior
 * Called right after an item was added to a container
 * An entire stack has to be created, not just adding more wood to a wood stack for example

## OnItemRemovedFromContainer

``` csharp
void OnItemRemovedFromContainer(ItemContainer container, Item item)
{
    Puts("OnItemRemovedFromContainer works!");
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

 * Called from ItemContainer.Remove
 * No return behavior
 * Called right after an item was removed from a container
 * The entire stack has to be removed for this to be called, not just a little bit

## OnGather

``` csharp
void OnGather(ResourceDispenser dispenser, BaseEntity entity, Item item)
{
    Puts("OnGather works!");
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

 * Called from ResourceDispenser.GiveResourceFromItem
 * No return behavior
 * Called before the player is given items from a resource

## OnConsumableUse

``` csharp
void OnConsumableUse(Item item)
{
    Puts("OnConsumableUse works!");
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

 * Called from Item.UseOneItem
 * No return behavior
 * Called right after a consumable item is used

## OnConsumeFuel

``` csharp
void OnConsumeFuel(BaseOven oven, Item fuel, ItemModBurnable burnable)
{
    Puts("OnConsumeFuel works!");
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

 * Called from BaseOven.ConsumeFuel
 * No return behavior
 * Called right before fuel is used (furnace, lanterns, camp fires, etc.)

## OnLoseCondition

``` csharp
void OnLoseCondition(Item item, ref float amount)
{
    Puts("OnLoseCondition works!");
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

 * Called from Item.LoseCondition
 * No return behavior
 * Called right before the condition of the item is modified
