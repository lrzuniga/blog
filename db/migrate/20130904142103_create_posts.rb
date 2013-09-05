class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|

      t.string :title, :null => false  #hash
      t.text :body


      t.timestamps
    end
  end
end
