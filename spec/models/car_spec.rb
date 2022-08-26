require 'rails_helper'

RSpec.describe Car, type: :model do
  before :each do
    User.destroy_all
    Car.destroy_all
    @user = User.create(name: 'User1')
    @car = Car.create(
      name: 'Honda',
      model: 'Civic',
      desc: 'This is a Honda Civic',
      image: 'https://www.honda.com/content/dam/honda/na/us/english/images/vehicles/civic/civic-sedan-2019/civic-sedan-2019-exterior-front-left.png',
      rent: '100.00'
    )
  end

  context 'creation' do
    it 'is invalid if name is not present' do
      @car.name = nil
      expect(@car).to_not be_valid
    end

    it 'is invalid if model is not present' do
      @car.model = nil
      expect(@car).to_not be_valid
    end

    it 'is invalid if description is not present' do
      @car.desc = nil
      expect(@car).to_not be_valid
    end

    it 'is invalid if image is not present' do
      @car.image = nil
      expect(@car).to_not be_valid
    end

    it 'is invalid if rent is not present' do
      @car.rent = nil
      expect(@car).to_not be_valid
    end
  end
end
