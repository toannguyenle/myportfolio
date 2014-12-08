class AppsController < ApplicationController

  def index
    apps = App.all
    render json: apps, status: 200
  end

  def show
    planet = App.find(params[:id])
    render json: App, status: 201
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

  private

  def app_params
    params.require(:app).permit(:name, :image, :id)
  end

end