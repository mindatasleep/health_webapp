class CreateAthletes < ActiveRecord::Migration[6.0]
  def change
    create_table :athletes do |t|
      t.string :name
      t.text :description
      t.integer :age
      t.date :birthdate

      t.timestamps
    end
  end
end
