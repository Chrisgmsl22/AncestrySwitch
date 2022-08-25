class CreateNodes < ActiveRecord::Migration[7.0]
  def change
    create_table :nodes do |t|
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
