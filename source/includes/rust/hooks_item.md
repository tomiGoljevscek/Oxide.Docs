# Item Hooks

## OnItemCraft

``` csharp
void OnItemCraft(ItemCraftTask item)
{
    Puts("OnItemCraft works!");
}
```

``` javascript
OnItemCraft: function(item) {
    print("OnItemCraft works!");
}
```

``` lua
function PLUGIN:OnItemCraft(item)
    print("OnItemCraft works!")
end
```

``` python
def OnItemCraft(self, item):
    print "OnItemCraft works!"
```

 * Called from ItemCrafter.CraftItem
 * Called right after an item has started crafting
 * Return an ItemCraftTask object to modify behavior

## OnItemCraftFinished

``` csharp
void OnItemCraftFinished(ItemCraftTask task, Item item)
{
    Puts("OnItemCraftFinished works!");
}
```

``` javascript
OnItemCraftFinished: function(task, item) {
    print("OnItemCraftFinished works!");
}
```

``` lua
function PLUGIN:OnItemCraftFinished(task, item)
    print("OnItemCraftFinished works!")
end
```

``` python
def OnItemCraftFinished(self, task, item):
    print "OnItemCraftFinished works!"
```

 * Called from ItemCrafter.FinishCrafting
 * Called right after an item has been crafted
 * No return behavior

## OnItemPickup

``` csharp
void OnItemPickup(BasePlayer player, Item item)
{
    Puts("OnItemPickup works!");
}
```

``` javascript
OnItemPickup: function(player, item) {
    print("OnItemPickup works!");
}
```

``` lua
function PLUGIN:OnItemPickup(player, item)
    print("OnItemPickup works!")
end
```

``` python
def OnItemPickup(self, player, item):
    print "OnItemPickup works!"
```

 * Called from RustCore.IOnItemPickup
 * Called when a player collects an item
 * No return behavior

## OnItemResearch

``` csharp
void OnItemResearch(Item item, BasePlayer player)
{
    Puts("OnItemResearch works!");
}
```

``` javascript
OnItemResearch: function(item, player) {
    print("OnItemResearch works!");
}
```

``` lua
function PLUGIN:OnItemResearch(item, player)
    print("OnItemResearch works!")
end
```

``` python
def OnItemResearch(self, item, player):
    print "OnItemResearch works!"
```

 * Called from ResearchTable.DoResearch
 * Called right before a player begins to research an item
 * Returning a non-null value will cancel default behavior

## OnItemResearchStart

``` csharp
void OnItemResearchStart(ResearchTable table)
{
    Puts("OnItemResearchStart works!");
}
```

``` javascript
OnItemResearchStart: function(table) {
    print("OnItemResearchStart works!");
}
```

``` lua
function PLUGIN:OnItemResearchStart(table)
    print("OnItemResearchStart works!")
end
```

``` python
def OnItemResearchStart(self, table):
    print "OnItemResearchStart works!"
```

 * Called from ResearchTable.DoResearch
 * Called when a player has started researching an item
 * No return behavior

## OnItemResearchEnd

``` csharp
void OnItemResearchEnd(ResearchTable table, float chance)
{
    Puts("OnItemResearchEnd works!");
    return chance;
}
```

``` javascript
OnItemResearchEnd: function(table, chance) {
    print("OnItemResearchEnd works!");
    return chance;
}
```

``` lua
function PLUGIN:OnItemResearchEnd(table, chance)
    print("OnItemResearchEnd works!")
    return chance
end
```

``` python
def OnItemResearchEnd(self, table, chance):
    print "OnItemResearchEnd works!"
    return chance
```

 * Called from RustCore.IOnItemResearchEnd
 * Called right before a player finishes researching an item
 * Returning a float will affect if researching is successful or not

## OnItemDeployed

``` csharp
void OnItemDeployed(Deployer deployer, BaseEntity entity)
{
    Puts("OnItemDeployed works!");
}
```

``` javascript
OnItemDeployed: function(deployer, entity) {
    print("OnItemDeployed works!");
}
```

``` lua
function PLUGIN:OnItemDeployed(deployer, entity)
    print("OnItemDeployed works!")
end
```

``` python
def OnItemDeployed(self, deployer, entity):
    print "OnItemDeployed works!"
```

 * Called from Deployer.DoDeploy_Regular and Deployer.DoDeploy_Slot
 * Called right after an item has been deployed
 * No return behavior

## OnItemAddedToContainer

``` csharp
void OnItemAddedToContainer(ItemContainer container, Item item)
{
    Puts("OnItemAddedToContainer works!");
}
```

``` javascript
OnItemAddedToContainer: function(container, item) {
    print("OnItemAddedToContainer works!");
}
```

