# Sign Hooks

## CanUpdateSign

``` csharp
void CanUpdateSign(Signage sign, BasePlayer player)
{
    Puts("CanUpdateSign works!");
}
```

``` javascript
CanUpdateSign: function(sign, player)
{
    print("CanUpdateSign works!");
}
```

``` lua
We need a Lua example here
```

``` python
We need a Python example here
```

 * Called from Signage.CanUpdateSign
 * Return true or false to override Rust's check
 * Called before the player changes the text on a sign or locks it

## OnSignLocked

``` csharp
void OnSignLocked(Signage sign, BasePlayer player)
{
    Puts("OnSignLocked works!");
}
```

``` javascript
OnSignLocked: function(sign, player)
{
    print("OnSignLocked works!");
}
```

``` lua
We need a Lua example here
```

``` python
We need a Python example here
```

 * Called from Signage.LockSign
 * No return behavior
 * Called after the player has locked a sign

## OnSignUpdated

``` csharp
void OnSignUpdated(Signage sign, BasePlayer player, string text)
{
    Puts("OnSignUpdated works!");
}
```

``` javascript
OnSignUpdated: function(sign, player, text)
{
    print("OnSignUpdated works!");
}
```

``` lua
We need a Lua example here
```

``` python
We need a Python example here
```

 * Called from Signage.UpdateSign
 * No return behavior
 * Called after the player has changed the text on a sign
