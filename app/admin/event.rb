ActiveAdmin.register Event do

  
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

  # form do |f|
  #   f.inputs "Events" do
  #       f.input :title
  #       f.input :description
  #       f.input :image, :as => :file
  #       f.action :submit
  #   end
  # end

  controller do
    def permitted_params
      params.permit(:event => [:title, :description, :image])
    end
  end
  
end
