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
	#puts fuckersInput + "!!!!"
	# db.execute("SELECT songs.name, albums.name, artists.name, genres.name 
	# 			FROM songs, albums, artists, genres
	# 			WHERE songs.genre_id = genres.id AND songs.album_id = albums.id,") do |row|
	# 		puts row
	# end

	# db.execute("SELECT songs.name FROM songs") do |row|
	# 	puts row
	# end


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

else
	puts "go fuck yourself"
end














db.close


