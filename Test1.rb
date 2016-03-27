require "sqlite3"

DB_FILE_NAME = "songs.sqlite3.db"
SQL_SELECT_GENRES = "SELECT name from genres;"


db = SQLite3::Database.new(DB_FILE_NAME)



db.execute(SQL_SELECT_GENRES) do |row|
	puts row
end

#db.execute("SELECT * FROM genres;") do |row|
#	puts row
#end

#db.execute("UPDATE genres SET name='lalalalala' WHERE name='folk';") do |row|
#	puts row
#end

db.execute("INSERT INTO genres(name) VALUES('bitch');") do |row|
	puts row
end

db.execute(SQL_SELECT_GENRES) do |row|
	puts row
end

db.close