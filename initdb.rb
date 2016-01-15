require 'sqlite3'
db = SQLite3::Database.new 'gorogoro.sqlite3'
rows = db.execute <<-SQL
  create table commanders (
    username,
    name
  );
SQL
