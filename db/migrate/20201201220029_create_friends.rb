class CreateFriends < ActiveRecord::Migration[6.0]
  def change
    create_table :friends do |t|
      t.string :name
      t.string :birthday
      t.string :zodiac
      t.text :memos

      t.timestamps
    end
  end
end
