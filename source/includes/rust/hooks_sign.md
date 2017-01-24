# Sign Hooks

## CanUpdateSign

``` csharp
void CanUpdateSign(BasePlayer player, Signage sign)
{
    Puts("CanUpdateSign works!");
}
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

 * Called when the player attempts to lock a sign
 * Returning true overrides default behavior

## CanUnlockSign

``` csharp
void CanUnlockSign(BasePlayer player, Signage sign)
{
    Puts("CanUnlockSign works!");
}
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

 * Called after the player has locked a sign
 * No return behavior

## OnSignUpdate

``` csharp
void OnSignUpdate(Signage sign, BasePlayer player)
{
    Puts("OnSignUpdate works!");
}
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

 * Called after the player has changed the text on a sign
 * No return behavior
