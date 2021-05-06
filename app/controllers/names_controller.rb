class NamesController < ApplicationController
  def name
    my_name = params[:name]
    if my_name[0] == 'a'
      render json: {
        message: "Hey, your name starts with the first letter of the alphabet!"
      }
    else
    render json: {
      message: "My name is #{my_name}!"
    } end
  end
end
