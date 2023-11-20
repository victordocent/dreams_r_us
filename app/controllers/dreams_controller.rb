class DreamsController < ApplicationController

  skip_before_action :authenticate_user!, only: :index

  def index
    @dreams = Dream.all
  end

  def show
    @dream = Dream.find(params[:id])
  end

  def new
      @dream = Dream.new
  end

  def create
    @dream = Dream.new(dream_params)
    @dream.user = current_user
    if @dream.save
      redirect_to dream_path(@dream)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def dream_params
    params.require(:dream).permit(:title, :price, :availability, :photos, :description)
  end

end
