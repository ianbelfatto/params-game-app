class NamesController < ApplicationController
  def name
    your_name = params[:name]
    if your_name[0] == 'a' || your_name[0] == 'A'
      render json: {
        message: "Hey, your name starts with the first letter of the alphabet!"
      }
    else
      render json: {
      message: "Your name is #{your_name}!"
    } end
  end
end
