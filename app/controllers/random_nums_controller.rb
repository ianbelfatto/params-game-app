class RandomNumsController < ApplicationController
  def randnum
    randnum = 36
    usernum = params[:usernum].to_i
    if usernum < randnum
      render json: {
        message: "Too low!"
      }
    elsif usernum > randnum
      render json: {
        message: "Too high!"
      }
    else
      render json: {
       message: "You got it!"
      }
    end
  end
end
