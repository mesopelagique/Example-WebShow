# WebServerList

## Issue
First `WEB Server list` provide only the current web server in memory.

So the components web server are not available

## Resolution 

My 3 components use a same nomenclature to provide their `Web Server` object

For a component XYZ, the method XYZWebServer will return the `Web Server` object
```4d
$0:=Web Server
````

Its seems to be impossible to have methods list from components, but we can get a list of available components.

So for each components, we try to execute the method
```4d
EXECUTE METHOD($componentName+"WebServer")
```

the we could get the full list with `WEB Server list`