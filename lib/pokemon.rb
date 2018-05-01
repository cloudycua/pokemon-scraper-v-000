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
    binding.pry
    id = info[0]
    name = info[1]
    type = info[2]
    self.new(id, name, type, db)
  end


end
