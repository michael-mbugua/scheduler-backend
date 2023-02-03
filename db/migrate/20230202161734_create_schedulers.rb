class CreateSchedulers < ActiveRecord::Migration[7.0]
  def change
    create_table :schedulers  do |t|
      t.text :schedule 

      t.timestamps
    end
  end
end
