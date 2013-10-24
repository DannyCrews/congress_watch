class UsersController < ApplicationController

  def index
    render('hello')
    # redirect_to(:action => 'other_hello')
  end

  def new
    @user = User.new
    end

    def create
      @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
      else
        format.html { render action: 'new' }
      end
    end
    end



    def hello
    @array = [1,2,3,4,5]
    @id = params[:id].to_i
    @page = params[:page].to_i
  end
  
  def other_hello
    render(:text => 'Hello Everyone!')
  end

end



  
