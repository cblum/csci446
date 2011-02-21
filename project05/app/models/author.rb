class Author < ActiveRecord::Base

  validates_presence_of :name
  validate :no_author_named_sally
  
  has_many :articles

  has_attached_file :photo,
           :url => '/assets/:class/:attachment/:id/:style/:filename',
	     :styles => {
      :thumb=> "100x100#",
      :small  => "150x150>" }

  def to_s
    name
  end

  private

    def no_author_named_sally
      errors.add_to_base("Name Sally not authorized") if name.downcase.include? 'sally'
    end

end
