require 'rails_helper'

RSpec.describe 'the songs show page' do
    it 'displays the song title ' do
        artist = Artist.create(name: 'ADELE')
        song = artist.songs.create!(title: "hello", length: 353, play_count: 45)
        song_2 = artist.songs.create!(title: "someone like you", length: 564, play_count: 203)
        
        visit "/songs/#{song.id}"
        #go to localhost:3000 and get song/1

        expect(page).to have_content(song.title)
        expect(page).to_not have_content(song_2.title)

    end

    it 'displays the name of the artist for the song' do
        artist = Artist.create(name: 'ADELE')
        song = artist.songs.create!(title: "hello", length: 353, play_count: 45)
        song_2 = artist.songs.create!(title: "someone like you", length: 564, play_count: 203)
        
        visit "/songs/#{song.id}"
        save_and_open_page

        expect(page).to have_content(artist.name)
    end
end