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
    @encryption_log = EncryptionLog.new(encryption_log_params)

    if @encryption_log.save
      redirect_to @encryption_log
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @encryption_log = EncryptionLog.find(params[:id])
  end

  def update 
    @encryption_log = EncryptionLog.find(params[:id])

    if @encryption_log.update(encryption_log_params)
      redirect_to @encryption_log
    else
      render :edit, status: :unprocessable_entity
    end
  end
  
  def destroy
    @encryption_log = EncryptionLog.find(params[:id])
    @encryption_log.destroy
    respond_to do |format|
      format.html { redirect_to encryption_logs_url, notice: 'File was successfully removed.'}
      format.json { head :no_content}
    end
  end

  private 
    def encryption_log_params
      params.require(:encryption_log).permin(:filename, :body)
    end
end
