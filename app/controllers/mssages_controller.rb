class MssagesController < ApplicationController
  def index
    @mssage = Mssage.new
    @mssages = Mssage.all
  end
  
  def create
    @mssage = Mssage.new(mssage_params)
    @mssage.save
    redirect_to root_path , notice:'メッセージを保存しました'
  end
  
  private
  def mssage_params
    params.require(:mssage).permit(:name,:age,:body)
  end
  
  ##ここまで
end
