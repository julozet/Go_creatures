class CreaturesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :find_creature, only: [:show, :edit, :update, :destroy]

  def index
    @creatures = Creature.all

    @markers = @creatures.geocoded.map do |creature|
      {
        lat: creature.latitude,
        lng: creature.longitude,
        info_window: render_to_string(partial: "info_window", locals: { creature: creature }),
        image_url: helpers.asset_url("https://www.cp-desk.com/wp-content/uploads/2019/02/map-marker-free-download-png.png")
      }
    end
  end

  def show
    @reservation = @creature.id
  end

  def new
    @creature = Creature.new
  end

  def create
    @creature = Creature.new(creature_params)
    @creature.user = current_user
    if @creature.save
      redirect_to creature_path(@creature)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @creature.update(creature_params)

    redirect_to creature_path(@creature)
  end

  def destroy
    @creature.destroy

    redirect_to creatures_path
  end

  def find_creature
    @creature = Creature.find(params[:id])
  end

  private

  def creature_params
    params.require(:creature).permit(:name, :address, :price, :description, :photo, :kind)
  end
end
