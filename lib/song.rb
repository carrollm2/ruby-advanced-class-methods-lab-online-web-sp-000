class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def self.create
    new_song = self.new
    @@all << new_song
    new_song
  end

  def self.new_by_name(name)
    song = self.new
    song.name = name
    @@all << song
    song
  end

  def self.create_by_name(name)
    if not @@all.include?(name)
      song = self.new
      song.name = name
      @@all << song
      song
    end
  end


  def save
    self.class.all << self
  end

end
