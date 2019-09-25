class PrivateMessagesController < ApplicationController
  def new
    @pm = PrivateMessage.create(sender_id: current_user.id, receiver_id: params[:id])
  end

  def update
  end
end
