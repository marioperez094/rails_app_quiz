class JobsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @jobs = Job.all
    render 'jobs/jobs'
  end

  def create
    @job = Job.new(job_params)

    if @job.save
      render 'jobs/create'
    end
  end

  def find
    @job = Job.find_by(id: params[:id])

    if @job
      render 'jobs/create'
    end
  end

  private

  def job_params
    params.require(:job).permit(:job_title)
  end

end
