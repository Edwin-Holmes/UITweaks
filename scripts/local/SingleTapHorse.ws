@wrapMethod(CPlayerInput) function OnCommSpawnHorse( action : SInputAction ) {
	var disableSingleTap: bool = theGame.GetInGameConfigWrapper().GetVarValue('UITweaks', 'DisableSingleTapHorse');
    var retVal: bool;
    retVal = wrappedMethod(action);

	if( theInput.LastUsedGamepad() && !disableSingleTap && !thePlayer.GetLeftStickSprint() ) {
		if( IsReleased( action )  ) {
		    if( IsActionAllowed( EIAB_CallHorse ) 
		    	&& !thePlayer.IsInInterior() && !thePlayer.IsInAir() )
		    {
		    	if ( thePlayer.IsHoldingItemInLHand () ) {
		    		thePlayer.OnUseSelectedItem(true);
		    		thePlayer.SetPlayerActionToRestore ( PATR_CallHorse );
		    	}
		    	else {
		    		theGame.OnSpawnPlayerHorse();
		    	}			
		    }

		    else {
		    	if( thePlayer.IsInInterior() ) {
		    		thePlayer.DisplayActionDisallowedHudMessage( EIAB_Undefined, false, true );
    	        }
		    	else {
		    		thePlayer.DisplayActionDisallowedHudMessage( EIAB_CallHorse );
    	        }
		    }

		    retVal = true;
    	}
	} 
    
    return retVal;
}