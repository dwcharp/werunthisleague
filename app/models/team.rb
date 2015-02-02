class Team < ActiveRecord::Base
  has_attached_file :team_logo
  validates_attachment_content_type :team_logo, :content_type => /\Aimage\/.*\Z/
	has_many :players
end
