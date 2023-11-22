class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard
    @dreams = Dream.where(user_id: current_user)
  end
end
