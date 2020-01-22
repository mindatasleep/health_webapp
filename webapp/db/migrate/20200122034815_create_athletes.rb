class CreateAthletes < ActiveRecord::Migration[6.0]
  def change
    create_table :athletes do |t|
      t.string :name
      t.text :description
      t.datetime :birthdate
      t.integer :number
      t.boolean :healthy

      t.timestamps
    end
  end
end
