class HomeController < ApplicationController
  def index
    @encryption_logs = EncryptionLog.all
  end

  def show
    @encryptionLog = EncryptionLog.find(params[:id])
  end

end
