class Comment < ActiveRecord::Base

  belongs_to :article, :touch => true
  
  validates :article_id, :body, :presence => true
end
