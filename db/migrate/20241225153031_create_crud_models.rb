class CreateCrudModels < ActiveRecord::Migration[8.0]
  def change
    create_table :crud_models do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
