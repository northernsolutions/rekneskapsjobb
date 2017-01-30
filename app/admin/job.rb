ActiveAdmin.register Job do
  permit_params :exclusive, :title, :content, :location, :date, :apply, :summary, :employer_id, :category_id, :type_id

  show do |t|
    attributes_table do
      row :exclusive
      row :title
      row :summary
      row :content
      row :location
      row :date
      row :apply
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
