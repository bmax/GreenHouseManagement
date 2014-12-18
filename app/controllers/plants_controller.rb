class PlantsController < ApplicationController
  def index
    @Plant = Plant.all
  end
  
  def new
    @plant = Plant.new
  end

  def create
  end
end
