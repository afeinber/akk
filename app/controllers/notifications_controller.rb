class NotificationsController < ApplicationController
  respond_to :html, :json

  def index
  end

  def destroy
    @notification = current_user.mailbox.notifications.find(params[:id])
    @notification.destroy

    respond_with(@notification)
  end

  def notification_params
    params.require(:notification).permit()
  end
end
