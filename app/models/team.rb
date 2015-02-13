class Team < ActiveRecord::Base
  has_attached_file :team_logo, :styles => {:medium => "200x200>",:thumb => "50x50>" }
  validates_attachment_content_type :team_logo, :content_type => /\Aimage\/.*\Z/
	has_many :players
end
