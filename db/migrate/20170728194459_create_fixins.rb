class CreateFixins < ActiveRecord::Migration[5.1]
  def change
    create_table :fixins do |t|
      t.string :name
      t.belongs_to :recipe, foreign_key: true

      t.timestamps
    end
  end
end
