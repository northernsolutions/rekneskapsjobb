class JobsController < ApplicationController
  def index
    @jobs = Job.all.order('exclusive DESC').order('created_at DESC').page(params[:page]).per(2)
  end

  def show
    @job = Job.find(params[:id])
  end
end
