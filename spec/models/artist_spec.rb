require 'rails_helper'

RSpec.describe Artist, type: :model do
  describe 'Artist Model' do
    subject { Artist.new(name: 'Test Artist', bio: 'test bio', image_url: 'https://something.com/image.jpg', sites: 'www.testartist.com') }
    before { subject.save }

    it 'is valid with valid attributes' do
      expect(subject).to be_valid
    end
  end
end
