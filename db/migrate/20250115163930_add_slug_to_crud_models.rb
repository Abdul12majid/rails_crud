class AddSlugToCrudModels < ActiveRecord::Migration[8.0]
  def change
    add_column :crud_models, :slug, :string
    add_index :crud_models, :slug, unique: true
  end
end
