class AddUserNameToCrudModels < ActiveRecord::Migration[8.0]
  def change
    add_column :crud_models, :user_name, :string
  end
end
