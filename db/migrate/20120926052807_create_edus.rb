class CreateEdus < ActiveRecord::Migration
  def change
    create_table :edus do |t|
      t.string :kind
      t.text :description

      t.timestamps
    end
  end
end
