# Introduction

```
  _          _ _             
 | |__   ___| | | ___        
 | '_ \ / _ \ | |/ _ \       
 | | | |  __/ | | (_) |      
 |_| |_|\___|_|_|\___/     _ 
 __      _____  _ __| | __| |
 \ \ /\ / / _ \| '__| |/ _` |
  \ V  V / (_) | |  | | (_| |
   \_/\_/ \___/|_|  |_|\__,_|

So you want to develop plugins for Oxide?

We'll show you how to get started, along with sample code!
```

Oxide is a complete rewrite of the popular, original Oxide mod for the game Rust. Oxide has a focus on modularity and extensibility.

The core is highly abstracted and loosely coupled, and could be used to mod any game that uses .NET such as 7 Days to Die, The Forest, Space Engineers, and more. Support for games, plugin languages, and other functionality is added via extensions. When loading, Oxide 2 scans the binary folder for DLL extensions. Extension filenames are formatted as `Oxide.Ext.Name.dll`.

The current official extensions are listed below:

 * Oxide.Ext.CSharp - _Allows raw CSharp plugins to be loaded_
 * Oxide.Ext.JavaScript - _Allows JavaScript plugins to be loaded_
 * Oxide.Ext.Lua - _Allows Lua plugins to be loaded_
 * Oxide.Ext.Python - _Allows Python plugins to be loaded_
 * Oxide.Ext.Rust - _Provides support for the Rust Experimental server_
 * Oxide.Ext.Unity - _Provides support for Unity games_

Third-party, unofficial extensions available:

 * [Oxide.Ext.RustWeb](http://forum.rustoxide.com/resources/768/) - _A lightweight web server for the Rust Experimental server_
 * [dcodeIO.RustWeb.dll](http://forum.rustoxide.com/resources/768/) - _Provides generation of map images, and live map_

Examples of what extensions may be available in the future:

 * Oxide.Ext.IRC - _Allows plugins to access an IRC server_
 * Oxide.Ext.MySQL - _Allows plugins to access a MySQL database_
 * Oxide.Ext.SQLite - _Allows plugins to access a SQLite database_
 * Oxide.Ext.Updater - _Allows for automatic plugin checking and updating_
 * Oxide.Ext.SevenDaysToDie - _Provides support for the 7 Days to Die server_
