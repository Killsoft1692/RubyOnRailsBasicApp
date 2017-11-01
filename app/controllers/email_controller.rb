class EmailController < ApplicationController

  def index
  end

  def save

    if (/\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i).match(params[:emails])
      @email = Email.new()
      @email.address = params[:emails]
      @email.save

      redirect_to action: 'index'

    else
      flash[:error] = "NOTE: Give a valid email!!1"
      render :save
    end
  end

end
