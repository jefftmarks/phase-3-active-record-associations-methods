class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    # if Artist.find_by(name: "Drake")
    #   self.artist = Artist.find_by(name: "Drake")
    #   self.save
    # else
    #   self.artist = Artist.create(name: "Drake")
    #   self.save
    # end

    drake = Artist.find_or_create_by(name: "Drake")
    self.update(artist: drake)

  end
end