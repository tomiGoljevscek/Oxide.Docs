# Entity Hooks

## CanHelicopterStrafeTarget

``` csharp
void CanHelicopterStrafeTarget(PatrolHelicopterAI entity, BasePlayer target)
{
    Puts("CanHelicopterStrafeTarget works!");
}
```

 * Called when a helicopter targets a player to attack while strafing
 * Returning true or false overrides default behavior

## CanNetworkTo

``` csharp
void CanNetworkTo(BaseNetworkable entity, BasePlayer target)
{
    Puts("CanNetworkTo works!");
}
```

 * Called when an entity attempts to network with a player
 * Returning true or false overrides default behavior

## CanNpcAttack

``` csharp
void CanNpcAttack(BaseNpc npc, BaseEntity target)
{
    Puts("CanNpcAttack works!");
}
```

 * Called when a NPC attempts to attack another entity
 * Returning true or false overrides default behavior

## CanNpcEat

``` csharp
void CanNpcEat(BaseNpc npc, BaseCombatEntity target)
{
    Puts("CanNpcEat works!");
}
```

 * Called when a NPC attempts to eat another entity
 * Returning true or false overrides default behavior

## CanPickupEntity

``` csharp
void CanPickupEntity(BaseCombatEntity entity, BasePlayer player)
{
    Puts("CanPickupEntity works!");
}
```

 * Called when a player attempts to pickup a deployed entity (BearTrap, DecorDeployable, Door, ReactiveTarget, SleepingBag, SpinnerWheel)
 * Returning true or false overrides default behavior

## CanRecycle

``` csharp
void CanRecycle(Recycler recycler, Item item)
{
    Puts("CanRecycle works!");
}
```

 * Called when the recycler attempts to recycle an item
 * Returning true or false overrides default behavior

## OnAirdrop

``` csharp
void OnAirdrop(CargoPlane plane, Vector3 dropPosition)
{
    Puts("OnAirdrop works!");
}
```

 * Called when an airdrop has been called
 * No return behavior

## OnContainerDropItems

``` csharp
void OnContainerDropItems(ItemContainer container)
{
    Puts("OnContainerDropItems works!");
}
```

 * Called when a container is destroyed and all items are about to be dropped
 * Returning a non-null value overrides default behavior

## OnEntityDeath

``` csharp
void OnEntityDeath(BaseCombatEntity entity, HitInfo info)
{
    Puts("OnEntityDeath works!");
}
```

 * hitInfo might be null, check it before use
 * Editing hitInfo has no effect because the death has already happened
 * No return behavior

## OnEntityEnter

``` csharp
void OnEntityEnter(TriggerBase trigger, BaseEntity entity)
{
    Puts("OnEntityEnter works!");
}
```

 * Called when an entity enters a trigger (building privilege zone, water area, radiation zone, hurt zone, etc.)
 * No return behavior

## OnEntityGroundMissing

``` csharp
void OnEntityGroundMissing(BaseEntity entity)
{
    Puts("OnEntityGroundMissing works!");
}
```

 * Called when an entity (sleepingbag, sign, furnace,...) is going to be destroyed because the buildingblock it is on was removed
 * Returning a non-null value overrides default behavior

## OnEntityKill

``` csharp
void OnEntityKill(BaseNetworkable entity)
{
    Puts("OnEntityKill works!");
}
```

 * Called when an entity is destroyed
 * No return behavior

## OnEntityLeave

``` csharp
void OnEntityLeave(TriggerBase trigger, BaseEntity entity)
{
    Puts("OnEntityLeave works!");
}
```

 * Called when an entity leaves a trigger (building privilege zone, water area, radiation zone, hurt zone, etc.)
 * No return behavior

## OnEntitySpawned

``` csharp
void OnEntitySpawned(BaseNetworkable entity)
{
    Puts("OnEntitySpawned works!");
}
```

 * Called after any networked entity has spawned (including trees)
 * No return behavior

## OnEntityTakeDamage

``` csharp
void OnEntityTakeDamage(BaseCombatEntity entity, HitInfo info)
{
    Puts("OnEntityTakeDamage works!");
}
```

 * Alternatively, modify the hitInfo object to change the damage
 * It should be okay to set the damage to 0, but if you don't return non-null, the player's client will receive a damage indicator (if entity is a BasePlayer)
 * hitInfo has all kinds of useful things in it, such as hitInfo.Weapon, hitInfo.damageAmount or hitInfo.damageType
 * Returning true overrides default behavior (useful for godmode etc.)

## OnHelicopterTarget

``` csharp
void OnHelicopterTarget(HelicopterTurret turret, BaseCombatEntity entity)
{
    Puts("OnHelicopterTarget works!");
}
```

 * Called when a helicopter attempts to target an entity
 * Returning true overrides default behavior

## OnOvenToggle

``` csharp
void OnOvenToggle(BaseOven oven, BasePlayer player)
{
    Puts("OnOvenToggle works!");
}
```

 * Called when an oven (Campfire, Furnace,...) is turned on or off
 * Returning a non-null value overrides default behavior

## OnRecycleItem

``` csharp
void OnRecycleItem(Recycler recycler, Item item)
{
    Puts("OnRecycleItem works!");
}
```

 * Called when an item is recycled in a recycler
 * Returning a non-null value overrides default behavior

## OnRecyclerToggle

``` csharp
void OnRecyclerToggle(Recycler recycler, BasePlayer player)
{
    Puts("OnRecyclerToggle works!");
}
```

 * Called when a recycler is turned on or off
 * Returning a non-null value overrides default behavior

## OnResourceDepositCreated

``` csharp
void OnResourceDepositCreated(ResourceDepositManager.ResourceDeposit deposit)
{
    Puts("OnResourceDepositCreated works!");
}
```

 * Called when a resource deposit has been created
 * No return behavior

## OnTurretAuthorize

``` csharp
void OnTurretAuthorize(AutoTurret turret, BasePlayer player)
{
    Puts("OnTurretAuthorize works!");
}
```

 * Called when a player is authorized on a turret
 * Returning a non-null value overrides default behavior

## OnTurretDeauthorize

``` csharp
void OnTurretShutdown(AutoTurret turret, BasePlayer player)
{
    Puts("OnTurretDeauthorize works!");
}
```

 * Called when a player is deauthorized on a turret
 * Returning a non-null value overrides default behavior

## OnTurretShutdown

``` csharp
void OnTurretShutdown(AutoTurret turret)
{
    Puts("OnTurretShutdown works!");
}
```

 * Called when an autoturret shutsdown
 * Returning a non-null value overrides default behavior

## OnTurretStartup
 
 ``` csharp
void OnTurretStartup(AutoTurret turret)
{
    Puts("OnTurretStartup works!");
}
```

 * Called when an autoturret starts up
 * Returning a non-null value overrides default behavior
 
## OnTurretTarget

``` csharp
void OnTurretTarget(AutoTurret turret, BaseCombatEntity entity)
{
    Puts("OnTurretTarget works!");
}
```

 * Called when an autoturret attempts to target an entity
 * Returning a non-null value overrides default behavior

## OnTurretToggle

 ``` csharp
void OnTurretToggle(AutoTurret turret)
{
    Puts("OnTurretToggle works!");
}
```

 * Called when an autoturret toggles powerstate (on/off)
 * Returning a non-null value overrides default behavior
