class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard
    @creatures = Creature.all
    @reservations = Reservation.all
    @users = User.all
  end
end
