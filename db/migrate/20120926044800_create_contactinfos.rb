class CreateContactinfos < ActiveRecord::Migration
  def change
    create_table :contactinfos do |t|
      t.text :contact

      t.timestamps
    end
  end
end
