class Article < ActiveRecord::Base
  validates_presence_of :title, :body
  before_save :increment_edits

  belongs_to :author

  cattr_reader :per_page
  @@per_page=10

  private

    def increment_edits
      self.edits += 1 unless self.new_record?
    end
  
end
