require 'spec_helper'

describe Subscriber do
  describe '.new' do
    it 'creates an instance of Subscriber' do
      subscriber = Subscriber.new
      expect(subscriber).to be_an_instance_of(Subscriber)
    end
  end

  it "has username, email, password and password confirmation" do
    subscriber = Subscriber.new(username: 'bob', email: 'bob@gmail.com', password: 'a', password_confirmation: 'a')
    expect(subscriber.username).to eq 'bob'
    expect(subscriber.password).to eq 'a'
    expect(subscriber.password_confirmation).to eq 'a'
  end

  describe '.create' do
    it "has an id" do
      subscriber = Subscriber.create(username: 'bob', email: 'bob@gmail.com', password: 'a', password_confirmation: 'a')
      expect(subscriber.id).to_not be nil
    end
  end
end