class CheesesController < ApplicationController

  def index
    cheeses = Cheese.all
    render json: cheeses
  end

  def show
    # find a cheese using ID from the URL
    cheese = Cheese.find_by(id: params[:id])
    #send a JSOn response using that cheese response
    render json: cheese
  end

end
