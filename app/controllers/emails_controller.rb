class EmailsController < ApplicationController

  def index
    @email = Email.new
    @emails = Email.all
  end

  def create

    @email = Email.new(params.require(:email).permit(:address))

    if @email.save
      redirect_to emails_path, notice: 'Thanks for your email. Looking forward to sending spam to you!'
    else
      @emails = Email.all
      render :index
    end

    # byebug

    # if (/\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i).match(params[:emails])
    #   @email = Email.new()
    #   @email.address = params[:emails]
    #   @email.save
    #
    #   redirect_to action: 'index'
    #
    # else
    #   flash[:error] = "NOTE: Give a valid email!!1"
    #   render :save
    # end
  end

end
