class UsersController < ApplicationController
  before_filter :authenticate, :only => [:index, :edit, :update]
  before_filter :correct_user, :only => [:edit, :update]
  
  def index
    @title = "all  users"
    @users = User.all
  end
  
  def show
    @user = User.find(params[:id])
    @title = @user.name
  end
  
  def new
    @user = User.new
    @title = "Sign up"
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save # handle a successful save
      flash[:success] = "Welcome to Vitae"
      sign_in @user
      redirect_to @user
    else
      @title = "Sign up"
      render 'new'
    end
  end
  
  def edit
    @title = "Edit user"
  end
  
  private
  
    def authenticate
      deny_access unless signed_in?
    end
    
    def correct_user
       @user = User.find(params[:id])
       redirect_to(root_path) unless current_user(@user)
    end

end
