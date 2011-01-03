class CreateAffairs < ActiveRecord::Migration
  def self.up
    create_table :affairs do |t|
      t.string :shortname
      t.text :description
      t.references :user
      t.references :category

      t.timestamps
    end
  end

  def self.down
    drop_table :affairs
  end
end
