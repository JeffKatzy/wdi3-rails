require 'spec_helper'

describe Photo do
  let(:photo) FactoryGirl.create(:photo)
  describe '.create' do
    it 'creates a new photo object' do
      photo = Photo.create(name: 'NYC', url: 'nyc.jpg')
      photo.should be_an_instance_of(Photo)
      photo.name.should eq 'NYC'
      photo.url.should eq 'nyc.jpg'
    end
  end

  describe '#album' do
    it 'should have an album' do
      photo = FactoryGirl.create(:photo)
      album = FactoryGirl.create(:album)
      photo.album.should eq album
    end
  end
end