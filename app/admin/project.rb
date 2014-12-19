ActiveAdmin.register Project do


  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :title, :status, :applications, :advantages , :featured_image,:student_details, :suggestions

  index do
    column :title
    column :status
    column :applications
    column :student_details
    column :advantages
    column :suggestions
  end
  
  form do |f|
    f.inputs " project details " do

      f.input :title
      f.input :status 
      f.input :advantages, as: :ckeditor
      f.input :student_details, as: :ckeditor
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
