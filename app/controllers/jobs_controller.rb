class JobsController <  ApplicationController

  def create
    @job = Job.new(job_params)
    JobMailer.with(@job.to_h.stringify_keys).job_mail.deliver_later
    respond_to do |format|
      if @job.valid?
        format.html{ redirect_to root_path, notice: t('notice_mail_sent') }
        format.js
      else
        format.html{ render 'welcome/jobs' }
        format.js
      end
    end
  end

  private

    def job_params
      params.require(:job).permit(:name, :mail, :phone, :detail)
    end

end
