class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    #debugger
    respond_to do |format|
      format.html
      format.xml { render :xml => @user.to_xml }
      format.json {
        render :json => @user.to_json
      }
      format.pdf { render :pdf => @user.to_pdf }
    end
  end

  def new
    @user = User.new
  end 
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = 'Welcome to Chazmatic!'
      redirect_to @user
    else
      
      render 'new'
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
end