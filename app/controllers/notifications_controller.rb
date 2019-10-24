class NotificationsController < ApplicationController
  
  def index
    render json: Notification.all
  end


  def update
    notification = Notification.find(params[:id])
    notification.update_attributes(noti_params)
    render json: notification
  end


  def create
    notification = Notification.create(noti_params)
    render json: notification
  end


  private 

  def noti_params
    params.require(:notification).permit(:message,:read)
  end

end
