class CreateExperiencedetails < ActiveRecord::Migration
  def change
    create_table :experiencedetails do |t|
      t.text :description

      t.timestamps
    end
  end
end