``` lua
function PLUGIN:OnItemAddedToContainer(container, item)
    print("OnItemAddedToContainer works!")
end
```

``` python
def OnItemAddedToContainer(self, container, item):
    print "OnItemAddedToContainer works!"
```

 * Called from ItemContainer.Insert
 * Called right after an item was added to a container
 * An entire stack has to be created, not just adding more wood to a wood stack for example
 * No return behavior

## OnItemRemovedFromContainer

``` csharp
void OnItemRemovedFromContainer(ItemContainer container, Item item)
{
    Puts("OnItemRemovedFromContainer works!");
}
```

``` javascript
OnItemRemovedFromContainer: function(container, item) {
    print("OnItemRemovedFromContainer works!");
}
```

``` lua
function PLUGIN:OnItemRemovedFromContainer(container, item)
    print("OnItemRemovedFromContainer works!")
end
```

``` python
def OnItemRemovedFromContainer(self, container, item):
    print "OnItemRemovedFromContainer works!"
```

 * Called from ItemContainer.Remove
 * Called right after an item was removed from a container
 * The entire stack has to be removed for this to be called, not just a little bit
 * No return behavior

## OnDispenserGather

``` csharp
void OnDispenserGatherGather(ResourceDispenser dispenser, BaseEntity entity, Item item)
{
    Puts("OnDispenserGather works!");
}
```

``` javascript
OnDispenserGather: function(dispenser, entity, item) {
    print("OnDispenserGather works!");
}
```

``` lua
function PLUGIN:OnDispenserGather(dispenser, entity, item)
    print("OnDispenserGather works!")
end
```

``` python
def OnDispenserGather(self, dispenser, entity, item):
    print "OnDispenserGather works!"
```

 * Called from ResourceDispenser.GiveResourceFromItem
 * Called before the player is given items from a resource
 * No return behavior

## OnPlantGather

``` csharp
void OnPlantGather(PlantEntity plant, Item item, BasePlayer player)
{
    Puts("OnPlantGather works!");
}
```

``` javascript
OnPlantGather: function(plant, item, player) {
    print("OnPlantGather works!");
}
```

``` lua
function PLUGIN:OnPlantGather(plant, item, player)
    print("OnPlantGather works!")
end
```

``` python
def OnPlantGather(self, plant, item, player):
    print "OnPlantGather works!"
```

 * Called from RustCore.IOnPlantGather
 * Called when a player gathers a plant
 * No return behavior

## OnQuarryEnabled

``` csharp
void OnQuarryGather(MiningQuarry quarry, Item item)
{
    Puts("OnQuarryGather works!");
}
```

``` javascript
OnQuarryGather: function(quarry, item) {
    print("OnQuarryGather works!");
}
```

``` lua
function PLUGIN:OnQuarryGather(quarry, item)
    print("OnQuarryGather works!")
end
```

``` python
def OnQuarryGather(self, quarry, item):
    print "OnQuarryGather works!"
```

 * Called from MiningQuarry.SetOn
 * Called when a mining quarry is turned on/enabled
 * No return behavior

## OnQuarryGather

``` csharp
void OnQuarryGather(MiningQuarry quarry, Item item)
{
    Puts("OnQuarryGather works!");
}
```

``` javascript
OnQuarryGather: function(quarry, item) {
    print("OnQuarryGather works!");
}
```

``` lua
function PLUGIN:OnQuarryGather(quarry, item)
    print("OnQuarryGather works!")
end
```

``` python
def OnQuarryGather(self, quarry, item):
    print "OnQuarryGather works!"
```

 * Called from MiningQuarry.ProcessResources
 * Called before items are gathered from a quarry
 * No return behavior

## OnSurveyGather

``` csharp
void OnSurveyGather(SurveryCharge survey, Item item)
{
    Puts("OnSurveyGather works!");
}
```

``` javascript
OnSurveyGather: function(survey, item) {
    print("OnSurveyGather works!");
}
```

``` lua
function PLUGIN:OnSurveyGather(survey, item)
    print("OnSurveyGather works!")
end
```

``` python
def OnSurveyGather(self, survey, item):
    print "OnSurveyGather works!"
```

 * Called from SurveyCharge.Explode
 * Called before items are gathered from a survey charge
 * No return behavior

## OnConsumableUse

``` csharp
void OnConsumableUse(Item item)
{
    Puts("OnConsumableUse works!");
}
```

``` javascript
OnConsumableUse: function(item) {
    print("OnConsumableUse works!");
}
```

``` lua
function PLUGIN:OnConsumableUse(item)
    print("OnConsumableUse works!")
end
```

