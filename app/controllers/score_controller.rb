class ScoreController < ApplicationController
def scoreboard

@scores = params[Score.all]

@players = params[Player.all]

@rank = Player.order(:score)
  end

end
