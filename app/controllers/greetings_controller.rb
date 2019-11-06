class GreetingsController < ApplicationController
  def new
    @greeting = Greeting.new
  end

  def create
    @greeting = Greeting.new(greeting_params)
    if @greeting.save
      redirect_to :root
    else
      render :new
    end
  end

  private

  def greeting_params
    params.require(:greeting).permit(:name, :content)
  end

  def save_greeting(greeting)
    if greeting.save
      redirect_to :root
    else
      render :new
    end
  end

end
