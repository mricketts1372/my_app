class GameController < ApplicationController
before_action :authenticate_user!

  def play_beginner

 @question_number = params[:question_number] || 1
 if params[:answer] != "correct"
    flash.now[:alert] = "Wrong! Check yourself before you wreck yourself"
  else

  if params[:answer]= "correct"
     flash.now[:notice] = "Yay! you are on to the next one!"
end
end
end
def play_rules
  end

 def play_intermediate
  end

  def play_advance
  end
end


