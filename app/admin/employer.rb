ActiveAdmin.register Employer do
  permit_params :profile, :name, :summary, :about, :vision, :website, :facebook, :twitter, :linkedin, :youtube, :instagram, :header, :logo, :published_at

  scope :all
  scope :published
  scope :unpublished

  action_item :view, only: :show do
    link_to 'View on site', employer_path(employer) if employer.published_at?
  end

  action_item :publish, only: :show do
    link_to "Publish", publish_admin_employer_path(employer), method: :put if !employer.published_at?
  end

  action_item :unpublish, only: :show do
    link_to "Unpublish", unpublish_admin_employer_path(employer), method: :put if employer.published_at?
  end

  member_action :publish, method: :put do
    employer = Employer.find(params[:id])
    employer.update(published_at: Time.zone.now)
    redirect_to admin_employer_path(employer)
  end

  member_action :unpublish, method: :put do
    employer = Employer.find(params[:id])
    employer.update(published_at: nil)
    redirect_to admin_employer_path(employer)
  end


  show do |t|
    attributes_table do
      row :profile
      row :name
      row :summary
      row :about
      row :vision
      row :website
      row :facebook
      row :twitter
      row :linkedin
      row :youtube
      row :instagram
      row :published_at
      row :header do
        employer.header? ? image_tag(employer.header.url, height: '100') : content_tag(:span, "No Header Yet")
      end
      row :logo do
        employer.logo? ? image_tag(employer.logo.url, height: '100') : content_tag(:span, "No Logo Yet")
      end
    end
  end

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs do
      f.input :profile
      f.input :name
      f.input :summary
      f.input :about, as: :html_editor
      f.input :vision, as: :html_editor
      f.input :website
      f.input :facebook
      f.input :twitter
      f.input :linkedin
      f.input :youtube
      f.input :instagram
      f.input :header, hint: f.employer.header? ? image_tag(employer.header.url, height: '100') : content_tag(:span, "Upload JPG...")
      f.input :logo, hint: f.employer.logo? ? image_tag(employer.logo.url, height: '100') : content_tag(:span, "Upload JPG...")
    end
    f.actions
  end
end
