class NewsesController < ApplicationController
  def index
    @newses = Newse.all
  end

  def show
    @newse = Newse.find(params[:id])
  end

  def new
    @newse = Newse.new
  end

  def create
    @newse = Newse.new(newse_params)
    @newse.user_id = current_user.id
    @newse.save
    redirect_to newse_path(@newse)
  end


  def edit
    @newse = Newse.find(params[:id])
  end

  def update
    @newse = Newse.find(params[:id])
    @newse.update(newse_params)
    redirect_to newse_path(@newse)
  end

  private
  def newse_params
  params.require(:newse).permit(:title, :body, :image)
  end
end
