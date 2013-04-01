require 'spec_helper'

describe Album do
  describe '.create' do
    it 'creates a new album object' do
      album = Album.create(name: 'Barcelona')
      album.should be_an_instance_of(Album)
      album.name.should eq 'Barcelona'
    end
  end
end