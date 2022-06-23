class CreateAuthors < ActiveRecord::Migration[7.0]
  def change
    create_table :authors do |t|
      t.string :first_name, null: false, default: ''
      t.string :last_name, null: false, default: ''
      t.integer :yob, null: false, default: ''
      t.boolean :is_alive, null: false, default: true

      t.timestamps
    end
  end
end
