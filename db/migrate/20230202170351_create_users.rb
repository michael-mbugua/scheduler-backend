class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :userName
      t.string :Email
      t.text : password_digest

      t.timestamps
    end
  end
end
