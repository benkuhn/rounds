\version "2.14.2"

%TODO -- add Hineh mah tov, Ego Sum Pauper

\layout { indent = 0.0\cm }

\paper {
  #(set-paper-size "letter")
  #(define bottom-margin (* 0.75 in))
  #(define left-margin (* 0.75 in))
  #(define line-width (* 7.25 in))
  #(define top-margin (* 0.75 in))
  ragged-right = ##f
  scoreTitleMarkup = \markup {
    \override #'(baseline-skip . 3.5)
    \column {
      \override #'(baseline-skip . 3.5)
      \huge \larger \bold \fill-line {
        \larger \fromproperty #'header:title
      }
      \fill-line {
        \fromproperty #'header:poet
        { \large \bold \fromproperty #'header:instrument }
        \fromproperty #'header:composer
      }
    }
  }
  tocItemMarkup = \markup \large \fill-line {
    \fromproperty #'toc:text \fromproperty #'toc:page
  }
  ragged-last-bottom = ##t
}
\layout {
  \context {
    \Score
    \override NonMusicalPaperColumn #'page-break-permission = ##f
  }
}

\book {

  \markuplist { \table-of-contents }
  \pageBreak

  \markup {}
  \tocItem "Ah, Comme C'est Chose et Belle"
  \score {
    \transpose a d \relative a' {
      \key a \minor
      \time 4/4
      a2 a4 a | d c b2 |
      a4^"*" c c c | b a4.( gis16 fis gis4) | \break
      a^"*" a f f | g a e2 |
      e'2^"*" f4 a | g e e2 |
      cis4^"*" a'4.( g8 f e | d4) a2. \bar "||"
    }

    \addlyrics {
      Ah, comme c'est chos -- e bel
      -- le de te lou -- er, Sei
      -- gneur, et de tres haute l'hon -- neur.
      Chan -- tez de coeur fi -- de
      -- le, chan -- tez! 
    }

    \header {
      title = "Ah, Comme C'est Chose Belle"
      composer = "Traditional"
    }
  }
  
  \markup{}
  \tocItem "All Praise to Thee"
  \score {
    \relative c' {
      \key c \major
      \time 4/4
      \partial 4 c4 | c b c c^"*" | d d e
      c | f f e e | d d c
      g' | f d e e | d d c
      g | a b c e | d d c \bar "||"
    }

    \addlyrics {
      All praise to thee, my God, this night,
      for all the bless -- ings of the light.
      Keep me, O keep me, King of Kings,
      Be -- neath thine own Al -- might -- y wings.
    }

    \header {
      title = "All Praise to Thee"
      composer = "Thomas Tallis"
      poet = "Thomas Ken"
    }
  }

  \markup{}
  \tocItem "Appalachian Round"
  \score {
    \transpose a g \relative c' {
      \key a \dorian
      \time 4/4
      a'4 g a e | fis8( e) d4 e2 | c4 c g' a | e4. a8 a2 |
      a4^"*" b c b | a b8( a) g2 | c4 c b c8( a) | g4. a8 a2 |
      e'4 d c8( d) e4 | d fis e2 | e8 d c4 d c8( d) | e4. e8 e2 |
      c4 b a g | a d8( c) b2 | c8( d) e4 a, g8( a) | b4. a8 a2 \bar "||"
    }

    \addlyrics {
      Take me back, O hills I love;
      Lift me from this lone -- ly bed;
      Light my way with stars a -- bove;
      Curl soft winds a -- bout my head.

      Wash my feet in cry -- stal streams;
      Cra -- dle my arms in boughs of oak;
      Breathe the scent of pine for dreams;
      Wrap me tight in earth -- en cloak.
    }

    \header {
      title = "Appalachian Round"
      composer = "Composer unknown (Tune: Welcome, Welcome, ev'ry guest, Southern Harmony #19b)"
      poet = "George Furse"
    }
  }

  \markup {}
  \tocItem "Alleluia"
  \score {
    \relative c'' {
      c1 | b | a | g | a2. b4 | c8( b a g a g f e | f2 g) | c,1 | \break
      r4^"*" c e c | g' d g a8( b) | c( b) a( b) c4 d | b r g2 ~ | g4 g f2 | e4 r c'2 ~ | c4 a b2 | c1 | \break
      c2. e4 | d8( c b a) g2 | g4 a fis2 | g2 r4 e | c2 d | c r4 c' | d2 d | e1 \bar "||"
    }

    \addlyrics {
      A -- lle -- lu -- ia, a -- lle -- lu -- ia!
      A -- lle -- lu -- ia, a -- lle -- lu -- ia, a -- lle -- lu -- ia, a -- lle -- lu -- ia,  a -- lle -- lu -- ia!
      A -- lle -- lu -- ia, a -- lle -- lu -- ia, a -- lle -- lu -- ia, a -- lle -- lu -- ia!
    }

    \header {
      title = "Alleluia"
      composer = "William Boyce (1710-1779)"
    }
  }

  \markup {}
  \tocItem "Be Like a Bird"
  \score {
    \relative c' {
      \key a \minor
      \time 2/2
      e2 c4 d | e2.^"*" e4 | g f e d | e2 d4 e |
      f2 d | bes c4 d | f( e) d c | c b2 c4 |
      a1 | a' | g4 f e d | e2. f4 |
      bes,1 | g'4( f2.) | e4 d b c | a1 \bar "||"
    }

    \addlyrics {
      Be like a bird who, halt -- ing in her flight
      On a limb too slight, feels it give way be -- neath her,
      Yet sings, sings, know -- ing she has wings,
      Yet sings, sings, know -- ing she has wings.
    }

    \header {
      title = "Be Like a Bird"
      poet = "Victor Hugo (adapted)"
      composer = "Arthur Frackenpohl"
    }
  }

  \markup {}
  \tocItem "Blessed are We"
  \score {
    \transpose a d \relative c'' {
      \key a \minor
      \time 6/8
      a8 a a b a b | c4. e4 d8 | c4 c8 b4 g8 | a2. |
      c8^"*" c c d c d | e4. g4 a8 | g4 e8 d4 f8 | e4 d8 c4 b8 |
      a4 c8 b( a) g | a4. e4 e8 | a a a g4 b8 | a2. \bar "||"
    }

    \addlyrics {
      Bless -- ed are we in the mor -- ning,
      for we shall be re -- newed.
      Bless -- ed are we in the eve -- ning,
      for we shall be fes -- tooned with all the
      gra -- ces of the spi -- rit,
      the flo -- wers of love di -- vine.
    }

    \header {
      title = "Blessed are We"
      composer = "Patricia McKernon"
    }
  }

  \markup {}
  \tocItem "By the Waters of Babylon"
  \score {
    \transpose d a \relative c' {
      \key d \minor
      \time 4/4
      d4( c8 bes a4) bes | c4( bes8 a) g4 a | bes4( a8 g) f4 g | a a d,2 | \break
      f'4^"* If this jump is too hard, try going up instead of down to the A at the end of the first part"
      f f f | f( e) r ees | ees( d) r d | d cis d r | \break
      a4. bes8 c4 d | g,4. a8 bes4 c | f,4. g8 a4 bes | a a d,2 |
      \bar "||"
    }

    \addlyrics {
      By the wa -- ters, the wa -- ters of Ba -- by -- lon,
      We lay down and wept, and wept, for thee, Zi -- on:
      We re -- mem -- ber, we re -- mem -- ber, we re -- mem -- ber thee, Zi -- on!
    }
    
    \header {
      title = "By the Waters of Babylon"
      poet = "Biblical"
      composer = "Philip Hayes"
    }
  }

  \markup {}
  \tocItem "Die Blumen"
  \score {
    \relative c' {
      \key a \minor
      \time 4/4
      \partial 4 e4 | d c b e | c a a'4.( g8 | f4) e d f | e2.
      e4^"*" | f a a gis | a4. b8 c4 a | d c b a | gis fis8( gis) e4
      e | f2 d | e2. a,4 | b( c d) c8( d) | e2. \bar "||"
    }

    \addlyrics {
      Die Blu -- men und das Laub,
      Die fal -- len in dem Staub,
      Und al -- ler Er -- den Herr -- lich -- keit
      Die währt nur ei -- ne kur -- ze Zeit
      Und muß ver -- gehn, und muß ver -- gehn.
    }

    \header {
      title = "Die Blumen"
      composer = "Traditional"
    }
  }

  \markup {}
  \tocItem "Come, Follow, Follow"
  \score {
    \relative c' {
      \key c \major
      \time 4/4
      c'2 b4 b | a a g g | f f e e | d g c,2 |
      c8^"*" d e f g4 e | f d g e | c8 d e f g4 c | d g, e'2 |
      e4. e8 d4 g | c,4. c8 b4 e | a,4. a8 g4 c | c4 b c2 \bar "||"
    }

    \addlyrics {
      Come, fol -- low, fol -- low, fol -- low,
      fol -- low, fol -- low, fol -- low me.
      Whi -- ther shall I fol -- low, fol -- low, fol -- low,
      Whi -- ther shall I fol -- low, fol -- low thee?
      To the green -- wood, to the green -- wood,
      To the green -- wood, green -- wood tree.
    }

    \header {
      title = "Come, Follow, Follow"
      composer = "Edmund Nelham"
    }
  }

  \markup {}
  \tocItem "Cuckoo"
  \score {
    \relative f' {
      \key f \major
      \time 6/4
      c'2 a4 f bes a | g2^"*" f4 a g f ~ |
      f e f f bes, d | c2 f1 \bar "||"
    }

    \addlyrics {
      Cu -- ckoo! as I mé walk -- èd
      on a May morn -- ing, I heard a bird sing:
    }
    \header {
      title = "Cuckoo"
      composer = "Traditional"
    }
  }

  \markup {}
  \tocItem "Dona Nobis (Schickele)"
  \score {
    \relative c' {
      \key f \major
      \time 3/4
      r4 c' c | c8( d) d2 | d8( c) c2 |
      c8( bes) bes4 bes8( a) | a4 bes2 | g2. | \break
      r4^"*" a a | a8( bes) bes2 | bes8( a) a2 |
      aes8( g) g4 g8( f) | f4 ees( d) | c2. | \break
      f2^"*" f4 | f2 f4 | f2 f4 | ees2( d4 ~ | d) g2 | r4 c c |\break
      c2.^"*"( ~ | c4 bes c ~ | c a c ~ | c g) bes |
      r bes,2 | c2. \bar "||"
    }

    \addlyrics {
      Do -- na no -- bis pa -- cem,
      do -- na no -- bis pa -- cem,
      Do -- na no -- bis pa -- cem,
      do -- na no -- bis pa -- cem,
      Do -- na no -- bis pa -- cem, pa -- cem,
      Do -- na no -- bis pa -- cem,
    }

    \header {
      title = "Dona Nobis Pacem"
      composer = "Peter Schickele (P.D.Q. Bach)"
    }
  }

  \markup {}
  \tocItem "Dona Nobis (traditional)"
  \score {
    \relative c' {
      \key f \major
      \time 3/4
      f8( c) a'2 | g8( c,) bes'2 | a4( g) f | f e2 |
      d'4( c8 bes) a( g) | c4.( bes8) a4 | a8( g f4 e) | f2. | \break
      c'2.^"*" | c2. | c4( bes) a | a g2 |
      d'4 d2 | c2 c4 | c8( bes a4 g) | f2. | \break
      f | e | f4.( g8) a( bes) | c4 c,2 |
      bes'4 bes2 | a4 a2 | f8( a c4 c,) | f2. \bar "||"
    }

    \addlyrics {
      Do -- na no -- bis pa -- cem, pa -- cem,
      Do -- na no -- bis pa -- cem.
      Do -- na no -- bis pa -- cem,
      Do -- na no -- bis pa -- cem.
      Do -- na no -- bis pa -- cem,
      Do -- na no -- bis pa -- cem.
    }

    \header {
      title = "Dona Nobis Pacem"
      composer = "Traditional"
    }
  }

  \markup {}
  \tocItem "Early as I Me Walked"
  \score {
    \transpose c f \relative f' {
      \key c \major
      \time 6/4
      g2 e4 c f e |
      d2^"*" c4 e d c ~ |
      c b c c f, a |
      g2 c1 \bar "||"
    }

    \addlyrics {
      Ear -- ly as I me walk -- ed on a May mor -- ning I heard a bird sing.
    }

    \header {
      title = "Early as I Me Walked"
      composer = "Traditional"
    }
  }

  \markup {}
  \tocItem "Fie, nay Prithee, John"
  \score {
    \relative g' {
      \key g \major
      \time 4/4
      g4. b8 a fis d4 | e4. g8 fis d b4 | c4. e8 d b g4 | c d g,2 | \break
      g'8^"*" d' d g, fis d' d fis, | e c' c e, d b' b d, | c a' a c, b g' g b, | a4 fis' g2 | \break
      d'8 b g e' c a fis d' | b g e c' a fis d b' | g e c a' fis d b b' | e4 d8. c16 b2 \bar "||"
    }

    \addlyrics {
      Fie, nay pri -- thee, John, do not quar -- rel, man; 
      let's be mer -- ry and drink a bout!
      You're a rogue; you cheat -- ed me, I'll prove 
      be -- fore this com -- pa -- ny; I caren't a far -- thing, 
      sir, for all you are so stout!
      Sir, you lie, I scorn your word, or an -- y man 
      who wears a sword; for all your huff, 
      who cares a damn, and who cares for you?
    }
    
    \header {
      title = "Fie, nay Prithee, John"
      composer = "Henry Purcell"
    }
  }

  \markup {}
  \tocItem "Gabriel John"
  \score {
    \transpose a e' \relative a' {
      \key a \minor
      \time 3/4
      e4. d8 c4 | b2 c4 | a4. gis8 a4 | gis2 e'8 d |
      f4. e8 d4 | b2 c4 | a4. b8 gis4 | a2. | \break
      a4.^"*" b8 c( a) | e'2 e4 | e4.( f8) d4 | e4. c8 c4 |
      a4. a8 f'4 | d4. g8 e4 | c4. d8 b4 | a2. | \break
      e'4. d8 c4 | b2 c4 | a4. c8 b( a) | gis2 a8 a |
      d,4. e8 f d | g4. f8 e4 | f4. d8 e4 | a2. \bar "||"
    }

    \addlyrics {
      Un -- der this stone lies Ga -- bri -- el John,
      in the year of our Lord one thou -- sand and one.

      Co -- ver his head in turf or stone,
      'tis all one, 'tis all one, turf or stone, 'tis all one.

      Pray for the soul of Ga -- bri -- el John,
      if you please, or you may let it a -- lone, 'tis all one.
    }
  }

  \markup {}
  \tocItem "Good Friend"
  \score {
    \relative a {
      \key a \minor
      \time 4/4
      a4. a8 e'4. c8 | d4 e g,4. g8 | a4 a c4. b8 | b4 a2. | \break
      a4.^"*" a8 e'4. c8 | d4 e g4. g8 | a4. e8 e4 d | e4 e2 e4 | \break
      e4 e a4. a8 | b4 c b4. b8 | e,4 e a4. g8 | g4 a2 b4 | \break
      c8 c4. c c8 | b4 a d, e8 e | a4. g8 e4. d8 | e( a) a2. \bar "||"
    }

    \addlyrics {
      Oh the wind, it is a song
      That har -- bors through the win -- ter.
      Oh the sail, it is a door
      That bids the song to en -- ter.
      And let us sail the sea, good friend,
      And let us sing to -- ge -- ther.
      The sing -- er lasts a sea -- son long
      While the song it lasts for -- ev -- er.
    }

    \header {
      title = "Good Friend"
      composer = "Jan Harmon"
    }
  }

  \markup {}
  \tocItem "Hava Nashira"
  \score {
    \relative c' {
      \key c \major
      \time 4/4
      c2 g'4 a | g2 c, | f e4 d8( c) | d2 c |
      c'^"*" b4 c | d2 e | c d4 e | f2 e |
      e d4 c | b2 c | a g4 c | c( b) c2 \bar "||"
    }

    \addlyrics {
      Ha -- va na -- shi -- ra, shir' ha -- lle -- lu -- ia.
      Ha -- va na -- shi -- ra, shir' ha -- lle -- lu -- ia.
      Ha -- va na -- shi -- ra, shir' ha -- lle -- lu -- ia.
    }

    \header {
      title = "Hava Nashira"
      composer = "Traditional"
    }
  }

  \markup {}
  \tocItem "Happy Birthday"
  \score {
    \transpose c f \relative c' {
      \key c \major
      \time 4/4
      \partial 4 g4 | c e8 e e d c b | c4 c2
      d4^"*" | e g8 g g f e d | e4 e2
      f4 | g2 g | g2.
      f4 | e c8 c g4 g | c2. \bar "||"
    }

    \addlyrics {
      We wish you a ve -- ry hap -- py birth -- day,
      A joy -- ous and ce -- le -- bra -- ted birth -- day,
      To you, dear friend,
      We wish you a long, long life!
    }

    \header {
      title = "Happy Birthday"
      composer = "Unknown"
    }
  }

  \markup {}
  \tocItem "Hotaru Koi"
  \score {
    \relative a' {
      \key a \minor
      \time 4/4
      a4 r^"*" a^"*" r | a e8 g a4 r |
      a a8 a a4 b | a g a r |
      a a8 a a4 b | a g a r |
      a4 r a r | a e8 g a4 r \bar "||"
    }

    \addlyrics {
      Ho, ho, ho -- ta -- ru koi,
      at -- chi no mi -- zu_wa ni -- gai zo,
      kot -- chi no mi -- zu_wa a -- mai zo,
      ho, ho, ho -- ta -- ru koi.
    }

    \header {
      title = "Hotaru Koi"
      composer = "Traditional"
    }
  }

  \markup {}
  \tocItem "Hymn for the Russian Earth"
  \score {
    \relative d' {
      \key d \minor
      \time 4/4
      d4. e8 f4 g | f e d4. a8 |
      d8^"*" e f g a4. a8 | d8. d16 d8 c a4. a8 |
      bes4. a8 g( a) bes4 | a4. g8 f4 e8 f |
      g4. f8 e a, f'8. e16 | d1 \bar "||"
    }

    \addlyrics {
      If the peo -- ple lived their lives
      As if it were a song for sing -- ing out of light
      Pro -- vides the mu -- sic for the stars
      To be dan -- cing cir -- cles in the night.
    }
    \header {
      title = "Hymn for the Russian Earth"
      composer = "Traditional"
    }
  }

  \markup {}
  \tocItem "Jubilate Deo"
  \score {
    \relative c'' {
      \key c \major
      \time 4/4
      c2 d | e4 c c b |
      c^"*" a g4. f8 | e4( f) d2 |
      c g'4 g | c,1 \bar "||"
    }

    \addlyrics {
      Ju -- bi -- la -- te De -- o,
      Ju -- bi -- la -- te De -- o,
      A -- lle -- lu -- ia!
    }
    \header {
      title = "Jubilate Deo"
      composer = "Michael Praetorius"
    }
  }

  \markup {}
  \tocItem "My Friend Sharon"
  \score {
    \relative c' {
      \key f \major
      \time 4/4
      a'4^"Swung eighths" f g e | f8 e d f e d c e | d c d4 r e | f4 r2. | \break
      f4^"*" c c c | d8 c bes d c bes a c | bes a g4 r g | a4 r c c | \break
      c'8^"*" bes a c bes a g bes | a( g) f( a) g f e g | f e d f e4 c8 e | f e f g a g a bes | \break
      a^"*" a a a g4 g8 g | f e f a c4. c,8 | g' a bes2 c8 c | f,4 r2. \bar "||"
    }

    \addlyrics {
      My friend Sha -- ron saved an ar -- ma -- dil -- lo
      from a croc -- o -- dile one day.
      My friend Sha -- ron saved an ar -- ma -- dil -- lo
      from a croc -- o -- dile one day.
      It was out in A -- ma -- ril -- lo where this vile child
      had an  ar -- ma -- dil -- lo by the tail
      And he would have sent it sail -- ing to a smi -- ling croc -- o -- dile
      On -- ly Sha -- ron hol -- lered, "\"Stop," you rot -- ten "kid!\"" And he did.
    }

    \header {
      title = "My Friend Sharon"
      composer = "Jan Harmon"
    }
  }
  
  \markup {}
  \tocItem "Noah's Dove"
  \score {
    \relative c' {
      \key c \major
      \time 4/4
      g'4. g8 e g d4 ~
      | d8 f16 f c8 c d4( b)

      | r8^"*" b'4 a8 c c b4 ~
      | b8 a16 a g8 g b4( g)

      | r d8 d g e g4 ~
      | g8 b,16 b f'8 e g2
      \bar "||"
    }

    \addlyrics {
      Oh, if I had wings just like No -- ah's dove
      I would fly a -- way to the one I love
      I would fly a -- way to the one I love.
    }
    
    \header {
      title = "Noah's Dove"
      composer = "Unknown"
    }
  }

  \markup {}
  \tocItem "The Old Astronomer to his Pupil"
  \score {
    \relative a {
      \key a \minor
      \time 4/4
      a4 b c a | d b e d |
      c^"*" e a a | a a gis( b) |
      r^"*" a2 e4 | f f e gis |
      a^"*" e e c' | b b b gis |
      e^"*" r e c | f d b r |
    }

    \addlyrics {
      Though my soul may set in dark -- ness,
      It will rise in per -- fect light;
      I have loved the stars too fond -- ly
      To be fear -- ful of the night,
      Fear -- ful of the night.
    }

    \header {
      title = "The Old Astronomer to his Pupil"
      composer = "Franz Josef Haydn (1732-1809)"
      poet = "Sarah Williams (1841-1868)"
    }
  }

  \markup {}
  \tocItem "Onawa's Waltz"
  \score {
    \transpose c f \relative c' {
      \key c \major
      \time 3/4
      e2 c4 | d b2 | c4. b8 a4 | g2 g4 |
      a2 f4 | g c b | c2. ~ | c2 g4 | \break
      g'2.^"*" | gis2. | a4. g8 f4 | e2. |
      f4 g a | g2 f4 | e2. ~ | e2 d4 | \break
      c8 d e4 g, | e'2. | a,8 b c4 f, | c'2 cis4 |
      d2 c4 | b c d | c2. ~ | c2. \bar "||"
    }

    \addlyrics {
      I've been wait -- ing all the day long
      To see the stars in your eyes.
      My love, come dance with me now,
      See how the eve -- ning flies,
      And as you sleep, my dear, Know that I'll be near,
      To hold you when you a -- rise.
    }

    \header {
      title = "Onawa's waltz"
      composer = "John Krumm"
    }
  }

  \markup {}
  \tocItem "Rise Up, O Flame"
  \score {
    \relative d' {
      \time 3/4
      d4 d d | a'4.^"*"( g8 f e) | d( e) f( g) a4 | f4.( e8) d4 |
      d' d d | a4.( g8) f( e) | d( e) f( g) a4 | d, \bar "||"
    }

    \addlyrics {
      Rise up, O flame; by thy light glow -- ing
      Show to us beau -- ty, vis -- ion and joy.
    }
    
    \header {
      title = "Rise Up, O Flame"
      composer = "Christoph Praetorius"
    }
  }

  \markup {}
  \tocItem "The Road"
  \score {
    \relative c' {
      \key f \major
      \time 3/4
      \partial 4 c4 | f2 e4 | d bes d | g2 f4 | e f
      g^"*" | a2 c4 | bes2 a4 | g8 a bes4 d | c2 c4 |
      c c a | f2 f4 | bes8 c bes4. bes8 | g4 f e |
      f2. | d2. | d4 c bes | c2 \bar "||"
    }

    \addlyrics {
      The road is cal -- ling as leaves are fal -- ling,
      It's back to home, my tra -- vels are now done;
      I'll sit by the fire, and drink a toast to all of you–
      Fare -- well, I must be gone...
    }
    
    \header {
      title = "The Road"
      composer = "John Krumm"
    }
  }
  
  \markup {}
  \tocItem "Rose, Rose / Ah! Poor Bird / Hey, Ho / Shalom Chaverim (Quodlibet)"
  \score {
    \transpose a d \relative a' {
      \key a \minor
      \time 4/4
      a2 g | a e | a4^"*" a b b | c d8( c) b2 |
      e4 e d d | c d8( c) b4 e, | a2 g4( b) | a1 \bar "||"

      \break
      a2 b | c1 | c2^"*" d | e1 |
      e4 a a gis | a( e) e d | c2 b | a1 \bar "||"

      \break
      a2 g | a4 a8 a e2 | a4^"*" a b b | c8 c c c b2 |
      e4. d8 e4. d8 | e4.( d8 e d) c( b) \bar "||"

      \break
      \partial 4 e,4 | a a8 b c4 a | c c8 d e4
      e | a2. g4 | e2.
      e4 | a e8( d) c4 d | e c8( b) a4
      e | a2. b8( c) | a2. \bar "||"
    }

    \addlyrics {
      Rose, rose, rose red, Will I e -- ver see thee wed?
      I will mar -- ry at thy will, Sire, at thy will.

      Ah! poor bird! Take thy flight
      Far a -- bove the sor -- rows of this sad night.

      Hey, ho, no -- bo -- dy home,
      Meat nor drink nor mo -- ney have I none,
      Still I will be mer -- ry.

      Sha -- lom cha -- ver -- im, sha -- lom cha -- ver -- im,
      Sha -- lom, sha -- lom,
      L' -- hit -- ra -- ot, l' -- hit -- ra -- ot, 
      Sha -- lom, sha -- lom.
    }
    
    \header {
      title = "Rose, Rose / Ah! Poor Bird / Hey, Ho / Shalom Chaverim"
      composer = "Traditional"
    }
  }

  \markup {}
  \tocItem "Scalloped Potatoes"
  \score {
    \transpose d e \relative d' {
      \key d \minor
      \time 6/8
      a'4. f8 g a | g4. e |
      f4.^"*" d8( e) f | e4. c4 c8 |
      d4. d ~ | d ~ d4 c8 |
      d4. d ~ | d2. \bar "||"
    }

    \addlyrics {
      You have -- n't been eat -- ing
      Scal -- loped po -- ta -- toes
      For three days
      Like we have!
    }
    
    \header {
      title = "Scalloped Potatoes"
      composer = "Unknown"
    }
  }

  \markup {}
  \tocItem "Stand Still"
  \score {
    \relative c'' {
      \key a \minor
      \time 4/4
      r4 a a4. a8 | gis8 e fis gis a4. b8 | c2 c4 c8 c | \break
      f,2.^"*" f8 f | e2 r4 c | c8 c d e f4. e8 | \break
      d4. d8 d4. d'8 | e8 gis, a b c2 ~ | c4 b8 a a2 \bar "||"
    }

    \addlyrics {
      Stand still and lis -- ten if you hear with me, An -- tho -- ny
      Marks on his stump: I swear if in this vault he
      rests his bones, his spi -- rit walks and charms these stones.
    }

    \header {
      title = "Stand Still"
      composer = "William Lawes"
    }
  }

  \markup {}
  \tocItem "Together Again"
  \score {
    \transpose c g \relative c' {
      \key c \major
      \time 3/4
      \partial 4
      g4 | e g c | d2 g,4 | e g c | d2 g,4 | e'2. ~ | e2 f4 | e c g | f2 g4 | e2. ~ | e4 e'
      d^"*" | g,2. | b4 c d | g,2. | b4 c b | a2 c4 | b2 d4 | g,2. | d'4 c b | g2. | b4 c
      d^"*" | c2 e4 | d2. | g,4 c e | f e d | c2 a4 | g2. | g4 c e | f e d | c2. | g2 \bar "||"
    }

    \addlyrics {
      To -- ge -- ther a -- gain, to -- ge -- ther a -- gain,
      we're home, to -- ge -- ther a -- gain,
      We're here, all my own, see how you've grown, me -- mo -- ry froze you fast,
      but now time moves a -- long, let's have a toast to time.
      Soon we will go on our se -- p'rate ways,
      know -- ing the fu -- ture will find us...
    }

    \header {
      title = "Together Again"
      composer = "John Krumm"
    }
  }

  \markup {}
  \tocItem "When Jesus Wept"
  \score {
    \relative d' {
      \key d \minor
      \time 3/4
      \partial 4 d4 | a'2 g4 | a8.( bes16 c4) f, | a8.( g16 f4) e | d2
      d4^"*" | d2 c4 | f( e) d | d2 a4 | d2
      a'4 | d( a) c | f,( g) a | a2 a4 | a2
      f4 | a8.( g16 f4) e | f( bes) a | f8.( e16 d4) a | d2 \bar "||"
    }

    \addlyrics {
      When Je -- sus wept, a shin -- ing tear
      In mer -- cy flowed bey -- ond all bound.
      When Je -- sus groaned, a trem -- bling fear
      Siezed all the guilt -- y world a -- round.
    }

    \header {
      title = "When Jesus Wept"
      composer = "William Billings"
    }
  }

  \markup {}
  \tocItem "The Water Spout"
  \score {
    \transpose c f \relative c' {
      \key c \major
      \time 4/4
      \partial 4 g'8 g | g4 e f d8 d | e4 c d g,8 g | c c c c d d e f | e4 c d g,^"*" | \break
      c c d d8 e ~ | e e e e f f f4 | g g8 g g4 g8 g ~ | g g g g g4 g | \break
      c, r r g' | e c r g' | g e f d | e c d b | \break
      c c d f | e c d b | c r r g' | e c r \parenthesize g'8 \parenthesize g \bar "||"
    }

    \addlyrics {
      Have you e -- ver been to the wa -- ter spout
      at the ve -- ry ve -- ry bot -- tom of the wa -- ter sys -- tem?

      There you'll find a lit -- tle al -- li -- ga -- tor who
      goes by the name of Al -- fred, and you know, he's mine!

      I lost him!

      I threw him down the wa -- ter spout and now I'm feel -- ing
      lone -- ly 'cause he's gone.

      I miss him! (Have you...)
    }

    \header {
      title = "The Water Spout"
      composer = "Unknown"
    }
  }

  \markup {}
  \tocItem "When we Learn the Language of Trees"
  \score {
    \transpose c d \relative c' {
      \key g \minor
      \time 4/4
      g'8 g g g \times 2/3 {g g g} g4 ~
      | g^"*" c,8 c ees4 \times 2/3 {f8( ees f)}
      | g( c bes a g4) a
      | bes8( g ~ g2) c,4
      | d8 ees ees4 ees r8 ees
      | d c ees c ~ c4 r
      \bar "||"
    }

    \addlyrics {
      When we learn the lan -- guage of trees,
      Will we hear the sea -- sons pulse,
      And find the heart's beat is just an e -- cho?
    }
    
    \header {
      title = "When we Learn the Language of Trees"
      composer = "Unknown"
      poet = "Eran? Williams"
    }
  }

  \markup {}
  \tocItem "White Sand and Grey Sand"
  \score {
    \transpose c g \relative c' {
      \key c \major
      \time 2/2
      c2 d4 c | b2 c |
      e f4 e | d2 e |
      c a4 f | g2 c \bar "||"
    }

    \addlyrics {
      White sand and grey sand!
      Who'll buy my white sand?
      Who'll buy my grey sand?
    }

    \header {
      title = "White Sand and Grey Sand"
      composer = "Traditional"
    }
  }
}
