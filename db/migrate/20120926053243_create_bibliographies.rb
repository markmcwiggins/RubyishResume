class CreateBibliographies < ActiveRecord::Migration
  def change
    create_table :bibliographies do |t|
      t.string :title
      t.string :author_or_url

      t.timestamps
    end
  end
end
