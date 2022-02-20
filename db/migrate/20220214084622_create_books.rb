class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.integer :title
      t.text :opinion
      t.timestamps
    end
  end
end
