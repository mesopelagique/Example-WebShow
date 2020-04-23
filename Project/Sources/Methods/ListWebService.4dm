//%attributes = {}

$output:=cs:C1710.StringBuilder.new("")

$current:=WEB Server:C1674()
$servers:=WebServerList ()

For each ($server;$servers)
	If (Not:C34($server.isRunning))
		$server.start()
	End if 
End for each 


  // output

$output.append("<html>")
$output.append("<head>")
$output.append("<link href='/style.css' rel='stylesheet' type='text/css'>")
$output.append("</head>")
$output.append("<body>")
$output.append("<h1>").append($current.name).append("</h1>")

For each ($server;$servers)
	If ($current.name#$server.name)
		$output.append("<a class='fav' href='")
		$url:=cs:C1710.StringBuilder.new("http://")
		$host:=$server.IPAddressToListen
		If ($host="0.0.0.0")  // listen to all ip
			$host:="localhost"
		End if 
		$url.append($host).append(":").append($server.HTTPPort)
		
		$output.append($url.toString())
		
		$output.append("'>")
		
		$output.append("<h2>").append($server.name).append("</h2>")
		$output.append("<img src='").append($server.name).append(".png")
		$output.append("' alt='").append($server.name).append("'/>")
		
		$output.append("</a>")
	End if 
End for each 
$output.append("</body>")
$output.append("</html>")

WEB SEND TEXT:C677($output.toString())