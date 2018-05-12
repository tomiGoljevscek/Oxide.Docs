---
title: Entity Hooks
---

# Entity Hooks

## CanBradleyApcTarget

 ``` csharp
bool CanBradleyApcTarget(BradleyAPC apc, BaseEntity entity)
{
    Puts("CanBradleyApcTarget works!");
    return true;
}
```

 * Called when an APC targets an entity
 * Returning true or false overrides default behavior

## CanHelicopterDropCrate

 ``` csharp
bool CanHelicopterDropCrate(CH47HelicopterAIController heli)
{
    Puts("CanHelicopterDropCrate works!");
    return true;
}
```

 * Called when a CH47 helicopter attempts to drop a crate
 * Returning true or false overrides default behavior

## CanHelicopterStrafe

 ``` csharp
bool CanHelicopterStrafe(PatrolHelicopterAI heli)
{
    Puts("CanHelicopterStrafe works!");
    return true;
}
```

 * Called when a patrol helicopter attempts to strafe
 * Returning true or false overrides default behavior

## CanHelicopterStrafeTarget

``` csharp
bool CanHelicopterStrafeTarget(PatrolHelicopterAI entity, BasePlayer target)
{
    Puts("CanHelicopterStrafeTarget works!");
    return true;
}
```

 * Called when a patrol helicopter attempts to target a player to attack while strafing
 * Returning true or false overrides default behavior

## CanHelicopterTarget

 ``` csharp
bool CanHelicopterTarget(PatrolHelicopterAI heli, BasePlayer player)
{
    Puts("CanHelicopterTarget works!");
    return true;
}
```

 * Called when a patrol helicopter attempts to target a player to attack
 * Returning true or false overrides default behavior

## CanHelicopterUseNapalm

``` csharp
bool CanHelicopterUseNapalm(PatrolHelicopterAI heli)
{
    Puts("CanHelicopterUseNapalm works!");
    return true;
}
```

 * Called when a patrol helicopter attempts to use napalm
 * Returning true or false overrides default behavior

## CanLootEntity (LootableCorpse)

``` csharp
object CanLootEntity(LootableCorpse corpse, BasePlayer player)
{
    Puts("CanLootEntity works!");
    return null;
}
```

 * Called when the player starts looting a LootableCorpse entity
* Returning a non-null value overrides default behavior

## CanLootEntity (ResourceContainer)

``` csharp
object CanLootEntity(ResourceContainer container, BasePlayer player)
{
    Puts("CanLootEntity works!");
    return null;
}
```

 * Called when the player starts looting a ResourceContainer entity
* Returning a non-null value overrides default behavior

## CanLootEntity (DroppedItemContainer)

``` csharp
object CanLootEntity(DroppedItemContainer container, BasePlayer player)
{
    Puts("CanLootEntity works!");
    return null;
}
```

 * Called when the player starts looting a DroppedItemContainer entity
* Returning a non-null value overrides default behavior

## CanLootEntity (StorageContainer)

``` csharp
object CanLootEntity(StorageContainer container, BasePlayer player)
{
    Puts("CanLootEntity works!");
    return null;
}
```

 * Called when the player starts looting a StorageContainer entity
* Returning a non-null value overrides default behavior

## CanNetworkTo

``` csharp
bool CanNetworkTo(BaseNetworkable entity, BasePlayer target)
{
    Puts("CanNetworkTo works!");
    return true;
}
```

 * Called when an entity attempts to network with a player
 * For better performance, avoid using heavy calculations in this hook.
 * Returning true or false overrides default behavior

## CanNpcAttack

``` csharp
bool CanNpcAttack(BaseNpc npc, BaseEntity target)
{
    Puts("CanNpcAttack works!");
    reture true;
}
```

 * Called when a NPC attempts to attack another entity
 * Returning true or false overrides default behavior

## CanNpcEat

``` csharp
bool CanNpcEat(BaseNpc npc, BaseEntity target)
{
    Puts("CanNpcEat works!");
    return true;
}
```

 * Called when a NPC attempts to eat another entity
 * Returning true or false overrides default behavior

## CanPickupEntity

``` csharp
bool CanPickupEntity(BaseCombatEntity entity, BasePlayer player)
{
    Puts("CanPickupEntity works!");
    return true;
}
```

 * Called when a player attempts to pickup a deployed entity (BearTrap, DecorDeployable, Door, ReactiveTarget, SleepingBag, SpinnerWheel)
 * Returning true or false overrides default behavior

## CanRecycle

