class Article < ApplicationRecord
  has_many :comments
  validates :title, presence: true
  # validates :body, presence: true, length : {minimum : 10 }
  validates :body , presence: true, length: {minimum: 2, message:"length must be 2 charectors"}


  
  # after_create  def try
  # puts "Congratulations! New Artice added"
  # end
 
end

