#big bad motherfucker

require "sqlite3"

DB_FILE_NAME = "songs.sqlite3.db"
db = SQLite3::Database.new(DB_FILE_NAME)

def print_welcome 
   puts 'Welcome to the music datbase! 💩'
   puts '	1. Display all song info.'
   puts '	2. Add a new genre.'
   puts '	3. Add a new album.'
   puts '	4. Add a new artist.'
   puts '	5. Add a new song.'
   puts 'Enter a choice motherfucker:___'
end 
print_welcome 

fuckersInput = gets.chomp

if fuckersInput == "1"
	db.execute("SELECT songs.name, artists.name, albums.name, genres.name 
				FROM songs, artists, albums, genres
   				WHERE songs.genre_id = genres.id AND artists.id = albums.artist_id AND songs.album_id = albums.id;")do |row|
		puts '💩', row
	end

elsif fuckersInput == "2"
	puts "Genres in the datbase:"
	db.execute("SELECT genres.name FROM genres;") do |row|
	 	
	 	puts row
	end
	puts 'Enter a new genre name motherfucker:___'

	newGenreName = gets.chomp
	puts "newGenreName is " + newGenreName

	db.execute("INSERT INTO genres(name) VALUES('#{newGenreName}')")

elsif fuckersInput == "3"
	puts "Albums in the datbase:"
	db.execute("SELECT albums.name FROM albums;") do |row|
	 	
	 	puts row
	end
	puts 'Enter a new album name motherfucker:___'

	newAlbumName = gets.chomp
	puts "newAlbumName is " + newAlbumName

	db.execute("INSERT INTO albums(name) VALUES('#{newAlbumName}')")

elsif fuckersInput == "4"
	puts "Artists in the datbase:"
	db.execute("SELECT artists.name FROM artists;") do |row|
	 	
	 	puts row
	end
	puts 'Enter a new artist name motherfucker:___'

	newArtistName = gets.chomp
	puts "newArtistName is " + newArtistName

	db.execute("INSERT INTO artists(name) VALUES('#{newArtistName}')")

elsif fuckersInput == "5"
	puts "Enter a new song name motherfucker:___"
	newSongName = gets.chomp
	puts "newSongName is " + newSongName


	puts "Genres List:"
	db.execute("SELECT * FROM genres;") do |row|
	 	
	 	puts row
	end
	puts "Select a genre:___(enter a fucking number plz)"
	newSongGenre = gets.chomp
	

	puts "Albums List:"
	db.execute("SELECT id, name FROM albums;") do |row|
	 	
	 	puts row
	end
	puts "Select a album:___(enter a fucking number plz)"
	newSongAlbum = gets.chomp

	# puts "Artists List:"
	# db.execute("SELECT * FROM artists;") do |row|
	 	
	#  	puts row
	# end
	# puts "Select a artist:___(enter a fucking number plz)"
	# newSongArtist = gets.chomp
	

	db.execute("INSERT INTO songs(name, genre_id, album_id) VALUES('#{newSongName}', '#{newSongGenre}', '#{newSongAlbum}')")
	# db.execute("INSERT INTO albums(name, artist_id) VALUES( '#{newSongAlbum}', '#{newSongArtist}' )" )
	# db.execute("INSERT INTO artists(name) VALUES( '#{newSongArtist}' )" )
	# db.execute("INSERT INTO genres(name) VALUES( '#{newSongGenre}' )" )


else
	puts "Go fuck yourself"
end




db.close


