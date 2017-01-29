ActiveAdmin.register Employer do
  permit_params :profile, :name, :summary, :about, :vision, :website, :facebook, :twitter, :linkedin, :youtube, :instagram
end
