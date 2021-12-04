class CreateFilms < ActiveRecord::Migration[6.1]
  def change
    create_table :films do |t|
      t.string :title
      t.integer :year
      t.string :rating

      t.timestamps
    end
  end
end
