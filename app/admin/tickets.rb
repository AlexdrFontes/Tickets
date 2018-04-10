ActiveAdmin.register Ticket do
  permit_params :name, :status, :quantity, :price, :event_id

  index do
    selectable_column
    id_column
    column :name
    column :status
    column :quantity
    column :price
    column :event
    actions
  end

   form do |f|
    f.inputs do
      f.input :name
      f.input :status, as: :select, collection: Ticket.statuses.keys
      f.input :quantity
      f.input :price
      f.input :event
    end
    f.actions
  end

end
