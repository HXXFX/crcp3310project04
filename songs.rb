#ruby ver rdb

require 'sqlite3'

def PrintWelcomeMenu 
   put 'Welcome to the music database!'
   put '1. Display all song info.'
   put '2. Add a new genre.'
   put '3. Add a new album.'
   put '4. Add a new artist.'
   put '5. Add a new song.'
   put 'Enter a choice:___'
end 

DB_FILE_NAME = "songs.sqlite3.db";

SQL_Display_ALL_INFO = "SELECT *;"
SQL_SELECT_GENRES = "SELECT name FROM genres;"
SQL_SELECT_ALBUM = "SELECT name FROM album;"
SQL_SELECT_ARTIST = "SELECT name FROM artist;"
SQL_SELECT_SONG = "SELECT name FROM song;"

PrintWelcomeMenu
UserChoice = gets

db = SQLite3::Database.new(DB_FILE_NAME)

db.execute(SQL_SELECT_GENRES) do |row|
	puts row
end

db.execute(SQL_SELECT_ALBUM) do |row|
	puts row
end

db.execute(SQL_SELECT_ARTIST) do |row|
	puts row
end

db.execute(SQL_SELECT_SONG) do |row|
	puts row
end

db.close

