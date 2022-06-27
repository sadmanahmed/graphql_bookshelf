require 'rails_helper'

RSpec.describe Author, type: :model do
  before do
    @author =  Author.create!(first_name: "Mujahid", last_name: "Mia", yob: 1995, is_alive: true)
  end
  describe 'first name validations' do
    it 'is valid with the presence of first name' do
      expect(@author).to be_valid
    end
    it 'is invalid with the absence of first name' do
      @author.first_name = ''
      expect(@author).to_not be_valid
    end

    it 'is valid with the presence of last name' do
      expect(@author).to be_valid
    end
    it 'is invalid with the absence of last name' do
      @author.last_name = ''
      expect(@author).to_not be_valid
    end

    it 'is valid when first_name is at least 1 character and max 20' do
      @author.first_name = 'a'
      expect(@author).to be_valid
      @author.first_name = 'a'*20
      expect(@author).to be_valid
    end
    it 'is invalid when first_name is  more than 20 character' do
      @author.first_name = 'a'*21
      expect(@author).to_not be_valid
    end
    it 'is valid when last_name is at least 1 character and max 20' do
      @author.last_name = 'a'
      expect(@author).to be_valid
      @author.last_name = 'a'*20
      expect(@author).to be_valid
    end
    it 'is invalid when last_name is  more than 20 character' do
      @author.last_name = 'a'*21
      expect(@author).to_not be_valid
    end
  end

  describe "year of date validations" do
    it 'is valid when year is present' do
      expect(@author).to be_valid
    end
    it 'is invalid when year is absent' do
      @author.yob = ''
      expect(@author).to_not be_valid
    end

    it 'is valid when it is a number' do
      expect(@author).to be_valid
    end
    it 'is invalid when it is not a number' do
      @author.yob = '12ab'
      expect(@author).to_not be_valid
    end
  end
end
