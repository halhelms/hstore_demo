class CreateMachines < ActiveRecord::Migration
  def change
    create_table :machines do |t|
      t.string :manufacturer
      t.integer :weight
      t.string :type
      t.string :name
      t.hstore :properties

      t.timestamps
    end
  end
end
