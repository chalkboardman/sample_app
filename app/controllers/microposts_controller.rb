class MicropostsController < ApplicationController
  before_filter :authenticate
  
  def create
    @micropost = current.microposts.build(params[:micropost])
    if @micropost.save
      flash[:success] = "Micropost saved!"
      redirect_to root_path
    else
      render 'pages/home'
    end
  end
  
  def destroy
  end
end