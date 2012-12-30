class User < ActiveRecord::Base
  attr_accessible :email, :json, :sound    
  validates :email, :presence => true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :message => "it is not a valid e-mail address"
  has_attached_file :json
  validates_format_of :json_file_name, :with => %r{\.json$}i, :message => "file must be in .json format"
  has_attached_file :sound
  validates_format_of :sound_file_name, :with => %r{\.pcm$}i, :message => "file must be in .pcm format"
end
