class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.title :integer
      t.opinion :text
      t.user_id :integer
      t.timestamps
    end
  end
end
