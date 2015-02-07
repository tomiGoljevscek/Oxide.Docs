# Getting Started

``` csharp
We need a CSharp example here
```

``` javascript
We need a JavaScript example here
```

``` lua
PLUGIN.Title = "Title of Plugin"
PLUGIN.Version = V(0, 1, 0)
PLUGIN.Description = "Plugin description"
PLUGIN.Author = "Your Name"


PLUGIN.Url = "http://forum.rustoxide.com/resources/681/"
PLUGIN.ResourceId = 681
```

``` python
We need a Python example here
```

Every plugin has to start somewhere, and this is it. The most important part of every plugin is the required Title, Version, Description, and Author variables. These are the bare minimum that every plugin needs, else it will not load and you'll have some unhappy users!

The title variable is what defines your plugin. This can be either a "codename" such as "Casper" or a short description such as "Invisible Admin", just make sure to pick something that uniquely identifies your plugin.

The version variable is another important point. It is used to tell users if the version of the plugin they have installed is outdated or not. Always make sure to increment your version with each release you make on our site.

The description variable is just that, a description of your plugin. This isn't as important as the other variables, but it does help users identify your plugin in case the title isn't enough. Make it good, but not too long!

Last but not least, the author variable. This is what gives you credit where credit is due.

You can always add additional variables, but these are the minimum that you must have. Other common ones are Url and ResourceId., which are mainly for quick access to your release page and for support with updater tools.