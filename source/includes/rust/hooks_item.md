# Item Hooks

## CanAcceptItem

``` csharp
void CanAcceptItem(ItemContainer container, Item item)
{
    Puts("CanAcceptItem works!");
}
```

``` lua
function PLUGIN:CanAcceptItem(container, item)
    print("CanAcceptItem works!")
end
```

``` javascript
CanAcceptItem: function(container, item) {
    print("CanAcceptItem works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def CanAcceptItem(self, container, item):
    print "CanAcceptItem works!"
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

``` lua
function PLUGIN:OnBlueprintReveal(item)
    print("OnBlueprintReveal works!")
end
```

``` javascript
OnBlueprintReveal: function(item) {
    print("OnBlueprintReveal works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnBlueprintReveal(self, item):
    print "OnBlueprintReveal works!"
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

``` lua
function PLUGIN:OnBlueprintRevealed(item)
    print("OnBlueprintRevealed works!")
end
```

``` javascript
OnBlueprintRevealed: function(item) {
    print("OnBlueprintRevealed works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnBlueprintRevealed(self, item):
    print "OnBlueprintRevealed works!"
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

``` lua
function PLUGIN:OnConsumableUse(item)
    print("OnConsumableUse works!")
end
```

``` javascript
OnConsumableUse: function(item) {
    print("OnConsumableUse works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnConsumableUse(self, item):
    print "OnConsumableUse works!"
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

``` lua
function PLUGIN:OnConsumeFuel(oven, fuel, burnable)
    print("OnConsumeFuel works!")
end
```

``` javascript
OnConsumeFuel: function(oven, fuel, burnable) {
    print("OnConsumeFuel works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnConsumeFuel(self, oven, fuel, burnable):
    print "OnConsumeFuel works!"
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

``` lua
function PLUGIN:OnDispenserGather(dispenser, entity, item)
    print("OnDispenserGather works!")
end
```

``` javascript
OnDispenserGather: function(dispenser, entity, item) {
    print("OnDispenserGather works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnDispenserGather(self, dispenser, entity, item):
    print "OnDispenserGather works!"
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

``` lua
function PLUGIN:OnHealingItemUse(item, target)
    print("OnHealingItemUse works!")
end
```

``` javascript
OnHealingItemUse: function(item, target) {
    print("OnHealingItemUse works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnHealingItemUse(self, item, target):
    print "OnHealingItemUse works!"
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

``` lua
function PLUGIN:OnItemAddedToContainer(container, item)
    print("OnItemAddedToContainer works!")
end
```

``` javascript
OnItemAddedToContainer: function(container, item) {
    print("OnItemAddedToContainer works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnItemAddedToContainer(self, container, item):
    print "OnItemAddedToContainer works!"
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

``` lua
function PLUGIN:OnItemCraft(item)
    print("OnItemCraft works!")
end
```

``` javascript
OnItemCraft: function(item) {
    print("OnItemCraft works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnItemCraft(self, item):
    print "OnItemCraft works!"
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

``` lua
function PLUGIN:OnItemCraftCancelled(task)
    print("OnItemCraftCancelled works!")
end
```

``` javascript
OnItemCraftCancelled: function(task) {
    print("OnItemCraftCancelled works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnItemCraftCancelled(self, task):
    print "OnItemCraftCancelled works!"
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

``` lua
function PLUGIN:OnItemCraftFinished(task, item)
    print("OnItemCraftFinished works!")
end
```

``` javascript
OnItemCraftFinished: function(task, item) {
    print("OnItemCraftFinished works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnItemCraftFinished(self, task, item):
    print "OnItemCraftFinished works!"
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

``` lua
function PLUGIN:OnItemDeployed(deployer, entity)
    print("OnItemDeployed works!")
end
```

``` javascript
OnItemDeployed: function(deployer, entity) {
    print("OnItemDeployed works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnItemDeployed(self, deployer, entity):
    print "OnItemDeployed works!"
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

``` lua
function PLUGIN:OnCollectiblePickup(item, player)
    print("OnCollectiblePickup works!")
end
```

``` javascript
OnCollectiblePickup: function(item, player) {
    print("OnCollectiblePickup works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnCollectiblePickup(self, item, player):
    print "OnCollectiblePickup works!"
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

``` lua
function PLUGIN:OnItemResearch(item, player)
    print("OnItemResearch works!")
end
```

``` javascript
OnItemResearch: function(item, player) {
    print("OnItemResearch works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnItemResearch(self, item, player):
    print "OnItemResearch works!"
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

``` lua
function PLUGIN:OnItemResearchEnd(table, chance)
    print("OnItemResearchEnd works!")
    return chance
end
```

``` javascript
OnItemResearchEnd: function(table, chance) {
    print("OnItemResearchEnd works!");
    return chance;
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnItemResearchEnd(self, table, chance):
    print "OnItemResearchEnd works!"
    return chance
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

``` lua
function PLUGIN:OnItemResearchStart(table)
    print("OnItemResearchStart works!")
end
```

``` javascript
OnItemResearchStart: function(table) {
    print("OnItemResearchStart works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnItemResearchStart(self, table):
    print "OnItemResearchStart works!"
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

``` lua
function PLUGIN:OnItemRemovedFromContainer(container, item)
    print("OnItemRemovedFromContainer works!")
end
```

``` javascript
OnItemRemovedFromContainer: function(container, item) {
    print("OnItemRemovedFromContainer works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnItemRemovedFromContainer(self, container, item):
    print "OnItemRemovedFromContainer works!"
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

``` lua
function PLUGIN:OnItemSplit(item, amount)
    print("OnItemSplit works!")
end
```

``` javascript
OnItemSplit: function(item, amount) {
    print("OnItemSplit works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnItemSplit(self, item, amount):
    print "OnItemSplit works!"
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

``` lua
function PLUGIN:OnItemUpgrade(item, upgraded, player)
    print("OnItemUpgrade works!")
end
```

``` javascript
OnItemUpgrade: function(item, upgraded, player) {
    print("OnItemUpgrade works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnItemUpgrade(self, item, upgraded, player):
    print "OnItemUpgrade works!"
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

``` lua
function PLUGIN:OnLoseCondition(item, amount)
    print("OnLoseCondition works!")
end
```

``` javascript
OnLoseCondition: function(item, amount) {
    print("OnLoseCondition works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnLoseCondition(self, item, amount):
    print "OnLoseCondition works!"
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

``` lua
function PLUGIN:OnCropGather(plant, item, player)
    print("OnCropGather works!")
end
```

``` javascript
OnCropGather: function(plant, item, player) {
    print("OnCropGather works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnCropGather(self, plant, item, player):
    print "OnCropGather works!"
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

``` lua
function PLUGIN:OnQuarryEnabled(quarry)
    print("OnQuarryEnabled works!")
end
```

``` javascript
OnQuarryEnabled: function(quarry) {
    print("OnQuarryEnabled works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnQuarryEnabled(self, quarry):
    print "OnQuarryEnabled works!"
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

``` lua
function PLUGIN:OnQuarryGather(quarry, item)
    print("OnQuarryGather works!")
end
```

``` javascript
OnQuarryGather: function(quarry, item) {
    print("OnQuarryGather works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnQuarryGather(self, quarry, item):
    print "OnQuarryGather works!"
```

 * Called before items are gathered from a quarry
 * No return behavior

## OnSurveyGather

``` csharp
void OnSurveyGather(SurveryCharge survey, Item item)
{
    Puts("OnSurveyGather works!");
}
```

``` lua
function PLUGIN:OnSurveyGather(survey, item)
    print("OnSurveyGather works!")
end
```

``` javascript
OnSurveyGather: function(survey, item) {
    print("OnSurveyGather works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnSurveyGather(self, survey, item):
    print "OnSurveyGather works!"
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

``` lua
function PLUGIN:OnTrapArm(trap, player)
    print("OnTrapArm works!")
end
```

``` javascript
OnTrapArm: function(trap, player) {
    print("OnTrapArm works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnTrapArm(self, trap, player):
    print "OnTrapArm works!"
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

``` lua
function PLUGIN:OnTrapDisarm(trap, player)
    print("OnTrapDisarm works!")
end
```

``` javascript
OnTrapDisarm: function(trap, player) {
    print("OnTrapDisarm works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnTrapDisarm(self, trap, player):
    print "OnTrapDisarm works!"
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

``` lua
function PLUGIN:OnTrapSnapped(trap, player)
    print("OnTrapSnapped works!")
end
```

``` javascript
OnTrapSnapped: function(trap, player) {
    print("OnTrapSnapped works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnTrapSnapped(self, trap, player):
    print "OnTrapSnapped works!"
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

``` lua
function PLUGIN:OnTrapTrigger(trap, go)
    print("OnTrapTrigger works!")
end
```

``` javascript
OnTrapTrigger: function(trap, go) {
    print("OnTrapTrigger works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnTrapTrigger(self, trap, go):
    print "OnTrapTrigger works!"
```

 * Called when a trap is triggered by a game object
 * No return behavior
