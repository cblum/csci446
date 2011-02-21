class Article < ActiveRecord::Base
  validates_presence_of :title, :body
  before_save :increment_edits

  belongs_to :author

  private

    def increment_edits
      self.edits += 1 unless self.new_record?
    end
  
end
