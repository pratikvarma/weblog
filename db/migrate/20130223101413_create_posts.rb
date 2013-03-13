class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :short
      t.text :detail
      t.datetime :created_on

      t.timestamps
    end
  end
end
