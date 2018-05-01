class Pokemon
  attr_accessor :id, :name, :type, :db
  @@all = []

  def initialize(id:, name:, type:, db:)
    @id = id
    @name = name
    @type = type
    @db = db
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
  end

  def self.find(id_num, db)
    info = db.execute("SELECT * FROM pokemon WHERE id=?", id_num).flatten
    id = info[0]
    name = info[1]
    type = info[2]
    self.new(id: id, name: name, type: type, db: db)
  end

  def alter_hp
  end

end

# keep track of their hp (health power)
# alter the database. What would be perfect is a sql query that adds an hp column and default value of 60 to every row. That sql command should be put into a migration file in db/.

Once the hp column is set up there should be an instance method called alter_hp that will allow us to change a specific pokemon's health to a new hp. It will need to take a new health power as a parameter.

Follow the pending specs for more information.
