---
title: Vending Machine Hooks
---

# Vending Machine Hooks

## CanAdministerVending

``` csharp
bool CanAdministerVending(VendingMachine machine, BasePlayer player)
{
    Puts("CanAdministerVending works!");
    return true;
}
```

 * Called when a player attempts to administer a vending machine
 * Returning true or false overrides default behavior

## CanUseVending

``` csharp
bool CanUseVending(VendingMachine machine, BasePlayer player)
{
    Puts("CanUseVending works!");
    return true;
}
```

 * Called when a player attempts to use a vending machine
 * Returning true or false overrides default behavior

## CanVendingAcceptItem

``` csharp
bool CanVendingAcceptItem(VendingMachine vending, Item item, int targetPos)
{
    Puts("CanVendingAcceptItem works!");
    return true;
}
```

 * Called when a player attempts to administer a vending machine
 * Returning true or false overrides default behavior

## OnAddVendingOffer

``` csharp
void OnAddVendingOffer(VendingMachine machine, BasePlayer player, ProtoBuf.VendingMachine.SellOrder sellOrder)
{
    Puts("OnAddVendingOffer works!");
}
```

 * Called when a player adds a sell order to a vending machine
 * No return behavior

## OnBuyVendingItem

``` csharp
object OnBuyVendingItem(VendingMachine machine, BasePlayer player, int sellOrderId, int numberOfTransactions)
{
    Puts("OnBuyVendingItem works!");
    return null;
}
```

 * Called when a player buys an item from a vending machine
 * Returning a non-null value overrides default behavior

## OnDeleteVendingOffer

``` csharp
void OnDeleteVendingOffer(VendingMachine machine, BasePlayer player)
{
    Puts("OnDeleteVendingOffer works!");
}
```

 * Called when a player deletes an offer from a vending machine
 * No return behavior

## OnOpenVendingAdmin

``` csharp
void OnOpenVendingAdmin(VendingMachine machine, BasePlayer player)
{
    Puts("OnOpenVendingAdmin works!");
}
```

 * Called when a player opens the admin ui for a vending machine
 * No return behavior

## OnOpenVendingShop

``` csharp
void OnOpenVendingShop(VendingMachine machine, BasePlayer player)
{
    Puts("OnOpenVendingShop works!");
}
```

 * Called when a player opens the customer ui for a vending machine
 * No return behavior

## OnOpenVendingShop

``` csharp
void OnRefreshVendingStock(VendingMachine machine, Item item)
{
    Puts("OnRefreshVendingStock works!");
}
```

 * Called when the stock on a vending machine is update
 * No return behavior

## OnRotateVendingMachine

``` csharp
object OnRotateVendingMachine(VendingMachine machine, BasePlayer player)
{
    Puts("OnRotateVendingMachine works!");
    return null;
}
```

 * Called when a player attempts to rotate a vending machine
 * Returning a non-null value overrides default behavior

## OnToggleVendingBroadcast

``` csharp
void OnToggleVendingBroadcast(VendingMachine machine, BasePlayer player)
{
    Puts("OnToggleVendingBroadcast works!");
}
```

 * Called when a player toggles the broadcasting of the vending machine
 * No return behavior

## OnVendingTransaction

``` csharp
bool OnVendingTransaction(VendingMachine machine, BasePlayer buyer, int sellOrderId, int numberOfTransactions)
{
    Puts("OnVendingTransaction works!");
    return true;
}
```

 * Called when a player attempts to buy an item from a vending machine
 * Returning true or false overrides default behavior
