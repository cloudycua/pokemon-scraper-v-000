class Pokemon
  attr_accessor :id, :name, :type, :db
  @@all = []
  @@count = 0

  def initialize(id: name:, type:, db:)
    @id = id
    @name = name
    @type = type
    @db = db
  end

  def save
    @@all << self
  end

end
