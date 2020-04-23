Class constructor
	This:C1470.method:=Method called on error:C704
	ON ERR CALL:C155("ignoreError")
	
Function catch
	ON ERR CALL:C155(This:C1470.method)
	
Function finally
	ON ERR CALL:C155(This:C1470.method)
	