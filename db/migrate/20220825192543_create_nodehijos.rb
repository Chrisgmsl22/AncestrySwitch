class CreateNodehijos < ActiveRecord::Migration[7.0]
  def change
    create_table :nodehijos do |t|
      t.string :title
      t.text :description
      t.string :papa

      t.timestamps
    end
  end
end
