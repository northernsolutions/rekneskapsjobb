ActiveAdmin.register Job do
  permit_params :exclusive, :title, :content, :location, :date, :apply, :summary, :employer_id, :category_id, :published_at, :type_id, :longitude, :latitude

  scope :all
  scope :published
  scope :unpublished

  action_item :view, only: :show do
    link_to 'View on site', job_path(job) if job.published_at?
  end

  action_item :publish, only: :show do
    link_to "Publish", publish_admin_job_path(job), method: :put if !job.published_at?
  end

  action_item :unpublish, only: :show do
    link_to "Unpublish", unpublish_admin_job_path(job), method: :put if job.published_at?
  end

  member_action :publish, method: :put do
    job = Job.find(params[:id])
    job.update(published_at: Time.zone.now)
    redirect_to admin_job_path(job)
  end

  member_action :unpublish, method: :put do
    job = Job.find(params[:id])
    job.update(published_at: nil)
    redirect_to admin_job_path(job)
  end

  show do |t|
    attributes_table do
      row :exclusive
      row :title
      row :summary
      row :content
      row :location
      row :date
      row :apply
      row :longitude
      row :latitude
      row :published_at
      row :employer
      row :category
      row :type
    end
  end

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs do
      f.input :exclusive
      f.input :title
      f.input :summary
      f.input :content, as: :html_editor
      f.input :location
      f.input :date
      f.input :apply, as: :html_editor
      f.input :employer
      f.input :category
      f.input :type
    end
    f.actions
  end

end
