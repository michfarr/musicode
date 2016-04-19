artists = [

["Pearl Jam", "Grunge", "pearl_jam.jpg",
%{
  Pearl Jam is an American rock band formed in Seattle, Washington in 1990. Since its inception, the band's line-up has comprised Eddie Vedder (lead vocals), Mike McCready (lead guitar), Stone Gossard (rhythm guitar) and Jeff Ament (bass). The band's fifth member is drummer Matt Cameron (also of Soundgarden), who has been with the band since 1998. Boom Gaspar (piano) has also been a session/touring member with the band since 2002. Drummers Dave Krusen, Matt Chamberlain, Dave Abbruzzese and Jack Irons are former members of the band.
}],

["Yung Lean", "Hip Hop", "yung_lean.jpg",
%{

}],

["Yung Lean", "Hip Hop", "yung_lean.jpg",
%{
  Jonatan Aron Leandoer Håstad (born 18 July 1996), better known by his stage name Yung Lean, is a Swedish rapper and record producer. Yung Lean released his debut mixtape in 2013 (entitled Unknown Death 2002) and multiple singles to YouTube under his label Sad Boys Entertainment, including 'Ginseng Strip 2002', 'Kyoto', and 'Yoshi City'. Lean released his debut album Unknown Memory during the late summer of 2014 following a two-month long American tour.
}],

["Laurie Anderson", "Experimental", "laurie_anderson.jpg",
%{
  Laura Phillips 'Laurie' Anderson (born June 5, 1947) is an American experimental performance artist, composer, musician and film director who plays violin and keyboards and sings in a variety of experimental music and art rock styles. Initially trained as a sculptor, Anderson did her first performance-art piece in the late 1960s. Throughout the 1970s, Anderson did a variety of different performance-art activities. She became widely known outside the art world in 1981 when her single 'O Superman' reached number two on the UK pop charts. She also starred in and directed the 1986 concert film Home of the Brave.
}]
]

  artists.each do |name, genre, image, description|
    Artist.create(name: name, genre: genre, image: image, description: description)
  end

artist_songs = {}

artist_songs["Pearl Jam"] = [
  ["Alive",         "5:40", "Ten",            "1991"],

  ["Even Flow",     "4:54", "Ten",            "1991"],

  ["Jeremy",        "5:18", "Ten",            "1991"]
]

artist_songs["Yung Lean"] = [
  ["Blinded",       "4:14", "Unknown Memory", "2014"],

  ["Yoshi City",    "3:45", "Unknown Memory", "2014"],

  ["Sandman",       "2:59", "Unknown Memory", "2014"]
]

artist_songs["Laurie Anderson"] = [
  ["From the Air",  "4:29", "Big Science",    "1982"],

  ["Monkey's Paw",  "4:33", "Strange Angels", "1989"],

  ["Falling",       "3:19", "Homeland",       "2001"]
]

  artist_songs.each do |artist_name, songs|
    artist = Artist.find_by( name: artist_name )

    songs.each do |title, length, album, year|
      song = Song.create(title: title, length: length, album: album, release_year: year, artist_id: artist.id)
    end
  end