``` python
def OnConsumableUse(self, item):
    print "OnConsumableUse works!"
```

 * Called from Item.UseOneItem
 * Called right after a consumable item is used
 * No return behavior
 
## OnConsumeFuel

``` csharp
void OnConsumeFuel(BaseOven oven, Item fuel, ItemModBurnable burnable)
{
    Puts("OnConsumeFuel works!");
}
```

``` javascript
OnConsumeFuel: function(oven, fuel, burnable) {
    print("OnConsumeFuel works!");
}
```

``` lua
function PLUGIN:OnConsumeFuel(oven, fuel, burnable)
    print("OnConsumeFuel works!")
end
```

``` python
def OnConsumeFuel(self, oven, fuel, burnable):
    print "OnConsumeFuel works!"
```

 * Called from BaseOven.ConsumeFuel
 * Called right before fuel is used (furnace, lanterns, camp fires, etc.)
 * No return behavior

## OnHealingItemUse

``` csharp
void OnHealingItemUse(HeldEntity item, BasePlayer target)
{
    Puts("OnHealingItemUse works!");
}
```

``` javascript
OnHealingItemUse: function(item, target) {
    print("OnHealingItemUse works!");
}
```

``` lua
function PLUGIN:OnHealingItemUse(item, target)
    print("OnHealingItemUse works!")
end
```

``` python
def OnHealingItemUse(self, item, target):
    print "OnHealingItemUse works!"
```

 * Called from SyringeWeapon.GiveEffectsTo and MedicalTool.GiveEffectsTo
 * Called right before a Syringe or Medkit item is used
 * Returning a non-null value will cancel default behavior

## OnLoseCondition

``` csharp
void OnLoseCondition(Item item, ref float amount)
{
    Puts("OnLoseCondition works!");
}
```

``` javascript
OnLoseCondition: function(item, amount) {
    print("OnLoseCondition works!");
}
```

``` lua
function PLUGIN:OnLoseCondition(item, amount)
    print("OnLoseCondition works!")
end
```

``` python
def OnLoseCondition(self, item, amount):
    print "OnLoseCondition works!"
```

 * Called from Item.LoseCondition
 * Called right before the condition of the item is modified
 * No return behavior

## OnTrapArm

``` csharp
void OnTrapArm(BearTrap trap, BasePlayer player)
{
    Puts("OnTrapArm works!");
}
```

``` javascript
OnTrapArm: function(trap, player) {
    print("OnTrapArm works!");
}
```

``` lua
function PLUGIN:OnTrapArm(trap, player)
    print("OnTrapArm works!")
end
```

``` python
def OnTrapArm(self, trap, player):
    print "OnTrapArm works!"
```

 * Called from RustCore.IOnTrapArm
 * Called when a player arms a bear trap
 * No return behavior

## OnTrapDisarm

``` csharp
void OnTrapDisarm(LandMine trap, BasePlayer player)
{
    Puts("OnTrapDisarm works!");
}
```

``` javascript
OnTrapDisarm: function(trap, player) {
    print("OnTrapDisarm works!");
}
```

``` lua
function PLUGIN:OnTrapDisarm(trap, player)
    print("OnTrapDisarm works!")
end
```

``` python
def OnTrapDisarm(self, trap, player):
    print "OnTrapDisarm works!"
```

 * Called from RustCore.IOnTrapDisarm
 * Called when a player disarms a land mine
 * No return behavior

## OnTrapSnapped

``` csharp
void OnTrapSnapped(BearTrap trap, GameObject go)
{
    Puts("OnTrapSnapped works!");
}
```

``` javascript
OnTrapSnapped: function(trap, player) {
    print("OnTrapSnapped works!");
}
```

``` lua
function PLUGIN:OnTrapSnapped(trap, player)
    print("OnTrapSnapped works!")
end
```

``` python
def OnTrapSnapped(self, trap, player):
    print "OnTrapSnapped works!"
```

 * Called from BaseTrapTrigger.OnObjectAdded
 * Called when a trap is triggered by a game object
 * No return behavior

## OnTrapTrigger

``` csharp
void OnTrapTrigger(BearTrap trap, GameObject go)
{
    Puts("OnTrapTrigger works!");
}
```

``` javascript
OnTrapTrigger: function(trap, go) {
    print("OnTrapTrigger works!");
}
```

``` lua
function PLUGIN:OnTrapTrigger(trap, go)
    print("OnTrapTrigger works!")
end
```

``` python
def OnTrapTrigger(self, trap, go):
    print "OnTrapTrigger works!"
```

 * Called from BaseTrap.ObjectEntered
 * Called when a trap is triggered by a game object
 * No return behavior
