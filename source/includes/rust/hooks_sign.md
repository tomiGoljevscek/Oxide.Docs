# Sign Hooks

## CanUpdateSign(Signage sign, BasePlayer player)
 * Called from Signage.CanUpdateSign
 * Return true or false to override Rust's check
 * Called before the player changes the text on a sign or locks it

## OnSignLocked(Signage sign, BasePlayer player)
 * Called from Signage.LockSign
 * No return behavior
 * Called after the player has locked a sign

## OnSignUpdated(Signage sign, BasePlayer player, string text)
 * Called from Signage.UpdateSign
 * No return behavior
 * Called after the player has changed the text on a sign

## Placeholder

``` csharp
private void Placeholder()
{
    Puts("Placeholder works!");
}
```

``` javascript
We need a JavaScript example here
```

``` lua
We need a Lua example here
```

``` python
We need a Python example here
```

 * Placeholder
