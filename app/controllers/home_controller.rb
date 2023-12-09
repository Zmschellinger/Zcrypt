class HomeController < ApplicationController
  def index
    @encryption_logs = EncryptionLog.all
  end

  def show
    @encryptionLog = EncryptionLog.find(params[:id])
  end

  def new
    @encryption_log = EncryptionLog.new
  end

  def create
    @encryption_log = EncryptionLog.new(filename: "newfile", date: "1/1/2000", body: "this is a new file")

    if @encryption_log.save
      redirect_to @encryption_log
    else
      render :new, status: :unprocessable_entity
    end
  end
end
