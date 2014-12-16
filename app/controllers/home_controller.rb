class HomeController < ApplicationController
  def index
    @ads = Ad.all
  end

  def new
    @ad = Ad.new(user: current_user)
  end

  def create
    @ad = Ad.new(parameters.merge(user: current_user))
    if @ad.valid? && @ad.save!
      redirect_to root_path
    else
      render :new
    end
  end

  def parameters
    params.require(:ad).permit(:title, :description, :category_id)
  end
end
