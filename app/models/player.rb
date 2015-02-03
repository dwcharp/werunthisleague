class Player < ActiveRecord::Base
	belongs_to :team
  has_attached_file :photo, :styles => {:thumb => "50x50>" }
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
end
