\language "english"

\version "2.16.0"  % necessary for upgrading to future LilyPond versions.

\header {
  title = "First Movement"
}

\score {
  \new PianoStaff <<

	\new Staff {
	  \relative c' {
	    \key ef \major
	  
	    % measure 1
		<af'' ef>2 
		<<
		  {\voiceOne af4 g}
		  \new Voice {\voiceTwo b,2 }
        >> \oneVoice |

		% measure 2
		<<
		  {\voiceOne bf'4 af af2 }
		  \new Voice {\voiceTwo ef2 ef4. df8 }
        >> \oneVoice |
		
		% measure 3
		<<
		  {\voiceOne r4 af' bf8 af ef af }
		  \new Voice {\voiceTwo b,2 b2 }
        >> \oneVoice |		
		
		% measure 4
		<<
		  {\voiceOne bf'4 af2. }
		  \new Voice {\voiceTwo ef4 ef2 r4 }
		  \new Voice {\voiceThree b2 bf4~ bf8 b }
        >> \oneVoice |
		% also "measure 5" but typeset with only two voices
		<<
		  {\voiceOne bf'4 af2. }
		  \new Voice {\voiceTwo <ef b~>4 <ef~ b>4 <ef bf~>4 bf8 b }
        >> \oneVoice |
      }
	}
	
	\new Staff {
	  \relative c' {
	    \key ef \major
        \clef bass	
		
	    % measures 1
		R1 |
		% measure 2
		R1 |
		% measure 3
		R1 |
		% measure 4
		R1 |
		% measure 5
		R1 |
      }
	}
  >>
}