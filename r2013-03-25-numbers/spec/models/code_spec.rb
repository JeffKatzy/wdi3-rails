require 'open-uri'
require 'spec_helper'

describe Code do
  let(:code) {Code.create(url: 'http://www.ascii-code.com/')}

  describe '.create' do
    it 'creates a code object' do
      expect(code).to_not be nil
    end
  end

  describe "#hex" do
    it "gets the hex character" do
      code = Code.where(:hex => '41').first
      expect(code.hex).to be '41'
      expect(code.symbol).to be 'A'
    end
  end

  describe '#symbol' do
    it 'gets the hex character' do
      code = Code.where(:symbol => 'A').first
      expect(code.hex).to be '41'
      expect(code.symbol).to be 'A'
    end
  end
end

# doc.css('table tr').last.children[2].children.text