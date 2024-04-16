// If the score was updated
// we restart the animation
/*if(!(previousScore == global.playerScore))
{
	// Animate the score with an animationCurve
	global.gotScore = false;

	//Set  yScale to be that of the animationCurve
	var channel = animcurve_get_channel(anmCrvLLGetScoreCurve, 0);
	var value = animcurve_channel_evaluate(channel, scoreAnimPos);
	yScale = 1+(value*2);

	scoreAnimPos += 0.05;

	// Was the animation finished?
	if(scoreAnimPos >= 1)
	{
		// Reset all variables
		global.gotScore = false;
		previousScore = global.playerScore;
		scoreAnimPos = 0;
		yScale = 1;
	}
}