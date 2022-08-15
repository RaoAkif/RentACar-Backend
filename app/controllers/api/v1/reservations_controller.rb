class Api::V1::ReservationsController < ApplicationController
  before_action :set_reservation, only: %i[show update destroy]
  skip_before_action :verify_authenticity_token

  def reservation(reservation)
    {
      id: reservation.id,
      car_id: reservation.car_id,
      user_id: reservation.user_id,
      city: reservation.city,
      date: reservation.date,
      car: {
        id: reservation.car.id,
        name: reservation.car.name,
        model: reservation.car.model,
        desc: reservation.car.desc,
        rent: reservation.car.rent,
        image: reservation.car.image
      }
    }
  end

  # GET /reservations
  def index
    @user = User.find(params[:user_id])
    @reservations = @user.reservations.map do |reservation|
      reservation(reservation)
    end
    render json: @reservations
  end

  # GET /reservations/1
  def show
    render json: @reservation
  end

  # POST /reservations
  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.user_id = params[:user_id]

    if @reservation.save
      @resrv = reservation(@reservation)
      render json: @resrv, status: :created
    else
      render json: @reservation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /reservations/1
  def update
    if @reservation.update(reservation_params)
      render json: @reservation
    else
      render json: @reservation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /reservations/1
  def destroy
    @reservation.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def reservation_params
    params.require(:reservation).permit(:city, :date, :car_id)
  end
end
