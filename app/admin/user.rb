ActiveAdmin.register User do

  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end

  controller do
    def permitted_params
      params.permit(:user => [:organisation, :event, :email, :password])
    end
  end

  form do |f|
    f.inputs "Users" do
        f.input :email
        if f.object.new_record?
            f.input :password
            f.input :password_confirmation
        end
        f.input :organisation
        f.input :event
        f.action :submit
    end
  end
  index do
    column :id
    column :email
    column :organisation
    column :event
    default_actions
  end
  
end
