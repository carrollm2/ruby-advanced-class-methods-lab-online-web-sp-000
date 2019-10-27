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

  def self.find_by_name(name)
    @@all.find{|song| song.name == name}
  end

  def self.find_or_create_by_name(name)
    searched_song = self.find_by_name(name)
    if not @@all.include?(searched_song)
      self.create_by_name(name)
    else
      searched_song
    end
  end

  def self.alphabetical
    unsorted_song_names = []
    @@all.each do |s|
      unsorted_song_names.push(s.name)
    end
    unsorted_song_names.sort
  end

  def save
    self.class.all << self
  end

end
