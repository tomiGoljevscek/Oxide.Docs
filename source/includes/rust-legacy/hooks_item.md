# Item Hooks

## OnItemAdded

``` csharp
void OnItemAdded(Inventory inventory, int slot, IInventoryItem item)
{
    Puts("OnItemAdded works!");
}
```

``` lua
function PLUGIN:OnItemAdded(inventory, slot, item)
    print("OnItemAdded works!")
end
```

``` coffeescript
OnItemAdded: (inventory, slot, item) =>
    print "OnItemAdded works!"
```

``` javascript
OnItemAdded: function(inventory, slot, item) {
    print("OnItemAdded works!");
}
```

``` python
def OnItemAdded(self, inventory, slot, item):
    print "OnItemAdded works!"
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

``` lua
function PLUGIN:OnItemRemoved(inventory, slot, item)
    print("OnItemRemoved works!")
end
```

``` coffeescript
OnItemRemoved: (inventory, slot, item) =>
    print "OnItemRemoved works!"
```

``` javascript
OnItemRemoved: function(inventory, slot, item) {
    print("OnItemRemoved works!");
}
```

``` python
def OnItemRemoved(self, inventory, slot, item):
    print "OnItemRemoved works!"
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

``` lua
function PLUGIN:OnItemDeployed(deployable, item)
    print("OnItemDeployed works!")
end
```

``` coffeescript
OnItemDeployed: (deployable, item) =>
    print "OnItemDeployed works!"
```

``` javascript
OnItemDeployed: function(deployable, item) {
    print("OnItemDeployed works!");
}
```

``` python
def OnItemDeployed(self, deployable, item):
    print "OnItemDeployed works!"
```

 * Called when an item was deployed by a player
 * No return behavior
