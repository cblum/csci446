class AddEditsToArticle < ActiveRecord::Migration
  def self.up
    add_column :articles, :edits, :integer
  end

  def self.down
    remove_column :articles, :edits
  end
end
