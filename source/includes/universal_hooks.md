# Universal Hooks

**Available for all supported games**

[![7 Days to Die](7-days-to-die/favicon-32x32.png)](/7-days-to-die/)
[![Beasts of Prey](beasts-of-prey/favicon-32x32.png)](/beasts-of-prey/)
[![Blockstorm](blockstorm/favicon-32x32.png)](/blockstorm/)
[![Hurtworld](hurtworld/favicon-32x32.png)](/hurtworld/)
[![Reign of Kings](reign-of-kings/favicon-32x32.png)](/reign-of-kings/)
[![Rust](rust/favicon-32x32.png)](/rust/)
[![Rust Legacy](rust-legacy/favicon-32x32.png)](/rust-legacy/)
[![The Forest](the-forest/favicon-32x32.png)](/the-forest/)
[![Unturned](unturned/favicon-32x32.png)](/unturned/)

## Init

``` csharp
void Init()
{
    Puts("Init works!");
}
```

``` lua
function PLUGIN:Init()
    print("Init works!")
end
```

``` javascript
Init: function() {
  print("Init works!");
}
```

``` coffeescript
Init: ->
  print "Init works!"
```

``` python
def Init():
  print "Init works!"
```

 * Called when a plugin is being loaded
 * Other plugins may or may not be present, dependant on load order
 * Other plugins will have been executed though, so globals exposed by them will be present

## Unload

``` csharp
void Unload()
{
    Puts("Save files, destroy timers, etc.");
}
```

``` lua
function PLUGIN:Unload()
    print("Save files, destroy timers, etc.")
end
```

``` coffeescript
Unload: ->
  print "Save files, destroy timers, etc."
```

``` javascript
Unload: function() {
  print("Save files, destroy timers, etc.");
}
```

``` python
def Unload():
  print "Save files, destroy timers, etc."
```

 * Called when a plugin is being unloaded

## LoadDefaultConfig

``` csharp
protected override void LoadDefaultConfig()
{
    Puts("Default configuration created");
}
```

``` lua
function PLUGIN:LoadDefaultConfig()
    print("Default configuration created")
end
```

``` coffeescript
LoadDefaultConfig: ->
  print "Default configuration created"
```

``` javascript
LoadDefaultConfig: function() {
  print("Default configuration created");
}
```

``` python
def LoadDefaultConfig():
  print "Default configuration created"
```

 * Called when the config for a plugin should be initialized
 * Only called if the config file does not already exist

## OnFrame

``` csharp
void OnFrame()
{
    Puts("OnFrame works!");
}
```

``` lua
function PLUGIN:OnFrame()
    print("OnFrame works!")
end
```

``` coffeescript
OnFrame: ->
  print "OnFrame works!"
```

``` javascript
OnFrame: function() {
  print("OnFrame works!");
}
```

``` python
def OnFrame():
  print "OnFrame works!"
```

 * Placeholder

## OnPluginLoaded

``` csharp
void OnPluginLoaded(Plugin name)
{
    Puts("Plugin '" + name + "' has been loaded");
}
```

``` lua
function PLUGIN:OnPluginLoaded(name)
    print("Plugin '" .. name .. "' has been loaded")
end
```

``` coffeescript
OnPluginLoaded: (name) =>
  print "Plugin '#{name}' has been loaded"
```

``` javascript
OnPluginLoaded: function(name) {
  print("Plugin '" + name + "' has been loaded");
}
```

``` python
def OnPluginLoaded(name):
  print "OnPluginLoaded works!"
```

 * Called when a plugin has been loaded

## OnPluginUnloaded

``` csharp
void OnPluginUnloaded(Plugin name)
{
    Puts("Plugin '" + name + "' has been unloaded);
}
```

``` lua
function PLUGIN:OnPluginUnloaded(name)
    print("Plugin '" .. name .. "' has been unloaded")
end
```

``` coffeescript
OnPluginUnloaded: (name) =>
  print "Plugin '#{name}' has been unloaded"
```

``` javascript
OnPluginUnloaded: function(name) {
  print("Plugin '" + name + "' has been unloaded");
}
```

``` python
def OnPluginUnloaded(name):
  print "OnPluginUnloaded works!"
```

 * Called when a plugin has been unloaded

