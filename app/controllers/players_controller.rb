class PlayersController < ApplicationController
  def
    @players = @users.all

  end


  def create
    @player = @User.new
    @player.rank = params[:rank]
    @player.score = params[:score]
    @player.points = params [:points]

    end

  end
