class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.integer :user_id
      t.string	:url
      t.timestamps null: false
  end
  def links
   	attr_accessors :title
   	attr_accessors :integer
   	attr_accessors :string
  end
end