## OnServerInitialized

``` csharp
void OnServerInitialized()
{
    Puts("OnServerInitialized works!");
}
```

``` lua
function PLUGIN:OnServerInitialized()
    print("OnServerInitialized works!")
end
```

``` coffeescript
OnServerInitialized: ->
  print "OnServerInitialized works!"
```

``` javascript
OnServerInitialized: function() {
  print("OnServerInitialized works!");
}
```

``` python
def OnServerInitialized():
  print "OnServerInitialized works!"
```

 * No return behavior
 * Called after the server startup has been completed and is awaiting connections

## OnServerSave

``` csharp
void OnServerSave
{
    Puts("OnServerSave works!");
}
```

``` lua
function PLUGIN:OnServerSave()
    print("OnServerSave works!")
end
```

``` coffeescript
OnServerSave: ->
  print "OnServerSave works!"
```

``` javascript
OnServerSave: function() {
  print("OnServerSave works!");
}
```

``` python
def OnServerSave():
  print "OnServerSave works!"
```

 * No return behavior
 * Called before the server saves and shuts down

## OnUserPermissionGranted

``` csharp
void OnUserPermissionGranted(string name, string perm)
{
    Puts("User '" + name + "' granted permission: " + perm);
}
```

``` lua
function PLUGIN:OnUserPermissionGranted(name, perm)
    print("User '" .. name .. "' granted permission: " .. perm)
end
```

``` coffeescript
OnUserPermissionGranted: (name, perm) =>
  print "User '#{name}' granted permission: #{perm}"
```

``` javascript
OnUserPermissionGranted: function(name, perm) {
  print("User '" + name + "' granted permission: " + perm);
}
```

``` python
def OnUserPermissionGranted(name, perm):
  print "OnUserPermissionGranted works!"
```

 * Called when a permission has been granted to a user

## OnUserPermissionRevoked

``` csharp
void OnUserPermissionRevoked(string name, string perm)
{
    Puts("User '" + name + "' revoked permission: " + perm);
}
```

``` lua
function PLUGIN:OnUserPermissionRevoked(name, perm)
    print("User '" .. name .. "' revoked permission: " .. perm)
end
```

``` coffeescript
OnUserPermissionRevoked: (name, perm) =>
  print "User '#{name}' revoked permission: #{perm}"
```

``` javascript
OnUserPermissionRevoked: function(name, perm) {
  print("User '" + name + "' revoked permission: " + perm);
}
```

``` python
def OnUserPermissionRevoked(name, perm):
  print "OnUserPermissionRevoked works!"
```

 * Called when a permission has been revoked from a user

## OnGroupPermissionGranted

``` csharp
void OnGroupPermissionGranted(string name, string perm)
{
    Puts("Group '" + name + "' granted permission: " + perm);
}
```

``` lua
function PLUGIN:OnGroupPermissionGranted(name, perm)
    print("Group '" .. name .. "' granted permission: " .. perm)
end
```

``` coffeescript
OnGroupPermissionGranted: (name, perm) =>
  print "Group '#{name}' granted permission: #{perm}"
```

``` javascript
OnGroupPermissionGranted: function(name, perm) {
  print("Group '" + name + "' granted permission: " + perm);
}
```

``` python
def OnGroupPermissionGranted(name, perm):
  print "OnGroupPermissionGranted works!"
```

 * Called when a permission has been granted to a group

## OnGroupPermissionRevoked

``` csharp
void OnGroupPermissionRevoked(string name, string perm)
{
    Puts("Group '" + name + "' revoked permission: " + perm);
}
```

``` lua
function PLUGIN:OnGroupPermissionRevoked(name, perm)
    print("Group '" .. name .. "' revoked permission: " .. perm)
end
```

``` coffeescript
OnGroupPermissionRevoked: (name, perm) =>
  print "Group '#{name}' revoked permission: #{perm}"
```

``` javascript
OnGroupPermissionRevoked: function(name, perm) {
  print("Group '" + name + "' revoked permission: " + perm);
}
```

``` python
def OnGroupPermissionRevoked(name, perm):
  print "OnGroupPermissionRevoked works!"
```

 * Called when a permission has been revoked from a group
