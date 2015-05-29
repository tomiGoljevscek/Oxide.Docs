# General Hooks

## OnServerInitialized

``` csharp
private void OnServerInitialized()
{
    Puts("OnServerInitialized works!");
}
```

``` javascript
We need a JavaScript example here
```

``` lua
We need a Lua example here
```

``` python
We need a Python example here
```

**Available for:**  
![Rust](images/icon-rust.png)
![Rust Legacy](images/icon-legacy.png)
![7 Days to Die](images/icon-7dtd.png)
![Reign of Kings](images/icon-rok.png)

 * Called after the server startup has been completed and is awaiting connections

## OnServerSave

``` csharp
private void OnServerSave()
{
    Puts("OnServerSave works!");
}
```

``` javascript
We need a JavaScript example here
```

``` lua
We need a Lua example here
```

``` python
We need a Python example here
```

**Available for:**  
![Rust](images/icon-rust.png)
![Rust Legacy](images/icon-legacy.png)
![7 Days to Die](images/icon-7dtd.png)
![Reign of Kings](images/icon-rok.png)

 * Called before the server saves world and player data

## OnServerShutdown

``` csharp
private void OnServerShutdown()
{
    Puts("OnServerShutdown works!");
}
```

``` javascript
We need a JavaScript example here
```

``` lua
We need a Lua example here
```

``` python
We need a Python example here
```

**Available for:**  
![Rust](images/icon-rust.png)
![Rust Legacy](images/icon-legacy.png)
![7 Days to Die](images/icon-7dtd.png)
![Reign of Kings](images/icon-rok.png)

 * Called before the server starts the shutdown sequence
 * This should generally not be used by plugins, instead use the Unload hook

## OnTick

``` csharp
private void OnTick()
{
    Puts("OnTick works!");
}
```

``` javascript
We need a JavaScript example here
```

``` lua
We need a Lua example here
```

``` python
We need a Python example here
```

**Available for:**  
![Rust](images/icon-rust.png)

 * Called every tick (defined by the tick rate of the server)
