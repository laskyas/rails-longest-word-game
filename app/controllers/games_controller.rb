require 'open-uri'

class GamesController < ApplicationController

  def new
    grid_size = 10
    @letters = Array.new(grid_size) { ('A'..'Z').to_a.sample }
  end

  def score
    @word = params[:word]
    @letters = params[:letters]


    # word cannot be built out of the original grid
    if



    # word is valid according to the grid, but is not a valid English word

    # word is valid according to the grid and is an English word

    response = open("https://wagon-dictionary.herokuapp.com/#{@word}")
    @json = JSON.parse(response.read)

  end

end
