ActiveAdmin.register Text do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :genre, :title, :content
  #
  # or
  #
  # permit_params do
  #   permitted = [:genre, :title, :content]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  index do
    selectable_column
    id_column
    column :genre
    column :title
    actions
  end

  filter :genre, as: :select, collection: Movie.genres_i18n.invert.transform_values { |v| Movie.genres[v] }
  filter :title
  filter :content
  filter :created_at
  filter :updated_at

  form do |f|
    f.inputs do
      f.input :genre, as: :select, collection: Movie.genres_i18n.invert
      f.input :title
      f.input :content
    end
    f.actions
  end
end
