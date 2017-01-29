ActiveAdmin.register Job do
  permit_params :exclusive, :title, :content, :location, :date, :apply, :employer_id, :category_id, :type_id
end
