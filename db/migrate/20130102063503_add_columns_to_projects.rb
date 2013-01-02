class AddColumnsToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :developed_at, :datetime
  end
end
