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

  def body_credentials
    username = params[:username]
    password = params[:password]
    output_message = ""

    if username == "hugh" && password == "swordfish"
      output_message = "valid"
      else
        output_message = "invalid"
    end
    render json: {message: output_message}
  end
end
