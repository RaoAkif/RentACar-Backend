require 'rails_helper'

RSpec.describe User, type: :model do
  before :each do
    User.destroy_all
    @user = User.create(name: 'User1')
  end

  context 'creation' do
    it 'is invalid if name is not present' do
      @user.name = nil
      expect(@user).to_not be_valid
    end

    it 'is invalid if name is not unique' do
      @user2 = User.create(name: 'User1')
      expect(@user2).to_not be_valid
    end

    it 'is valid if name is present' do
      expect(@user).to be_valid
    end
  end
end
