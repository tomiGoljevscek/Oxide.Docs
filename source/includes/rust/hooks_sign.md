# Sign Hooks

## CanUpdateSign

``` csharp
void CanUpdateSign(BasePlayer player, Signage sign)
{
    Puts("CanUpdateSign works!");
}
```

``` lua
function PLUGIN:CanUpdateSign(player, sign)
    print("CanUpdateSign works!")
end
```

``` coffeescript
CanUpdateSign: (player, sign) =>
    print "CanUpdateSign works!"
```

``` javascript
CanUpdateSign: function(player, sign) {
    print("CanUpdateSign works!");
}
```

``` python
def CanUpdateSign(self, player, sign):
    print "CanUpdateSign works!"
```

 * Called when the player attempts to change the text on a sign or lock it
 * Returning true overrides default behavior

## CanLockSign

``` csharp
void CanLockSign(BasePlayer player, Signage sign)
{
    Puts("CanLockSign works!");
}
```

``` lua
function PLUGIN:CanLockSign(player, sign)
    print("CanLockSign works!")
end
```

``` coffeescript
CanLockSign: (player, sign) =>
    print "CanLockSign works!"
```

``` javascript
CanLockSign: function(player, sign) {
    print("CanLockSign works!");
}
```

``` python
def CanLockSign(self, player, sign):
    print "CanLockSign works!"
```

 * Called when the player attempts to lock a sign
 * Returning true overrides default behavior

## CanUnlockSign

``` csharp
void CanUnlockSign(BasePlayer player, Signage sign)
{
    Puts("CanUnlockSign works!");
}
```

``` lua
function PLUGIN:CanUnlockSign(player, sign)
    print("CanUnlockSign works!")
end
```

``` coffeescript
CanUnlockSign: (player, sign) =>
    print "CanUnlockSign works!"
```

``` javascript
CanUnlockSign: function(player, sign) {
    print("CanUnlockSign works!");
}
```

``` python
def CanUnlockSign(self, player, sign):
    print "CanUnlockSign works!"
```

 * Called when the player attempts to unlock a sign
 * Returning true overrides default behavior
 
## OnSignLocked

``` csharp
void OnSignLocked(Signage sign, BasePlayer player)
{
    Puts("OnSignLocked works!");
}
```

``` lua
function PLUGIN:OnSignLocked(player, sign)
    print("OnSignLocked works!")
end
```

``` coffeescript
OnSignLocked: (player, sign) =>
    print "OnSignLocked works!"
```

``` javascript
OnSignLocked: function(player, sign) {
    print("OnSignLocked works!");
}
```

``` python
def OnSignLocked(self, player, sign):
    print "OnSignLocked works!"
```

 * Called after the player has locked a sign
 * No return behavior

## OnSignUpdate

``` csharp
void OnSignUpdate(Signage sign, BasePlayer player)
{
    Puts("OnSignUpdate works!");
}
```

``` lua
function PLUGIN:OnSignUpdate(player, sign, text)
    print("OnSignUpdate works!")
end
```

``` coffeescript
OnSignUpdate: (player, sign, text) =>
    print "OnSignUpdate works!"
```

``` javascript
OnSignUpdate: function(player, sign, text) {
    print("OnSignUpdate works!");
}
```

``` python
def OnSignUpdate(self, player, sign, text):
    print "OnSignUpdate works!"
```

 * Called when the player attempts to update a sign
 * Returning true cancels the default behavior

## OnSignUpdated

``` csharp
void OnSignUpdated(Signage sign, BasePlayer player, string text)
{
    Puts("OnSignUpdated works!");
}
```

``` lua
function PLUGIN:OnSignUpdated(player, sign, text)
    print("OnSignUpdated works!")
end
```

``` coffeescript
OnSignUpdated: (player, sign, text) =>
    print "OnSignUpdated works!"
```

``` javascript
OnSignUpdated: function(player, sign, text) {
    print("OnSignUpdated works!");
}
```

``` python
def OnSignUpdated(self, player, sign, text):
    print "OnSignUpdated works!"
```

 * Called after the player has changed the text on a sign
 * No return behavior
