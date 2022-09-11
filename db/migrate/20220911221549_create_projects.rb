class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :objective
      t.string :why
      t.string :learn
      t.belongs_to :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
