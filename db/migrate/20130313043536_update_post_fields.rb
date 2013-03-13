class UpdatePostFields < ActiveRecord::Migration
  def up
    add_column :posts, :short, :string
    add_column :posts, :detail, :string
  end

  def down
    remove_column :posts, :name
    remove_column :posts, :content
  end
end
