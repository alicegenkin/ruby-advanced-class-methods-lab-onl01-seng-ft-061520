class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = self.new
    @@all << song
    song
  end


def self.new_by_name(song_name)
  song = self.new
  song.name = song_name
  song
end

def self.create_by_name(song_name)
  song = self.new
  song.name = song_name
  @@all << song
    song
end

def self.find_by_name(song_name)
  @@all.find {|song| song.name == song_name}
end

def self.find_or_create_by_name(song_name)
  self.find_by_name(song_name) || self.create_by_name(song_name)
end

def self.alphabetical
  @@all.sort_by { |song| song.name }
end

def self.new_from_filename(song_name)
  myArray = song_name.split(" - ")
  # myArray = ['Taylor Swift', 'Blank Space.mp3']
  song.name = myArray[1].split(".mp3")[0]
  song = self.new
  song.artist_name = myArray[0]
  song
end
end
#Song.new_by_name("Hello World")
