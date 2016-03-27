#big bad motherfucker

require "sqlite3"

DB_FILE_NAME = "songs.sqlite3.db"
db = SQLite3::Database.new(DB_FILE_NAME)

def print_welcome 
   puts 'Welcome to the music database! 💩'
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
	puts fuckersInput + "!!!!"
end

if fuckersInput == "2"
	puts "go fuck yourself"
end

if fuckersInput == "3"
	puts "hahahaha"
end














db.close


