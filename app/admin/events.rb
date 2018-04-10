ActiveAdmin.register Event do
  permit_params :name, :description, :start_at, :end_at, :timezone, :venue_id,
                :logo

  filter :name
  filter :venue
  filter :start_at
  filter :end_at

  index do
    selectable_column
    column :name
    column :venue
    column :start_at
    column :end_at
    actions
  end

  show do
    attributes_table do
      row :name
      row :venue
      row :description
      row :start_at
      row :end_at
      row :timezone
      row :logo do |event|
        image_tag event.logo, alt: '' if event.logo.exists?
      end
    end
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :venue
      f.input :description
      f.input :start_at
      f.input :end_at
      f.input :timezone, as: :time_zone
      f.input :logo
    end
    f.actions
  end

end
