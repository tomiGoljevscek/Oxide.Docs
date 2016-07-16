# Experience Hooks

## CanSpendXp

``` csharp
object CanSpendXp(ulong id, int amount, string item) 
{
    Puts("CanSpendXp works!");
    return null;
}
```

``` lua
function PLUGIN:CanSpendXp(id, amount, item)
    print("CanSpendXp works!")
end
```

``` javascript
CanSpendXp: function(id, amount, item) {
    print("CanSpendXp works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def CanSpendXp(self, id, amount, item):
    print "CanSpendXp works!"
```

 * Called when a player attempts to spend XP
 * Returning true/false overrides default behavior

## OnXpEarn

``` csharp
object OnXpEarn(ulong id, float amount, string source)
{
    Puts("OnXpEarn works!");
    return 1f;
}
```

``` lua
function PLUGIN:OnXpEarn(id, amount, category)
    print("OnXpEarn works!")
end
```

``` javascript
OnXpEarn: function(id, amount, category) {
    print("OnXpEarn works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnXpEarn(self, id, amount, category):
    print "OnXpEarn works!"
```

 * Called before XP is earned by the player
 * Returning a float overrides the default amount

## OnXpEarned

``` csharp
void OnXpEarned(ulong id, float amount, string source)
{
    Puts("OnXpEarned works!");
}
```

``` lua
function PLUGIN:OnXpEarned(id, amount, source)
    print("OnXpEarned works!")
end
```

``` javascript
OnXpEarned: function(id, amount, source) {
    print("OnXpEarned works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnXpEarned(self, id, amount, source):
    print "OnXpEarned works!"
```

 * Called after XP is earned by the player
 * No return behavior

## OnXpReset

``` csharp
void OnXpReset(BasePlayer player)
{
    Puts("OnXpReset works!");
}
```

``` lua
function PLUGIN:OnXpReset(player)
    print("OnXpReset works!")
end
```

``` javascript
OnXpReset: function(player) {
    print("OnXpReset works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnXpReset(self, player):
    print "OnXpReset works!"
```

 * Called when XP is reset for the player
 * No return behavior

## OnXpSet

``` csharp
void OnXpSet(ulong id, float amount)
{
    Puts("OnXpSet works!");
}
```

``` lua
function PLUGIN:OnXpSet(id, amount)
    print("OnXpSet works!")
end
```

``` javascript
OnXpSet: function(id, amount) {
    print("OnXpSet works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnXpSet(self, id, amount):
    print "OnXpSet works!"
```

 * Called when XP is set for the player
 * No return behavior

## OnXpSpent

``` csharp
void OnXpSpent(ulong id, int amount, string item)
{
    Puts("OnXpSpent works!");
}
```

``` lua
function PLUGIN:OnXpSpent(id, amount, item)
    print("OnXpSpent works!")
end
```

``` javascript
OnXpSpent: function(id, amount, item) {
    print("OnXpSpent works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnXpSpent(self, id, amount, item):
    print "OnXpSpent works!"
```

 * Called when XP has been spent by the player
 * No return behavior
