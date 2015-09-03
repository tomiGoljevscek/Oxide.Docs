# Sign Hooks

## CanUpdateSign

``` csharp
void CanUpdateSign(Signage sign, BasePlayer player)
{
    Puts("CanUpdateSign works!");
}
```

``` javascript
CanUpdateSign: function(sign, player) {
    print("CanUpdateSign works!");
}
```

``` lua
function PLUGIN:CanUpdateSign(sign, player)
    print("CanUpdateSign works!")
end
```

``` python
def CanUpdateSign(self, sign, player):
    print "CanUpdateSign works!"
```

 * Called from Signage.CanUpdateSign
 * Called before the player changes the text on a sign or locks it
 * Returning true or false will override Rust's check

## OnSignLocked

``` csharp
void OnSignLocked(Signage sign, BasePlayer player)
{
    Puts("OnSignLocked works!");
}
```

``` javascript
OnSignLocked: function(sign, player) {
    print("OnSignLocked works!");
}
```

``` lua
function PLUGIN:OnSignLocked(sign, player)
    print("OnSignLocked works!")
end
```

``` python
def OnSignLocked(self, sign, player):
    print "OnSignLocked works!"
```

 * Called from Signage.LockSign
 * Called after the player has locked a sign
 * No return behavior

## OnSignUpdated

``` csharp
void OnSignUpdated(Signage sign, BasePlayer player, string text)
{
    Puts("OnSignUpdated works!");
}
```

``` javascript
OnSignUpdated: function(sign, player, text) {
    print("OnSignUpdated works!");
}
```

``` lua
function PLUGIN:OnSignUpdated(sign, player, text)
    print("OnSignUpdated works!")
end
```

``` python
def OnSignUpdated(self, sign, player, text):
    print "OnSignUpdated works!"
```

 * Called from Signage.UpdateSign
 * Called after the player has changed the text on a sign
 * No return behavior
