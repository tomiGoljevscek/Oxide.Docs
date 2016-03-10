# Plugin API

Oxide allows you to expose hooks in your plugin and make them available to other plugins. This allows you to access objects or properties from other plugins without having to replicate functionality yourself.

## Exposing an API Hook

``` csharp
namespace Oxide.Plugins
{
    [Info("EpicPlugin", "Unknown", 0.1)]
    [Description("Makes epic stuff happen")]

    class EpicPlugin : RustPlugin
    {
        // The HookMethod parameter is the name of the hook exposed
        // In this case, our hook is called "GetReturn"
        [HookMethod("GetReturn")]
        private bool GetReturn()
        {
            return true;
        }

        // Hooks can take parameters and return simple types
        [HookMethod("TakeParam")]
        private string TakeParam(string param, int secondParam)
        {
            if (param == "first parameter") return param;
            else return "First parameter didn't match!";
        }

        // To return complex types, they need to first be converted
        // into JSON.net types (JObject, JArray, etc)
        [HookMethod("ReturnObject")]
        private JObject ReturnObject()
        {
            var myObject = new JObject();
            myObject["key"] = "value";
            myObject["array"] = new JArray();
            return myObject;
        }

        // Hooks don't have to return anything
        [HookMethod("SendMessage")]
        private void SendMessage(BasePlayer player)
        {
            SendReply(player, "You just called the 'SendMessage' hook!");
        }
    }
}
```

``` lua
We need a Lua example here
```

``` coffeescript
We need a CoffeeScript example here
```

``` javascript
We need a javascript example here
```

``` python
We need a Python example here
```

Exposing an API hook allows other plugins to call that hook.

For example, you could write a plugin that does some player management, then allow other plugins to "query" it via an API hook to get a list of players who have certain privileges set in the original plugin.

## Calling an API Hook

``` csharp
namespace Oxide.Plugins
{
    [Info("SecondEpicPlugin", "Unknown", 0.1)]
    [Description("Makes epic stuff happen")]

    class SecondEpicPlugin : RustPlugin
    {
        // First, add a reference to the plugin you are trying to hook into
        // The name of this field needs to be the exact name of the desired plugin
        // eg. We are referencing the example plugin above which is called 'EpicPlugin'
        [PluginReference]
        private Plugin EpicPlugin;
        
        // It's a good idea to check if the plugin you're trying to hook into
        // has been loaded by oxide (otherwise you can't call the hook)
        private void OnServerInitialized()
        {
            // Note: Trying to do this check in the plugin Init() method may
            // fail, as the plugin load order may be different each time
            if (EpicPlugin == null)
            {
                PrintWarning("Plugin 'EpicPlugin' was not found!");
            }
        }

        private void CallApi()
        {
            // Plugin hooks return objects, so cast the API call to the type
            // you're expecting
            bool getTypedReturn = (bool)EpicPlugin?.Call("GetReturn");

            // Send parameters through as variables after the hook name
            string takeParam = (string)EpicPlugin?.Call("TakeParam", "param1", 1024);

            // Use JSON.net to process the returned object
            object returnedObject = EpicPlugin?.Call("ReturnObject");

            // Call a plugin to do some work without returning anything
            EpicPlugin?.Call("SendMessage", player);
        }
    }
}
```

``` lua
We need a Lua example here
```

``` coffeescript
We need a CoffeeScript example here
```

``` javascript
We need a javascript example here
```

``` python
We need a Python example here
```

Calling an API hook allows you to access results from another plugin