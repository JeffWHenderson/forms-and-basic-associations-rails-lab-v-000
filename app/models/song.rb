class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre
  has_many :notes

  #genre_name=
  #artist_name=
  #note_contents=

  def genre_name=(name)
    self.genre = Genre.find_or_create_by(name: name)
  end

end
