class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
    	t.string :title
    	t.text :body
    	t.boolean :allow_comments, :default => true
    	t.datetime :created_at, :updated_at
      t.belongs_to :category
    end
  end
end
