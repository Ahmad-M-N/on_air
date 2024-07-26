class MicropostsController < ApplicationController
  before_action :enforce_log_in
  before_action :authorize_destoy_privelleges, only: :destroy
  
  def create
    @micropost = current_user.microposts.build(micropost_params)
    if @micropost.save
      flash[:success] = "Micropost created!"
      redirect_to root_url
    else
      # flash[:danger] = "Unable to create micropost"
      @feed = current_user.feed.paginate(page: params[:page], per_page: 10)
      render 'static_pages/home'
    end
  end

  def destroy
    @micropost.destroy
    flash[:warning] = "Micropost deleted"
    redirect_to request.referrer || root_url
  end


  private

    def micropost_params
      params.require(:micropost).permit(:content)
    end

    def authorize_destoy_privelleges
      @micropost = current_user.microposts.find_by(id: params[:id])
      if @micropost.nil?
        puts "You have no such posts"
        redirect_to root_url
      end
    end

end
