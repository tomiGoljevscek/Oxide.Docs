---
title: Plugin Calling
---

# Plugin Calling

Oxide allows you to expose methods in your plugin and make them available to other plugins. This allows you to access objects or properties from other plugins without having to replicate functionality yourself.

## Exposing a plugin's method

``` csharp
namespace Oxide.Plugins
{
    [Info("EpicStuff", "Unknown", 0.1)]
    [Description("Makes epic stuff happen")]
    class EpicStuff : CovalencePlugin
    {
        // Plugin methods can be a simple bool that is returned
        bool GetReturn()
        {
            return true;
        }

        // Plugin methods can take parameters and return simple types
        string TakeParam(string param, int secondParam)
        {
            if (param == "first parameter") return param;
            else return "First parameter didn't match!";
        }

        // To return complex types, they should first be converted
        // into builtin types (e.g. JSON.net types like JObject, JArray, etc. or builtin
        // collections like System.Collections.Generic.Dictionary)
        JObject ReturnObject()
        {
            var myObject = new JObject();
            myObject["key"] = "value";
            myObject["array"] = new JArray();
            return myObject;
        }

        // Plugin methods don't have to return something
        void SendMessage()
        {
            Puts("You just called the 'SendMessage' method!");
        }
    }
}
```

Exposing a plugin's method allows other plugins to call that method.

For example, you could write a plugin that does some player management, then allow other plugins to "query" it to get a list of players who have certain privileges set in the original plugin.

## Calling a plugin's method

``` csharp
namespace Oxide.Plugins
{
    [Info("SecondEpicStuff", "Unknown", 0.1)]
    [Description("Makes more epic stuff happen")]
    class SecondEpicStuff : CovalencePlugin
    {
        // First, add a reference to the plugin you are trying to call
        // The name of this field needs to be the exact name of the desired plugin
        // eg. We are referencing the example plugin above which is called 'EpicStuff'
        [PluginReference]
        Plugin EpicStuff;

        // It's a good idea to check if the plugin you're trying to call
        // has been loaded by oxide (otherwise you can't call the method)
        void OnServerInitialized()
        {
            // Note: Trying to do this check in the plugin Init() method may
            // fail, as the plugin load order may be different each time
            if (EpicStuff == null)
            {
                PrintWarning("Plugin 'EpicStuff' was not found!");
            }
        }

        void CallPlugin()
        {
            // Plugin methods return objects, so cast the API call to the type
            // you're expecting
            var getTypedReturn = (bool)EpicStuff?.Call("GetReturn");

            // Send parameters through as variables after the method name
            var takeParam = (string)EpicStuff?.Call("TakeParam", "param1", 1024);

            // Use JSON.net to process the returned object
            var returnedObject = EpicStuff?.Call("ReturnObject");

            // Call a plugin to do some work without returning anything
            EpicStuff?.Call("SendMessage");
        }
    }
}
```

Calling a plugin's method allows you to access results from another plugin.
