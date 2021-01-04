class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.string :type
      t.string :url
      t.string :technical_skills

      t.timestamps
    end
  end
end
