class CreateAccTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :acc_types do |t|
    	t.string :nome, null: false, default: ''
    	t.references :user

      t.timestamps
    end
  end
end
