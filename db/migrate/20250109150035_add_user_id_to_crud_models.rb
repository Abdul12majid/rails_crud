class AddUserIdToCrudModels < ActiveRecord::Migration[8.0]
  def change
    add_column :crud_models, :user_id, :integer
  end
end
