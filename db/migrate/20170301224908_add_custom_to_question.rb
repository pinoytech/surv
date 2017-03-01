class AddCustomToQuestion < ActiveRecord::Migration[5.0]
  def change
    add_column :questions, :custom, :boolean, default: true
  end
end
