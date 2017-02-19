ActiveAdmin.register Banner do
  permit_params :link, :left, :right, :top, :middle, :low, :top_link, :middle_link, :low_link

  show do |t|
    attributes_table do
      row :top_link
      row :middle_link
      row :low_link

      row :top do
        banner.top? ? image_tag(banner.top.url, height: '100') : content_tag(:span, "No Top Yet")
      end

      row :middle do
        banner.middle? ? image_tag(banner.middle.url, height: '100') : content_tag(:span, "No Middle Yet")
      end

      row :low do
        banner.low? ? image_tag(banner.low.url, height: '100') : content_tag(:span, "No low Yet")
      end
    end
  end

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs do
      f.input :top_link
      f.input :middle_link
      f.input :low_link
      f.input :top, hint: f.banner.top? ? image_tag(banner.top.url, height: '100') : content_tag(:span, "Upload JPG...")
      f.input :middle, hint: f.banner.middle? ? image_tag(banner.middle.url, height: '100') : content_tag(:span, "Upload JPG...")
      f.input :low, hint: f.banner.low? ? image_tag(banner.low.url, height: '100') : content_tag(:span, "Upload JPG...")
    end
    f.actions
  end
end
