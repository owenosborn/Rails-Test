class CreateSoundsets < ActiveRecord::Migration[5.2]
  def change
    create_table :soundsets do |t|
      t.string :name

      t.timestamps
    end
  end
end
