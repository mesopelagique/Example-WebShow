//%attributes = {}
C_COLLECTION:C1488($0;$servers;$components)
$servers:=WEB Server list:C1716

If ($servers.length=1)
	ARRAY TEXT:C222($tTxt_components;0)
	COMPONENT LIST:C1001($tTxt_components)
	
	$components:=New collection:C1472()
	ARRAY TO COLLECTION:C1563($components;$tTxt_components)
	
	$🎣:=try ()
	$method:=Method called on error:C704
	For each ($component;$components)
		EXECUTE METHOD:C1007($component+"WebServer")
	End for each 
	$🎣.catch()
	
	$servers:=WEB Server list:C1716
End if 

$0:=$servers