class RenameTypeToProjectType < ActiveRecord::Migration[6.0]
  def change
    rename_column :projects, :type, :project_type
  end
end
