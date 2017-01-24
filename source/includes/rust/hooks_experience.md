# Experience Hooks

## CanSpendXp

``` csharp
object CanSpendXp(ulong id, int amount, string item) 
{
    Puts("CanSpendXp works!");
    return null;
}
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

 * Called before XP is earned by the player
 * Returning a float overrides the default amount

## OnXpEarned

``` csharp
void OnXpEarned(ulong id, float amount, string source)
{
    Puts("OnXpEarned works!");
}
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

 * Called when XP is reset for the player
 * No return behavior

## OnXpSet

``` csharp
void OnXpSet(ulong id, float amount)
{
    Puts("OnXpSet works!");
}
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

 * Called when XP has been spent by the player
 * No return behavior
