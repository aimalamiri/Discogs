require 'rails_helper'

RSpec.describe Song, type: :model do
  describe 'Song Model' do
    subject { Song.new(name: 'Willow', album: Album.create(title: 'Test Album', image_url: 'https://something.com/image.jpg', year: '2020', artist: Artist.create(name: 'someone'))) }
    before { subject.save }

    it 'is valid with valid attributes' do
      expect(subject).to be_valid
    end

    it 'is invalid without a name' do
      subject.name = nil
      expect(subject).to_not be_valid
    end
  end
end
