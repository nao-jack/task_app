class ChangeDatatypeCheckOfposts < ActiveRecord::Migration[5.0]
  def change
    change_column :posts, :check,:boolean
  end
end
