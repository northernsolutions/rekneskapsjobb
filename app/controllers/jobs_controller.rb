class JobsController < ApplicationController
  def index
    @jobs = Job.all.order('exclusive DESC').order('published_at DESC').page(params[:page]).per(15)
    @banners = Banner.all
  end

  def show
    @job = Job.find(params[:id])
    @banners = Banner.all
  end

  def search
    @banners = Banner.all
    @jobs = Job.search(params)
  end
end
