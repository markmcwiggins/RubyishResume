class CreateProfsocieties < ActiveRecord::Migration
  def change
    create_table :profsocieties do |t|
      t.string :socname

      t.timestamps
    end
  end
end
