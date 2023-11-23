class DreamsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :find_dream, only: [:show, :edit, :update, :destroy]

  def index
    params[:query].present? ? @dreams = Dream.where("category ILIKE ?", "%#{params[:query]}%") : @dreams = Dream.all
  end

  def show
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

  def edit
  end

  def update
    @dream.update(dream_params)
  end

  def destroy
    @dream.destroy
    redirect_to root_path status: :see_other
  end

  def search
    @results = Dream.search(params[:q])
    render :index
  end

  private
  def dream_params
    params.require(:dream).permit(:title, :price, :availability, :photos, :description, :category, photos: [])
  end

  def find_dream
    @dream = Dream.find(params[:id])
  end
end
