class CreateUploads < ActiveRecord::Migration
  def change
    create_table :uploads do |t|
      t.attachment :avatar
      t.integer :uploadable_id
      t.string :uploadable_type
    end
  end
end
