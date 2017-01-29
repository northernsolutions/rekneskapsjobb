ActiveAdmin.register Employer do
  permit_params :profile, :name, :summary, :about, :vision, :website, :facebook, :twitter, :linkedin, :youtube, :instagram, :header, :logo

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
      f.input :about
      f.input :vision
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
