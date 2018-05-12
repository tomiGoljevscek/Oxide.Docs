---
title: Resource Gathering Hooks
---

# Resource Gathering Hooks

## OnCollectiblePickup

``` csharp
object OnCollectiblePickup(Item item, BasePlayer player)
{
    Puts("OnCollectiblePickup works!");
    return null;
}
```

 * Called when the player collects an item
 * Returning a non-null value overrides default behavior

## OnCropGather

``` csharp
object OnCropGather(PlantEntity plant, Item item, BasePlayer player)
{
    Puts("OnCropGather works!");
    return null;
}
```

 * Called when the player gathers a plant
 * Returning a non-null value overrides default behavior

## OnDispenserBonus

``` csharp
object OnDispenserBonus(ResourceDispenser dispenser, BasePlayer player, Item item)
{
    Puts("OnDispenserBonus works!");
    return null;
}
```

 * Called before the player is given a bonus item for gathering
 * Returning a non-null value overrides default behavior

## OnDispenserGather

``` csharp
object OnDispenserGather(ResourceDispenser dispenser, BaseEntity entity, Item item)
{
    Puts("OnDispenserGather works!");
    return null;
}
```

 * Called before the player is given items from a resource
 * Returning a non-null value overrides default behavior

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
