require 'rails_helper'

RSpec.describe Album, type: :model do
  describe 'Album Model' do
    subject { Album.new(title: 'Test Album', image_url: 'https://something.com/image.jpg', year: '2020', artist: Artist.create(name: 'someone')) }
    before { subject.save }

    it 'is valid with valid attributes' do
      expect(subject).to be_valid
    end

    it 'is invalid without title' do
      subject.title = nil
      expect(subject).to_not be_valid
    end

    it 'is invalid without year' do
      subject.year = nil
      expect(subject).to_not be_valid
    end

    it 'is invalid when the image is longer the 255 characters' do
      subject.image_url = 'https://something.com/image.jpg' * 10
      expect(subject).to_not be_valid
    end
  end
end
