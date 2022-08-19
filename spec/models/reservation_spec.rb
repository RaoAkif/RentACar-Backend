require 'rails_helper'

RSpec.describe Reservation, type: :model do
  before :each do
    User.destroy_all
    Car.destroy_all
    Reservation.destroy_all
    @user = User.create(name: 'User1')
    @car = Car.create(
      name: 'Honda',
      model: 'Civic',
      desc: 'This is a Honda Civic',
      image: 'https://www.honda.com/content/dam/honda/na/us/english/images/vehicles/civic/civic-sedan-2019/civic-sedan-2019-exterior-front-left.png',
      rent: '100.00'
    )
    @reservation = Reservation.create(
      city: 'New York',
      date: Date.parse('2020-01-01'),
      user_id: 1,
      car_id: 1
    )
  end

  context 'creation' do
    it 'is invalid if city is not present' do
      @reservation.city = nil
      expect(@reservation).to_not be_valid
    end

    it 'is invalid if date is not present' do
      @reservation.date = nil
      expect(@reservation).to_not be_valid
    end

    it 'is invalid if user_id is not present' do
      @reservation.user_id = nil
      expect(@reservation).to_not be_valid
    end

    it 'is invalid if car_id is not present' do
      @reservation.car_id = nil
      expect(@reservation).to_not be_valid
    end
  end
end
