class AddShareableLinkToFeedbacks < ActiveRecord::Migration[5.0]
  def change
    add_column :feedbacks, :slug, :string
    add_index :feedbacks, :slug, unique: true
  end
end
