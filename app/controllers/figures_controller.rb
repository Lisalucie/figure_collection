class FiguresController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @figures = Figure.all
  end

  def show
    @figure = Figure.find(params[:id])
    @user = @figure.user
  end

  def new
    @figure = Figure.new
  end

  def create
    @figure = Figure.new(figure_params)
    @figure.user = current_user
    if @figure.save
      redirect_to figure_path(@figure)
    else
      render :new
    end
  end



  def update
    @figure = Figure.find(params[:id])
    @figure.update(figure_params)
    redirect_to figure_path(@figure)
  end

  # def destroy
  #   @figure = Figure.find(params[:id])
  #   @figure.purchases.delete_all
  #   @figure.delete
  #   redirect_to dashboard_path
  # end

  private

  def figure_params
    params.require(:figure).permit(:name, :manufacturer, :version, :price, :size)
  end
end
