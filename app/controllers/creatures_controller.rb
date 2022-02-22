class CreaturesController < ApplicationController
  before_action :find_creature, only: [:show]

  def index
    @creatures = Creature.all
  end

  def show
  end

  def new
    @creature = Creature.new
  end

  def create
    @creature = Creature.new(creature_params)
    if creature.save
      redirect_to creature_path(@creature)
    else
      render :new
    end
  end

  def find_creature
    @creature = Creature.find(params[:id])
  end

  private

  def creature_params
    params.require(:creature).permit(:name, :address, :type, :price, :description, :picture_url)
  end
end