``` csharp
bool CanRecycle(Recycler recycler, Item item)
{
    Puts("CanRecycle works!");
    return true;
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

## OnBradleyApcInitialize

``` csharp
object OnBradleyApcInitialize(BradleyAPC apc)
{
    Puts("OnBradleyApcInitialize works!");
    return null;
}
```

* Called when an APC initializes
* Returning a non-null value overrides default behavior

## OnBradleyApcHunt

``` csharp
object OnBradleyApcHunt(BradleyAPC apc)
{
    Puts("OnBradleyApcHunt works!");
    return null;
}
```

* Called when an APC starts hunting
* Returning a non-null value overrides default behavior

## OnBradleyApcPatrol

``` csharp
object OnBradleyApcPatrol(BradleyAPC apc)
{
    Puts("OnBradleyApcPatrol works!");
    return null;
}
```

* Called when an APC is starts patrolling
* Returning a non-null value overrides default behavior

## OnContainerDropItems

``` csharp
object OnContainerDropItems(ItemContainer container)
{
    Puts("OnContainerDropItems works!");
    return null;
}
```

 * Called when a container is destroyed and all items are about to be dropped
 * Returning a non-null value overrides default behavior

## OnCrateDropped

``` csharp
void OnCrateDropped(HackableLockedCrate crate)
{
    Puts("OnCrateDropped works!");
}
```

 * Called when a locked crate from the CH47 (Chinook) has dropped
 * No return behavior

## OnCrateHack

``` csharp
void OnCrateHack(HackableLockedCrate crate)
{
    Puts("OnCrateHack works!");
}
```

 * Called when a locked crate from the CH47 (Chinook) starts being hacked
 * No return behavior

## OnCrateHackEnd

``` csharp
void OnCrateHackEnd(HackableLockedCrate crate)
{
    Puts("OnCrateHackEnd works!");
}
```

 * Called when a locked crate from the CH47 (Chinook) is no longer being hacked
 * No return behavior

## OnCrateLanded

``` csharp
void OnCrateLanded(HackableLockedCrate crate)
{
    Puts("OnCrateLanded works!");
}
```

 * Called when a locked crate from the CH47 (Chinook) has landed
 * No return behavior

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

## OnEntityDismounted

``` csharp
void OnEntityDismounted(BaseMountable entity, BasePlayer player)
{
    Puts("OnEntityDismounted works!");
}
```

 * Called when an entity is dismounted by a player
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
object OnEntityGroundMissing(BaseEntity entity)
{
    Puts("OnEntityGroundMissing works!");
    return null;
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

## OnEntityMounted

``` csharp
void OnEntityMounted(BaseMountable entity, BasePlayer player)
{
    Puts("OnEntityMounted works!");
}
```

 * Called when an entity is mounted by a player
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
object OnEntityTakeDamage(BaseCombatEntity entity, HitInfo info)
{
    Puts("OnEntityTakeDamage works!");
    return null;
}
```

 * Alternatively, modify the HitInfo object to change the damage
 * It should be okay to set the damage to 0, but if you don't return non-null, the player's client will receive a damage indicator (if entity is a BasePlayer)
 * HitInfo has all kinds of useful things in it, such as Weapon, damageProperties or damageTypes
 * Returning true overrides default behavior (useful for godmode etc.)

## OnHelicopterAttacked

``` csharp
object OnHelicopterAttacked(CH47HelicopterAIController heli)
{
    Puts("OnHelicopterAttacked works!");
    return null;
}
```

 * Called when a CH47 helicopter is being attacked
 * Returning a non-null value overrides default behavior

## OnHelicopterDropCrate

``` csharp
object OnHelicopterDropCrate(CH47HelicopterAIController heli)
{
    Puts("OnHelicopterDropCrate works!");
    return null;
}
```

 * Called when a CH47 helicopter is dropping a crate
 * Returning a non-null value overrides default behavior

## OnHelicopterDropDoorOpen

``` csharp
object OnHelicopterDropDoorOpen(CH47HelicopterAIController heli)
{
    Puts("OnHelicopterDropDoorOpen works!");
    return null;
}
```

 * Called when a CH47 helicopter is opening its drop door
 * Returning a non-null value overrides default behavior

## OnHelicopterKilled

``` csharp
object OnHelicopterKilled(CH47HelicopterAIController heli)
{
    Puts("OnHelicopterKilled works!");
    return null;
}
```

 * Called when a CH47 helicopter is going to be killed
 * Returning a non-null value overrides default behavior

## OnHelicopterOutOfCrates

``` csharp
bool OnHelicopterOutOfCrates(CH47HelicopterAIController heli)
{
    Puts("OnHelicopterOutOfCrates works!");
    return null;
}
```

 * Called when a CH47 helicopter runs out of crates
 * Returning a non-null value overrides default behavior

## OnHelicopterTarget

