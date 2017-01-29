ActiveAdmin.register Banner do
  permit_params :link, :left, :right

  show do |t|
    attributes_table do
      row :link
      row :left do
        banner.left? ? image_tag(banner.left.url, height: '100') : content_tag(:span, "No Left Yet")
      end
      row :right do
        banner.right? ? image_tag(banner.right.url, height: '100') : content_tag(:span, "No Logo Yet")
      end
    end
  end

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs do
      f.input :link
      f.input :left, hint: f.banner.left? ? image_tag(banner.left.url, height: '100') : content_tag(:span, "Upload JPG...")
      f.input :right, hint: f.banner.right? ? image_tag(banner.right.url, height: '100') : content_tag(:span, "Upload JPG...")
    end
    f.actions
  end
end
