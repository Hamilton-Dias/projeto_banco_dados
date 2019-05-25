class CreatePossuis < ActiveRecord::Migration[5.2]
  def change
    create_table :possuis do |t|

      t.timestamps
    end
  end
end
