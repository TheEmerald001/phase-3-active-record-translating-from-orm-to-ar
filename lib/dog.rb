#lets require this to aid in ORM
require "active_record"

#We tell it who we are writing to, and where they are
ActiveRecord::Base.establish_connection(
        adapter: "sqlite3",
        database: "db/dogs.sqlite"
    )

#we create a table using the AR convention
sql = <<-SQL
CREATE TABLE IF NOT EXISTS dogs (
    id INTEGER PRIMARY KEY,
    name TEXT,
    breed TEXT
)
SQL

#lets execute SEEQUEL command
ActiveRecord::Base.connection.execute(sql)

#we then link a model to the DB table
class Dog < ActiveRecord::Base
end 


