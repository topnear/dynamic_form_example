class CreateDescriptions < ActiveRecord::Migration
  def change
    create_table :descriptions do |t|
      t.string :name
      t.belongs_to :activity, index: true

      t.timestamps
    end
  end
end
