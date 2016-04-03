class Playlist < ActiveRecord::Base
  has_many :comments

  def self.get_tracks # get 10 hottest tracks
    client = Soundcloud.new(client_id: 'b42fce0c05bc046484daed8a1de48bd8')
    tracks = client.get('/tracks', :q => 'usher')
    # print each link
    tracks.each do |track|
      puts track
    end
  end
end
