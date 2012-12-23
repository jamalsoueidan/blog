class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title, :language, :client, :link
      t.text :description
      t.datetime :created_at
    end
  end
end
