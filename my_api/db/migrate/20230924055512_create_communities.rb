class CreateCommunities < ActiveRecord::Migration[7.0]
  def change
    create_table :communities do |t|
      t.string :character
      t.string :quotes

      t.timestamps
    end
  end
end
