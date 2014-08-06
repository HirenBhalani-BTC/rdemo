class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :code
      t.string :description
      t.string :billing_type
      t.date :start_date
      t.date :dead_date
      t.date :end_date
      t.string :github_url
      t.string :status

      t.timestamps
    end
  end
end
