
Class constructor
	C_TEXT:C284($1)
	If (Count parameters:C259>0)
		This:C1470.elements:=New collection:C1472($1)
	Else 
		This:C1470.elements:=New collection:C1472()
	End if 
	
Function append
	C_VARIANT:C1683($1)
	C_OBJECT:C1216($0)
	This:C1470.elements.push(String:C10($1))
	$0:=This:C1470
	
Function toString
	C_TEXT:C284($0)
	$0:=This:C1470.elements.join("")