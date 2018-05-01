class Pokemon
  attr_accessor :id, :name, :type, :db
  @@all = []
  @@count = 0

  def initialize(name:, type:, db:)
    @@count += 1
    @id = @@count
    @name = name
    @type = type
    @db = db
  end

  def save
    @@all << self
  end

end
