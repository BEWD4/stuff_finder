class CreateAds < ActiveRecord::Migration
  def change
    create_table :ads do |t|
      t.string :title
      t.text :description
      t.references :user, index: true
      t.references :category, index: true

      t.timestamps
    end
  end
end
