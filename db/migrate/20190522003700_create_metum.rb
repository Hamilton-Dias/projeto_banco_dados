class CreateMeta < ActiveRecord::Migration[5.2]
  def change
    create_table :metum do |t|
    	t.string :interna, null: false, default: ''
    	t.string :fejesc, null: false, default: ''
    	t.string :situacao, null: false, default: ''

      	t.timestamps
    end
  end
end
