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
  end

  def kitten
    @header = 'Kitten page @header'
  end

  def kittens
    @header = "Kittens page @header"
  end

  def secrets
    @header = "Secrets page @header"
  end
end
