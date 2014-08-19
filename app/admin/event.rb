ActiveAdmin.register Event do


  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :name, :description, :featured_image

form do |f|
    f.inputs "New event" do
      f.input :name
      f.input :description
      f.input :featured_image, :as => :file
      f.actions :submit
    end
  end

  show do |ad|
      attributes_table do
        row :name
        row :description
        row :featured_image do
          image_tag(ad.featured_image.url, size: "100x100")
        end
      end
    end

  index do
    column :name do|event|
      link_to event.name, :controller => :events, :action => :show, :id => event.id
    end
    column :description
  end
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end


end
