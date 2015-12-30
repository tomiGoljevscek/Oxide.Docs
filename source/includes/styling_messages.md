# Styling Messages

> Render the text in boldface

``` html
We are <b>not</b> amused.
```

> Render the text in italics

``` html
We are <i>usually</i> not amused.
```

> It is possible to apply more than one style to a section of text by nesting one element inside another.

``` html
We are <b><i>definitely not</i></b> amused
```

> Note the ordering of the ending tags, which is in reverse to that of the starting tags. The reason for this is perhaps clearer when you consider that the inner tags need not span the whole text of the outermost element.

``` html
We are <b>absolutely <i>definitely</i> not</b> amused
```

> Change the size of text, by pixel value

``` html
We are <size=50>largely</size> unaffected.
```

> Change the color of text

``` html
<color=#00ffffff>Hello world</color>
```

Messages sent from the server via plugins can be stylized using basic HTML. Styling is limited to bold, italic, size, and color.

The color can be specified in the traditional HTML format. `#rrggbbaa`... where the letters correspond to pairs of hexadecimal digits denoting the red, green, blue and alpha (transparency) values for the color.

Another option is to use the name of the color. This is easier to understand but naturally, the range of colors is limited and full opacity is always assumed. `<color=cyan>`... The available color names are given in the table below.

|Color Name                 |Hex Value  |Swatch                            |
|---------------------------|-----------|----------------------------------|
|aqua (same as cyan)        |#00ffffff  |![](cyan-swatch.png)       |
|black                      |#000000ff  |![](black-swatch.png)      |
|blue                       |#0000ffff  |![](blue-swatch.png)       |
|brown                      |#a52a2aff  |![](brown-swatch.png)      |
|cyan (same as aqua)        |#00ffffff  |![](cyan-swatch.png)       |
|darkblue                   |#0000a0ff  |![](darkblue-swatch.png)   |
|fuchsia (same as magenta)  |#ff00ffff  |![](magenta-swatch.png)    |
|green                      |#008000ff  |![](green-swatch.png)      |
|grey                       |#808080ff  |![](grey-swatch.png)       |
|lightblue                  |#add8e6ff  |![](lightblue-swatch.png)  |
|lime                       |#00ff00ff  |![](lime-swatch.png)       |
|magenta (same as fuchsia)  |#ff00ffff  |![](magenta-swatch.png)    |
|maroon                     |#800000ff  |![](maroon-swatch.png)     |
|navy                       |#000080ff  |![](navy-swatch.png)       |
|olive                      |#808000ff  |![](olive-swatch.png)      |
|orange                     |#ffa500ff  |![](orange-swatch.png)     |
|purple                     |#800080ff  |![](purple-swatch.png)     |
|red                        |#ff0000ff  |![](red-swatch.png)        |
|silver                     |#c0c0c0ff  |![](silver-swatch.png)     |
|teal                       |#008080ff  |![](teal-swatch.png)       |
|white                      |#ffffffff  |![](white-swatch.png)      |
|yellow                     |#ffff00ff  |![](yellow-swatch.png)     |

_Source: [http://docs.unity3d.com/Manual/StyledText.html](http://docs.unity3d.com/Manual/StyledText.html)_
