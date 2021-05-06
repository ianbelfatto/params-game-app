class RandomNumsController < ApplicationController
  def randnum
    randnum = params[:randnum].to_i
    render json: {
      message: "Random number is #{randnum}"
    } 
  end
end
