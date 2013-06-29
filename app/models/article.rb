class Article < ActiveRecord::Base

  has_many :comments

  validates :title, :content, :presence => true
  
  
  def to_param
    "#{id}-#{title.gsub(/[\s]+/, '-')}"
  end
  
end
