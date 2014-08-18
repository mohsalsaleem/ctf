ActiveAdmin.register Project do


  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :title, :status, :applications, :advantages , :student_details, :suggestions

  index do
    column :title
    column :status
    column :applications
    column :student_details
    column :advantages
    column :suggestions
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
