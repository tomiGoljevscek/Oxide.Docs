# Resource Gathering Hooks

## OnCollectiblePickup

``` csharp
void OnCollectiblePickup(Item item, BasePlayer player)
{
    Puts("OnCollectiblePickup works!");
}
```

 * Called when the player collects an item
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

## OnDispenserGather

``` csharp
void OnDispenserGather(ResourceDispenser dispenser, BaseEntity entity, Item item)
{
    Puts("OnDispenserGather works!");
}
```

 * Called before the player is given items from a resource
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
