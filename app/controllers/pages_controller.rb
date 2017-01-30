class PagesController < ApplicationController

  def welcome
    @header= "WELCOME page @header"
    render :welcome
  end

  def about
    @header = "About page @header"
  end

  def contest
    @header = "Contest page @header"
    flash[:notice] = "Sorry, contest is finished!"
    redirect_to welcome_url
  end

  def kitten
    @header = 'Kitten page @header'
    set_kitten_url
  end

  def kittens
    @header = "Kittens page @header"
    set_kitten_url
  end

  def set_kitten_url
    requested_size = params[:size]
    @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  end
  def secrets
    @header = "Secrets page @header"
    if params[:magic_word] == "guest"
      render :secrets
    else
      flash[:alert] = "Sorry not the magic word...."
      redirect_to '/welcome'
    end
  end
end
