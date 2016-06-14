# Entity Hooks

## OnAirdrop

``` csharp
void OnAirdrop(Vector3 position)
{
    Puts("OnAirdrop works!");
}
```

``` lua
PLUGIN:OnAirdrop(position)
    print("OnAirdrop works!")
end
```

``` coffeescript
OnAirdrop: (position) =>
    print "OnAirdrop works!"
```

``` javascript
OnAirdrop: function(position) {
    print("OnAirdrop works!");
}
```

``` python
def OnAirDrop(self, position):
    print "OnAirDrop works!"
```

 * Called when an airdrop has been called
 * No return behavior

## OnHurt

``` csharp
void OnHurt(TakeDamage damage, DamageEvent evt)
{
    Puts("OnHurt works!");
}
```

``` lua
PLUGIN:OnHurt(damage, evt)
    print("OnHurt works!")
end
```

``` coffeescript
OnHurt: (damage, evt) =>
    print "OnHurt works!"
```

``` javascript
OnHurt: function(damage, evt) {
    print("OnHurt works!");
}
```

``` python
def OnHurt(self, damage, evt):
    print "OnHurt works!"
```

 * Called when any kind of entity takes damage
 * No return behavior

## OnKilled

``` csharp
void OnKilled(TakeDamage damage, DamageEvent evt)
{
    Puts("OnKilled works!");
}
```

``` lua
PLUGIN:OnKilled(damage, evt)
    print("OnKilled works!")
end
```

``` coffeescript
OnKilled: (damage, evt) =>
    print "OnKilled works!"
```

``` javascript
OnKilled: function(damage, evt) {
    print("OnKilled works!");
}
```

``` python
def OnKilled(self, damage, evt):
    print "OnKilled works!"
```

 * Called when any kind of entity was killed
 * No return behavior
