class EmployersController < ApplicationController
  def index
    @employers = Employer.all
  end

  def show
    @employer = Employer.find(params[:id])
  end
end
