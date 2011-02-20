class CreateAuthors < ActiveRecord::Migration
  def self.up
    create_table :authors do |t|
      t.string :name, :null => false

      t.timestamps
    end
	
	Article.all.each do |article|
	  author = Author.create(:name => article.author)
	  article.author = author
	  article.save
	end
	
	remove_column :articles, :author
	
  end

  def self.down
    drop_table :authors
  end
end
