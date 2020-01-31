class BirdsController < ApplicationController
  def index
    @birds = Bird.all
    render json: @birds
  end

  def show
    bird = Bird.find(params[:id])
    if bird
      render json: bird, except: [:created_at, :updated_at]
    else
      render json: { message: 'Bird not found' }
    end
  end

end