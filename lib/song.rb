class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def self.create
    @@all << self.new
  end

  def self.new_by_name(name)
    song = self.new
    song.name = name
    @@all << song
  end

  def save
    self.class.all << self
  end

end
