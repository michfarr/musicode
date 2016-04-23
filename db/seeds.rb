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

  # ["", "", "",
  # %{
  #
  # } ],
  #
  # ["", "", "",
  # %{
  #
  # } ]
]

artists.each do |name, genre, photo, description|
  Artist.create(name: name, genre: genre, photo: photo, description: description)
end



artist_albums = {}

# var [ Artist.name ] = \n [ Album.name, Album.cover_art, Album.release_year ]

artist_albums["Yung Lean"] = [
  ["Unknown Memory",    "temp.jpg",   2014  ]
]

artist_albums["Pearl Jam"] = [
  ["Ten",               "temp.jpg",   1991  ],

  ["Yield",             "temp.jpg",   1998  ]
]

artist_albums["Laurie Anderson"] = [
  ["Big Science",       "temp.jpg",   1982  ],

  ["Strange Angels",    "temp.jpg",   1989  ],

  ["Homeland",          "temp.jpg",   2012  ]
]

# artist albums = [
#   ["","temp.jpg",],
#
#   ["","temp.jpg",],
#
#   ["","temp.jpg",],
#
#   ["","temp.jpg",]
# ]
#
# artist albums = [
#   ["","temp.jpg",],
#
#   ["","temp.jpg",],
#
#   ["","temp.jpg",],
#
#   ["","temp.jpg",],
#
#   ["","temp.jpg",]
# ]

artist_albums.each do |artist_name, album_info|
  artist = Artist.find_by( name: artist_name )

  album_info.each do |name, cover_art, release_year|
    Album.create( name: name, cover_art: cover_art, release_year: release_year, artist_id: artist.id)
  end
end



album_songs = {}

# var [Album.nam] = [ "Song.title,   Song.length" ] ]

album_songs["Unknown Memory"] = [
    ["Blommer (Intro)",         "1:33" ],

    ["Blinded",                 "4:14" ],

    ["Sunrise Angel",           "3:00" ],

    ["Yoshi City",              "3:45" ],

    ["Ice Cold Smoke",          "1:41" ],

    ["Dog Walk (Intermission)", "1:07" ],

    ["Don't Go",                "3:56" ],

    ["Ghosttown",               "5:10" ],

    ["Monster",                 "4:15" ],

    ["Volt",                    "3:13" ],

    ["Leanworld",               "3:59" ],

    ["Sandman",                 "2:59" ],

    ["Helt Ensam (Outro)",      "3:06" ]
  ]

album_songs["Ten"] = [
    ["Once",                  "3:51"  ],

    ["Even Flow",             "4:54"  ],

    ["Alive",                 "5:40"  ],

    ["Why Go",                "3:20"  ],

    ["Black",                 "5:43"  ],

    ["Jeremy",                "5:18"  ],

    ["Oceans",                "2:42"  ],

    ["Porch",                 "3:30"  ],

    ["Garden",                "4:59"  ],

    ["Deep",                  "4:18"  ],

    ["Release",               "9:05"  ]
  ]

album_songs["Yield"] = [
    ["Brain of J.",           "2:49"  ],

    ["Faithfull",             "4:18"  ],

    ["No Way",                "4:19"  ],

    ["Given to Fly",          "4:01"  ],

    ["Wishlist",              "3:26"  ],

    ["Pilate",                "3:00"  ],

    ["Do the Evolution",      "3:54"  ],

    ["Untitled",              "1:06"  ],

    ["MFC",                   "2:27"  ],

    ["Low Light",             "3:46"  ],

    ["In Hiding",             "5:00"  ],

    ["Push Me, Pull Me",      "2:28"  ],

    ["All Those Yesterdays",  "7:47"  ]
  ]

album_songs["Big Science"] = [
    ["From the Air",                    "4:29"  ],

    ["Big Science",                     "6:25"  ],

    ["Sweaters",                        "2:18"  ],

    ["Walking & Falling",               "2:10"  ],

    ["Born, Never Asked",               "4:56"  ],

    ["O Superman (for Massenet)",       "8:21"  ],

    ["Example #22",                     "2:59"  ],

    ["Let X=X/It Tango",                "6:51"  ]
  ]

album_songs["Strange Angels"] = [
    ["Strange Angels",                  "3:51"  ],

    ["Monkey's Paw",                    "4:33"  ],

    ["Coolsville",                       "4:34"  ],

    ["Ramon",                           "3:38"  ],

    ["Babydoll",                        "3:38"  ],

    ["Beautiful Red Dress",             "4:43"  ],

    ["The Day the Devil",               "4:00"  ],

    ["The Dream Before",                "3:03"  ],

    ["My Eyes",                         "5:29"  ],

    ["Hiawatha",                        "6:53"  ]
  ]

  album_songs[ "Homeland"] = [
    ["Transitory Life",                 "6:52"  ],

    ["My Right Eye",                    "5:01"  ],

    ["Thinking of You",                 "4:12"  ],

    ["Strange Perfumes",                "4:46"  ],

    ["Only an Expert",                   "7:26"  ],

    ["Falling",                         "3:19"  ],

    ["Another Day in America",          "11:24" ],

    ["Bodies in Motion",                "7:10"  ],

    ["Dark Time in the Revolution",     "5:19"  ],

    ["The Lake",                        "5:39"  ],

    ["The Beginning of Memory",         "2:45"  ],

    ["Flow",                            "2:15"  ]
  ]

album_songs.each do |album_name, songs|
  album = Album.find_by( name: album_name )

  songs.each do |title, length|
    Song.create(title: title, length: length, album_id: album.id, artist_id: album.artist_id)
  end
end
