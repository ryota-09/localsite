class CreateNews < ActiveRecord::Migration[5.2]
  def change
    create_table :news do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.text :body
      t.string :image_id  
          
      t.timestamps
    end
  end
end
