class RepliesController < ApplicationController
  def new
    @micropost = Micropost.new
    @destination = User.find(params[:user_id])
  end
end
