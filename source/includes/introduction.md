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
```

Oxide is a complete rewrite of the popular, original Oxide API and Lua plugin framework. Previously only available for the legacy Rust game, Oxide now supports numerous games. Oxide's focus is on modularity and extensibility. The core is highly abstracted and loosely coupled, and could be used to mod any game that uses the .NET Framework.

Plugins can currently be developed for the games [Reign of Kings](http://www.reignofkings.net/), [Rust](http://playrust.com/) (Experimental), [Rust Legacy](http://playrust.com/), and [7 Days to Die](http://7daystodie.com/), with support for more on the way! Oxide provides support for multiple programming languages to develop plugins: [CSharp](http://en.wikipedia.org/wiki/C_Sharp_(programming_language)), [JavaScript](http://en.wikipedia.org/wiki/JavaScript), [Lua](http://www.lua.org/), and [Python](http://en.wikipedia.org/wiki/Python_(programming_language)).

Database support for plugins is also available in the [MySQL](http://www.mysql.com/) and [SQLite](http://www.sqlite.org/) varieties, so if JSON files aren't enough, you have options! If you'd prefer another database type, those can always be accessed via web requests and your own custom bridge script on your site.
