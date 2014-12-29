class AppsController < ApplicationController

  def index
    apps = App.all
    render json: apps, status: 200
  end

  def show
    app = App.find(params[:id])
    render json: app, status: 200
  end


  def create
    app = App.create(App_params)
    render json: app, status: 201
  end

  def update
    app = App.find(params[:id])
    app.update_attributes(app_params)
    render nothing: true, status: 204
  end

  def destroy
    app = App.find(params[:id])
    app.destroy
    render nothing: true, status: 204
  end
  # CUSTOM
  def like
    app = App.find(params[:id])
    puts app.like
    app.like = app.like + 1
    app.save
    render json: nil, status: :ok
  end

  private

  def app_params
    params.require(:app).permit(:name, :image, :id)
  end

end