``` csharp
object OnHelicopterTarget(HelicopterTurret turret, BaseCombatEntity entity)
{
    Puts("OnHelicopterTarget works!");
    return null;
}
```

 * Called when a helicopter turret attempts to target an entity
 * Returning a non-null value overrides default behavior

## OnLiftUse (Lift)

``` csharp
object OnLiftUse(Lift lift, BasePlayer player)
{
    Puts("OnLiftUse works!");
    return null;
}
```

 * Called when a player calls a lift
 * Returning a non-null value overrides default behavior

## OnLiftUse (ProceduralLift)

``` csharp
object OnLiftUse(ProceduralLift lift, BasePlayer player)
{
    Puts("OnLiftUse works!");
    return null;
}
```

 * Called when a player calls a procedural lift
 * Returning a non-null value overrides default behavior

## OnLootSpawn

``` csharp
object OnLootSpawn(LootContainer container)
{
    Puts("OnLootSpawn works!");
    return null;
}
```

 * Called when loot spawns in a container
 * Returning a non-null value overrides default behavior

## OnNpcPlayerTarget

``` csharp
object OnNpcPlayerTarget(NPCPlayerApex npcPlayer, BaseEntity entity)
{
    Puts("OnNpcPlayerTarget works!");
    return null;
}
```

 * Called when an NPC player targets another entity
 * Returning a non-null value overrides default behavior

## OnNpcTarget

``` csharp
object OnNpcTarget(BaseNpc npc, BaseEntity entity)
{
    Puts("OnNpcTarget works!");
    return null;
}
```

 * Called when an NPC targets another entity
 * Returning a non-null value overrides default behavior

## OnOvenToggle

``` csharp
object OnOvenToggle(BaseOven oven, BasePlayer player)
{
    Puts("OnOvenToggle works!");
    return null;
}
```

 * Called when an oven (Campfire, Furnace,...) is turned on or off
 * Returning a non-null value overrides default behavior

## OnRecycleItem

``` csharp
object OnRecycleItem(Recycler recycler, Item item)
{
    Puts("OnRecycleItem works!");
    return null;
}
```

 * Called when an item is recycled in a recycler
 * Returning a non-null value overrides default behavior

## OnRecyclerToggle

``` csharp
object OnRecyclerToggle(Recycler recycler, BasePlayer player)
{
    Puts("OnRecyclerToggle works!");
    return null;
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

## OnShopCompleteTrade

``` csharp
object OnShopCompleteTrade(ShopFront shop, BasePlayer customer)
{
    Puts("OnShopCompleteTrade works!");
    return null;
}
```

 * Called when a shopfront trade is complete
 * Returning a non-null value overrides default behavior

## OnTurretAuthorize

``` csharp
object OnTurretAuthorize(AutoTurret turret, BasePlayer player)
{
    Puts("OnTurretAuthorize works!");
    return null;
}
```

 * Called when a player is authorized on a turret
 * Returning a non-null value overrides default behavior

## OnTurretClearList

``` csharp
object OnTurretClearList(AutoTurret turret, BasePlayer player)
{
    Puts("OnTurretClearList works!");
    return null;
}
```

 * Called when a player attempts to clear an autoturret's authorized list
 * Returning a non-null value overrides default behavior

## OnTurretDeauthorize

``` csharp
object OnTurretDeauthorize(AutoTurret turret, BasePlayer player)
{
    Puts("OnTurretDeauthorize works!");
    return null;
}
```

 * Called when a player is deauthorized on an autoturret
 * Returning a non-null value overrides default behavior

## OnTurretModeToggle

``` csharp
void OnTurretModeToggle(AutoTurret turret)
{
    Puts("OnTurretModeToggle works!");
}
```

 * Called when the mode of an autoturrent is toggled
 * No return behavior

## OnTurretShutdown

``` csharp
object OnTurretShutdown(AutoTurret turret)
{
    Puts("OnTurretShutdown works!");
    return null;
}
```

 * Called when an autoturret is shut down
 * Returning a non-null value overrides default behavior

## OnTurretStartup

``` csharp
object OnTurretStartup(AutoTurret turret)
{
    Puts("OnTurretStartup works!");
    return null;
}
```

 * Called when an autoturret starts up
 * Returning a non-null value overrides default behavior

## OnTurretTarget

``` csharp
object OnTurretTarget(AutoTurret turret, BaseCombatEntity entity)
{
    Puts("OnTurretTarget works!");
    return null;
}
```

 * Called when an autoturret attempts to target an entity
 * Returning a non-null value overrides default behavior

## OnTurretToggle

 ``` csharp
object OnTurretToggle(AutoTurret turret)
{
    Puts("OnTurretToggle works!");
    return null;
}
```

 * Called when an autoturret toggles powerstate (on/off)
 * Returning a non-null value overrides default behavior
