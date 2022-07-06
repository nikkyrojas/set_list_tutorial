class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :title
      t.integer :length
      t.integer :play_count

      t.timestamps #created at and updated at
    end
  end
end
