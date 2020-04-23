
Class constructor
	If (Count parameters:C259>0)
		This:C1470.elements:=New collection:C1472($1)
	Else 
		This:C1470.elements:=New collection:C1472()
	End if 
	
Function append
	This:C1470.elements.push($1)
	$0:=This:C1470
	
Function toString
	$0:=This:C1470.elements.join("")