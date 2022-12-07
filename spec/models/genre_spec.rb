require 'rails_helper'

RSpec.describe Genre, type: :model do
  describe 'Genre Model' do
    subject { Genre.new(title: 'Pop') }
    before { subject.save }

    it 'is valid with valid attributes' do
      expect(subject).to be_valid
    end

    it 'is invalid without a title' do
      subject.title = nil
      expect(subject).to_not be_valid
    end
  end
end
