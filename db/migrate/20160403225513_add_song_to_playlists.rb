class AddSongToPlaylists < ActiveRecord::Migration
  def change
    add_column :playlists, :song, :integer
  end
end
