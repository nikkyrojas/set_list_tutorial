require 'rails_helper'

RSpec.describe Artist do
    it {should have_many :songs}

    describe 'instance methods' do
        describe '#average_song_length' do
            before :each do
                @prince = Artist.create!(name: 'Prince')
                @purple = @prince.songs.create!(title: 'Purple Rain', length: '342', play_count: 6345)
                @beret = @prince.songs.create!(title: 'Rasberry Beret', length: '762', play_count: 975)
                @another_song = @prince.songs.create!(title: 'Prince Song', length: '2', play_count: 233)
            end

            it 'returns the averag song length' do
                expect(@prince.average_song_length.round(2)).to eq(368.67)

            end
        end
    end 
end