ActiveAdmin.register Event do


  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :name, :event_date ,:description,:excerpt,:featured_image

  form do |f|
    f.inputs " event details " do
      
      f.input :name
      f.input :event_date 
      f.input :description, as: :ckeditor
      f.input :excerpt , as: :ckeditor
      f.input :featured_image, :as => :file
    end
    f.actions 
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
