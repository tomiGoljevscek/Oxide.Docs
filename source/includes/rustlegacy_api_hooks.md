# Rust Legacy API Hooks

## Plugin hooks

### Init()
 * Called when the plugin is being loaded
 * Other plugins may or may not be present, dependant on load order
 * Other plugins WILL have been executed though, so globals exposed by them will be present

### LoadDefaultConfig()
 * Called when the config for the plugin should be initialized
 * Only called if the config file does not already exist

### Unload()
 * Called when the plugin is being unloaded

### OnPluginLoaded(Plugin plugin)
 * Called when a specific plugin has been loaded

### OnPluginUnloaded(Plugin plugin)
 * Called when a specific plugin has been unloaded

## General hooks

### OnInitLogging()
 * Called from ServerInit.Awake
 * No return behavior
 * Used internally by Oxide to start Unity logging

### ModifyTags(string oldtags)
 * Called from Rust.Steam.Server.GetTags
 * Returning a string overrides the tags with new ones
 * Used by RustLegacyCore and abstracted into BuildServerTags

### BuildServerTags(IList<string> tags)
 * Called from RustLegacyCore.ModifyTags
 * No return behavior
 * Add tags to the list, they will be concat'd at the end

### OnServerInitialized()
 * Called from ServerInit.Destroy through an additional component added by RustLegacyExtension
 * No return behavior
 * Called after the server startup has been completed and is awaiting connections

### OnServerSave()
 * Called from ServerSaveManager.Save
 * No return behavior
 * Called before the server saves and rotates the .sav files

### OnServerShutdown()
 * Called from global.quit
 * No return behavior
 * Called before the server starts the shutdown sequence
 * This should generally not be used by plugins, instead use the Unload hook

### OnRunCommand(ConsoleSystem.Arg arg, bool wantreply)
 * Called from ConsoleSystem.RunCommand
 * Return true to override Rust's command handling system
 * Useful for intercepting commands before they get to their intended target (like chat.say)
 * Used by RustLegacyCore to implement chat commands

### OnDatablocksInitialized
 * Called from DatablockDictionary.Initialize
 * No return behavior
 * Called when all datablocks have been loaded

### OnResourceNodeLoaded(ResourceTarget resource)
 * Called from ResourceTarget.Awake
 * No return behavior
 * Called when a resource is initializing

## Player hooks

### OnUserApprove(ClientConnection connection, uLink.NetworkPlayerApproval approval, ConnectionAcceptor acceptor)
 * Called from ConnectionAcceptor.uLink_OnPlayerApproval
 * Returning a non-null value overrides default behavior, plugin should call approval.Deny if it does this
 * Used by RustLegacyCore and abstracted into CanClientLogin

### CanClientLogin(ClientConnection connection, uLink.NetworkPlayerApproval)
 * Called from RustLegacyCore.OnUserApprove
 * Returning a uLink.NetworkConnectionError will reject the connection, returning anything else will allow the connection

### OnPlayerConnected(NetUser netuser)
 * Called from ServerManagement.OnUserConnected
 * No return behavior
 * Called before the player object is created, but after the player has been approved

### OnPlayerDisconnected(uLink.NetworkPlayer networkplayer)
 * Called from ConnectionAcceptor.uLink_OnPlayerDisconnected
 * No return behavior
 * Called after the player has disconnected from the server

### OnPlayerSpawn(PlayerClient client, bool usecamp, RustProto.Avatar avatar)
 * Called from ServerManagement.SpawnPlayer
 * No return behavior
 * Called when the player spawns

### OnPlayerChat(NetUser netuser, string message)
 * Called from RustLegacyCore.OnRunCommand
 * Returning a non-null value overrides default behavior of chat, not commands

### OnItemCraft(CraftingInventory inventory, BlueprintDataBlock blueprint, int amount, ulong starttime)
 * Called from CraftingInventory.OnItemCraft
 * Returning non-null overrides default behavior
 * Called when a player starts crafting an item

### OnBlueprintUse(BlueprintDataBlock blueprint, IBlueprintItem item)
 * Called from BlueprintDataBlock.UseItem
 * Returning non-null overrides default behavior
 * Called when a player tries to study a blueprint

### OnResearchItem(ResearchToolItem<T> item, IInventoryItem otheritem)
 * Called from ResearchToolItem<T>.TryCombine
 * Returning a InventoryItem.MergeResult will cancel default behavior
 * Called when a player tries to research an item

### OnPlayerVoice(NetUser netuser, List<uLink.NetworkPlayer> players)
 * Called from RustLegacyCore.OnClientSpeak
 * Called when a player uses in-game voice communication

## Entity hooks

### OnAirdrop(Vector3 position)
 * Called from SupplyDropZone.CallAirDropAt
 * No return behavior
 * Called when an airdrop has been called

### OnProcessDamageEvent(TakeDamage takedamage, DamageEvent damage)
 * Called from TakeDamage.ProcessDamageEvent
 * Returning a non-null value overrides default behavior
 * Used by RustLegacyCore and abstracted in ModifyDamage, OnHurt and OnKilled

### ModifyDamage(TakeDamage takedamage, DamageEvent damage)
 * Called from RustLegacyCore.OnProcessDamageEvent
 * Returning a non-null value overrides default behavior
 * Called when any kind of entity takes damage
 * Modify the DamageEvent object and return it to 'apply' the modifications
    
### OnHurt(TakeDamage takedamage, DamageEvent damage)
 * Called from RustLegacyCore.OnProcessDamageEvent
 * No return behavior
 * Called when any kind of entity takes damage

### OnKilled(TakeDamage takedamage, DamageEvent damage)
 * Called from RustLegacyCore.OnProcessDamageEvent
 * No return behavior
 * Called when any kind of entity was killed

## Item hooks

### OnItemAdded(Inventory inventory, int slot, IInventoryItem item)
 * Called from Inventory.ItemAdded
 * No return behavior
 * Called when an item was added to an inventory

### OnItemRemoved(Inventory inventory, int slot, IInventoryItem item)
 * Called from Inventory.ItemRemoved
 * No return behavior
 * Called when an item was removed from an inventory
 
### OnItemDeployed(DeployableObject deployable, NetUser user)
 * Called from DeployableItemDataBlock.DoAction1
 * No return behavior
 * Called when an item was deployed by a player

## Structure hooks

### OnStructureBuilt(StructureComponent structure, NetUser user)
 * Called from StructureComponentDataBlock.DoAction1
 * No return behavior
 * Called when an structure was built by a player

### OnStructureDecay(StructureMaster master)
 * Called from StructureMaster.DoDecay
 * Returning a non-null value overrides default behavior
 * Called when a structure tries to decay

### OnDoorToggle(BasicDoor door, ulong timestamp, Controllable controllable)
 * Called from BasicDoor.ToggleStateServer
 * Returning true allows the state of the door to be toggled and returning false denies the state of the door being toggled, returning anything else will resume default behavior
 * Called when a player attempts to open or close a door