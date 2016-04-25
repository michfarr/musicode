# [ Artist.name,  Artist.genre,   Artist.photo,   \n    Artist.description

artists = [

  ["Yung Lean", "Hip Hop", "yung_lean.jpg",
  %{
    Jonatan Aron Leandoer Håstad (born 18 July 1996), better known by his stage name
    Yung Lean, is a Swedish rapper and record producer. Yung Lean released his debut
    mixtape in 2013 (entitled Unknown Death 2002) and multiple singles to YouTube
    under his label Sad Boys Entertainment, including 'Ginseng Strip 2002', 'Kyoto',
    and 'Yoshi City'. Lean released his debut album Unknown Memory during the late
    summer of 2014 following a two-month long American tour.
  } ],

  ["Pearl Jam", "Grunge", "pearl_jam.jpg",
  %{
    Pearl Jam is an American rock band formed in Seattle, Washington in 1990. Since
    its inception, the band's line-up has comprised Eddie Vedder (lead vocals), Mike
    band's fifth member is drummer Matt Cameron (also of Soundgarden), who has been
    McCready (lead guitar), Stone Gossard (rhythm guitar) and Jeff Ament (bass). The
    with the band since 1998. Boom Gaspar (piano) has also been a session/touring
    member with the band since 2002. Drummers Dave Krusen, Matt Chamberlain, Dave
    Abbruzzese and Jack Irons are former members of the band.
  } ],

  ["Laurie Anderson", "Experimental", "laurie_anderson.jpg",
  %{
    Laura Phillips 'Laurie' Anderson (born June 5, 1947) is an American experimental
    performance artist, composer, musician and film director who plays violin and
    keyboards and sings in a variety of experimental music and art rock styles.
    Initially trained as a sculptor, Anderson did her first performance-art piece in
    the late 1960s. Throughout the 1970s, Anderson did a variety of different
    performance-art activities. She became widely known outside the art world in
    1981 when her single 'O Superman' reached number two on the UK pop charts. She
    also starred in and directed the 1986 concert film Home of the Brave.
  } ],

]

artists.each do |name, genre, image, description|
  Artist.create(name: name, genre: genre, image: image, description: description)
end

artist_songs = {}
artist_songs["Yung Lean"] = [
    ["Blommer (Intro)",         "1:33", "Unknown Memory", 2014 ],

    ["Blinded",                 "4:14", "Unknown Memory", 2014 ],

    ["Sunrise Angel",           "3:00", "Unknown Memory", 2014 ],

    ["Yoshi City",              "3:45", "Unknown Memory", 2014 ],

    ["Ice Cold Smoke",          "1:41", "Unknown Memory", 2014 ],

    ["Dog Walk (Intermission)", "1:07", "Unknown Memory", 2014 ],

    ["Don't Go",                "3:56", "Unknown Memory", 2014 ],

    ["Ghosttown",               "5:10", "Unknown Memory", 2014 ],

    ["Monster",                 "4:15", "Unknown Memory", 2014 ],

    ["Volt",                    "3:13", "Unknown Memory", 2014 ],

    ["Leanworld",               "3:59", "Unknown Memory", 2014 ],

    ["Sandman",                 "2:59", "Unknown Memory", 2014 ],

    ["Helt Ensam (Outro)",      "3:06", "Unknown Memory", 2014 ]
  ]

artist_songs["Pearl Jam"] = [
    ["Once",                  "3:51", "Ten", 1991   ],

    ["Even Flow",             "4:54", "Ten", 1991   ],

    ["Alive",                 "5:40", "Ten", 1991   ],

    ["Why Go",                "3:20", "Ten", 1991   ],

    ["Black",                 "5:43", "Ten", 1991   ],

    ["Jeremy",                "5:18", "Ten", 1991   ],

    ["Oceans",                "2:42", "Ten", 1991   ],

    ["Porch",                 "3:30", "Ten", 1991   ],

    ["Garden",                "4:59", "Ten", 1991   ],

    ["Deep",                  "4:18", "Ten", 1991   ],

    ["Release",               "9:05", "Ten", 1991   ],

    ["Brain of J.",           "2:49", "Yield", 1998  ],

    ["Faithfull",             "4:18", "Yield", 1998  ],

    ["No Way",                "4:19", "Yield", 1998  ],

    ["Given to Fly",          "4:01", "Yield", 1998  ],

    ["Wishlist",              "3:26", "Yield", 1998  ],

    ["Pilate",                "3:00", "Yield", 1998  ],

    ["Do the Evolution",      "3:54", "Yield", 1998  ],

    ["Untitled",              "1:06", "Yield", 1998  ],

    ["MFC",                   "2:27", "Yield", 1998  ],

    ["Low Light",             "3:46", "Yield", 1998  ],

    ["In Hiding",             "5:00", "Yield", 1998  ],

    ["Push Me, Pull Me",      "2:28", "Yield", 1998  ],

    ["All Those Yesterdays",  "7:47", "Yield", 1998  ]
  ]

artist_songs["Laurie Anderson"] = [
    ["From the Air",                    "4:29", "Big Science",  1982  ],

    ["Big Science",                     "6:25", "Big Science",  1982  ],

    ["Sweaters",                        "2:18", "Big Science",  1982  ],

    ["Walking & Falling",               "2:10", "Big Science",  1982  ],

    ["Born, Never Asked",               "4:56", "Big Science",  1982  ],

    ["O Superman (for Massenet)",       "8:21", "Big Science",  1982  ],

    ["Example #22",                     "2:59", "Big Science",  1982  ],

    ["Let X=X/It Tango",                "6:51", "Big Science",  1982  ],

    ["Strange Angels",                  "3:51", "Strange Angels", 1989  ],

    ["Monkey's Paw",                    "4:33", "Strange Angels", 1989  ],

    ["Coolsville",                      "4:34", "Strange Angels", 1989  ],

    ["Ramon",                           "3:38", "Strange Angels", 1989  ],

    ["Babydoll",                        "3:38", "Strange Angels", 1989  ],

    ["Beautiful Red Dress",             "4:43", "Strange Angels", 1989  ],

    ["The Day the Devil",               "4:00", "Strange Angels", 1989  ],

    ["The Dream Before",                "3:03", "Strange Angels", 1989  ],

    ["My Eyes",                         "5:29", "Strange Angels", 1989  ],

    ["Hiawatha",                        "6:53", "Strange Angels", 1989  ],

    ["Transitory Life",                 "6:52",   "Homeland",  2012  ],

    ["My Right Eye",                    "5:01",   "Homeland",  2012  ],

    ["Thinking of You",                 "4:12",   "Homeland",  2012  ],

    ["Strange Perfumes",                "4:46",   "Homeland",  2012  ],

    ["Only an Expert",                   "7:26",  "Homeland",  2012  ],

    ["Falling",                         "3:19",   "Homeland",  2012  ],

    ["Another Day in America",          "11:24",  "Homeland",  2012  ],

    ["Bodies in Motion",                "7:10",   "Homeland",  2012  ],

    ["Dark Time in the Revolution",     "5:19",   "Homeland",  2012  ],

    ["The Lake",                        "5:39",   "Homeland",  2012  ],

    ["The Beginning of Memory",         "2:45",   "Homeland",  2012  ],

    ["Flow",                            "2:15",   "Homeland",  2012  ]
  ]

artist_songs.each do |artist_name, songs|
  artist = Artist.find_by( name: artist_name )

  songs.each do |title, length, album, release_year|
    Song.create(title: title, length: length, album: album, release_year: release_year, artist_id: artist.id)
  end
end
