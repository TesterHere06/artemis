	for(i = 0; i < 13; i += 1) {
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
				draw_set_colour($FFFFFFFF & $ffffff);
				var l7C35EBB1_0=($FF1EACFF >> 24);
				draw_set_alpha(l7C35EBB1_0 / $ff);
			}
		
			else
			{
				draw_set_colour($FF1EACFF & $9e0000);
				var l2C3F5C83_0=($FFFFFFFF >> 24);
				draw_set_alpha(l2C3F5C83_0 / $ff);
			}
		
			// The text variable here is formatted as:
			// Rank+". "+PlayerName/PlayerID
			// Example:
			// 10. PlayerName
			draw_text_transformed(1365, 444+(i*30), "" + string(text), 3, 3, 0);
		
			draw_set_halign(fa_right);
			draw_set_valign(fa_top);
		
			// Draw the score on the right side
			draw_text_transformed(1706, 444+(i*30), "" + string(LLHighscoresTopScoreList()[i]), 3, 3, 0);
		}
	}