class RandomUserController < ApplicationController
  before_action :authenticate_user!

  def new
    @random_user = User.pick_random(current_user)
    if @random_user
    @interaction = Interaction.where(giver: current_user.id, receiver: @random_user).first_or_create
    else
      redirect_to congrats_path
    end
  end
  
end
