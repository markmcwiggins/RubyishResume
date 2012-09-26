class CreateNeedsQuals < ActiveRecord::Migration
  def change
    create_table :needs_quals do |t|
      t.text :yourneeds
      t.text :myquals

      t.timestamps
    end
  end
end
