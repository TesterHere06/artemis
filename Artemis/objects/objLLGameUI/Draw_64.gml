// Draw the score if 
// we are playing the game
if(global.gameState == GameState.playing)
{
	draw_set_colour($FFFFFFFF & $ffffff);draw_set_alpha(1);

	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	draw_set_font(fontLLFontHighscore);

	// Draw the score with the scale of
	// yScale (which is animated with an animationCurve)
	// in Step
	draw_text_transformed(640-(yScale/2), 64-(yScale/2), "" + string(global.playerScore), 4+yScale, 4+yScale, 0);
}

// If we are in the menu state,
// show the leaderboards
if(global.gameState == GameState.menu)
{
	for(i = 0; i < 10; i += 1) {
		// Are there any scores to show?
		if(!(LLHighscoresTopRankList()[i] == ""))
		{
			text = LLHighscoresTopRankList()[i]+". ";
		
			// If the players have a name
			// output that
			if(!(LLHighscoresTopNamesList()[i] == ""))
			{
				text += LLHighscoresTopNamesList()[i];
			}
		
			// Otherwise, output their ID instead
			else
			{
				text += LLHighscoresTopIDList()[i];
			}
		
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
		
			// If the score is the players score
			// change the font color to highlight it
			if(LLHighscoresTopRankList()[i] == LLPlayerRank())
			{
				draw_set_colour($FF1EACFF & $ffffff);
				var l7C35EBB1_0=($FF1EACFF >> 24);
				draw_set_alpha(l7C35EBB1_0 / $ff);
			}
		
			else
			{
				draw_set_colour($FFFFFFFF & $ffffff);
				var l2C3F5C83_0=($FFFFFFFF >> 24);
				draw_set_alpha(l2C3F5C83_0 / $ff);
			}
		
			// The text variable here is formatted as:
			// Rank+". "+PlayerName/PlayerID
			// Example:
			// 10. PlayerName
			draw_text_transformed(850, 100+(i*60), "" + string(text), 3, 3, 0);
		
			draw_set_halign(fa_right);
			draw_set_valign(fa_top);
		
			// Draw the score on the right side
			draw_text_transformed(1250, 100+(i*60), "" + string(LLHighscoresTopScoreList()[i]), 3, 3, 0);
		}
	}
}

// If we are in the dead state
// Show the players score highlighted
if(global.gameState == GameState.dead)
{
	for(i = 0; i < 10; i += 1) {
		// Are there any scores to show?
		if(!(LLHighscoresCenteredRankList()[i] == ""))
		{
			text = LLHighscoresCenteredRankList()[i]+". ";
		
			// If the players have a name
			// output that
			if(!(LLHighscoresCenteredNamesList()[i] == ""))
			{
				text += LLHighscoresCenteredNamesList()[i];
			}
		
			// Otherwise, output their ID instead
			else
			{
				text += LLHighscoresCenteredIDList()[i];
			}
		
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
		
			// If the score is the players score
			// change the font color to highlight it
			if(LLHighscoresCenteredRankList()[i] == LLPlayerRank())
			{
				draw_set_colour($FF1EACFF & $ffffff);
				var l26033C26_0=($FF1EACFF >> 24);
				draw_set_alpha(l26033C26_0 / $ff);
			}
		
			else
			{
				draw_set_colour($FFFFFFFF & $ffffff);
				var l5ED1FB76_0=($FFFFFFFF >> 24);
				draw_set_alpha(l5ED1FB76_0 / $ff);
			}
		
			// The text variable here is formatted as:
			// Rank+". "+PlayerName/PlayerID
			// Example:
			// 10. PlayerName
			draw_text_transformed(850, 100+(i*60), "" + string(text), 3, 3, 0);
		
			draw_set_halign(fa_right);
			draw_set_valign(fa_top);
		
			// Draw the score on the right side
			draw_text_transformed(1250, 100+(i*60), "" + string(LLHighscoresCenteredScoreList()[i]), 3, 3, 0);
		}
	}
}