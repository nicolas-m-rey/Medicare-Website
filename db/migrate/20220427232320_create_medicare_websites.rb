class CreateMedicareWebsites < ActiveRecord::Migration[6.1]
  def change
    create_table :medicare_websites do |t|

      t.timestamps
    end
  end
end
