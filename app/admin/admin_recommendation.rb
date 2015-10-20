ActiveAdmin.register Recommendation do
  index do
    column :user
    column :beacon
    column :recommendation
    actions
  end

  filter :user
  filter :beacon

  form do |f|
    f.inputs "Recommendation Details" do
      f.input :user
      f.input :beacon
    end
    f.buttons
  end

  show do
    attributes_table do
      row :user
      row :beacon
      row :recommendation
    end
    active_admin_comments
  end
end