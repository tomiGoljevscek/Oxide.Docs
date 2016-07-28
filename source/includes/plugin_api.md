# Plugin API

Oxide allows you to expose methods in your plugin and make them available to other plugins. This allows you to access objects or properties from other plugins without having to replicate functionality yourself.

## Exposing an API method

``` csharp
namespace Oxide.Plugins
{
    [Info("EpicPlugin", "Unknown", 0.1)]
    [Description("Makes epic stuff happen")]

    class EpicPlugin : CovalencePlugin
    {
        // Plugin methods can be a simple bool that is returned
        public bool GetReturn()
        {
            return true;
        }

        // Plugin methods can take parameters and return simple types
        public string TakeParam(string param, int secondParam)
        {
            if (param == "first parameter") return param;
            else return "First parameter didn't match!";
        }

        // To return complex types, they should first be converted
        // into builtin types (e.g. JSON.net types like JObject, JArray, etc. or builtin
        // collections like System.Collections.Generic.Dictionary)
        public JObject ReturnObject()
        {
            var myObject = new JObject();
            myObject["key"] = "value";
            myObject["array"] = new JArray();
            return myObject;
        }

        // Plugin methods don't have to return something
        public void SendMessage()
        {
            Puts("You just called the 'SendMessage' method!");
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
from System.Collections.Generic import Dictionary
from System.Collections.Generic import List

class EpicPlugin:
    def __init__(self):
        self.Title = "EpicPlugin"
        self.Description = "Makes epic stuff happen"
        self.Author = "Unknown"
        self.Version = V(0, 1, 0)

    # Plugin methods can be a simple bool that is returned
    def GetReturn(self):
        return True

    # Plugin methods can take parameters and return simple types
    def TakeParam(self, param, secondParam):
        if param == "first parameter":
            return param
        else:
            return "First parameter didn't match!"

    # To return complex types, they should first be converted
    # into C# builtin types (e.g. System.Collections.Generic.Dictionary)
    def ReturnObject(self):
        myObject = Dictionary[str, object]()
        myObject["key"] = "value"
        myObject["array"] = List[object]()
        return myObject

    # Plugin methods don't have to return something
    def SendMessage(self):
        print("You just called the 'SendMessage' method!")
```

Exposing an API method allows other plugins to call that method.

For example, you could write a plugin that does some player management, then allow other plugins to "query" it via an API method to get a list of players who have certain privileges set in the original plugin.

## Calling an API method

``` csharp
namespace Oxide.Plugins
{
    [Info("SecondEpicPlugin", "Unknown", 0.1)]
    [Description("Makes more epic stuff happen")]

    class SecondEpicPlugin : CovalencePlugin
    {
        // First, add a reference to the plugin you are trying to call
        // The name of this field needs to be the exact name of the desired plugin
        // eg. We are referencing the example plugin above which is called 'EpicPlugin'
        [PluginReference] Plugin EpicPlugin;
        
        // It's a good idea to check if the plugin you're trying to call
        // has been loaded by oxide (otherwise you can't call the method)
        void OnServerInitialized()
        {
            // Note: Trying to do this check in the plugin Init() method may
            // fail, as the plugin load order may be different each time
            if (EpicPlugin == null)
            {
                PrintWarning("Plugin 'EpicPlugin' was not found!");
            }
        }

        void CallApi()
        {
            // Plugin methods return objects, so cast the API call to the type
            // you're expecting
            var getTypedReturn = (bool)EpicPlugin?.Call("GetReturn");

            // Send parameters through as variables after the method name
            var takeParam = (string)EpicPlugin?.Call("TakeParam", "param1", 1024);

            // Use JSON.net to process the returned object
            var returnedObject = EpicPlugin?.Call("ReturnObject");

            // Call a plugin to do some work without returning anything
            EpicPlugin?.Call("SendMessage");
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
class SecondEpicPlugin:
    def __init__(self):
        self.Title = "SecondEpicPlugin"
        self.Description = "Makes more epic stuff happen"
        self.Author = "Unknown"
        self.Version = V(0, 1, 0)

    def Init(self):
        self.EpicPlugin = plugins.Find("EpicPlugin")

    def CallApi(self):
        if self.EpicPlugin is None:
            return

        # Python is dynamically typed, so casting is not necessary:
        # the structure of the type matters, not the name
        getReturn = self.EpicPlugin.Call("GetReturn")

        # Send parameters through as variables after the method name
        takeParam = self.EpicPlugin.Call("TakeParam", "param1", 1024)

        # Access returned object like dictionary
        returnedObject = self.EpicPlugin.Call("ReturnObject")

        # Call a plugin to do some work without returning anything
        self.EpicPlugin.Call("SendMessage")
```

Calling an API method allows you to access results from another plugin.
