class User < ActiveRecord::Base
  has_secure_password

  validates_presence_of :email,:password_digest

  validates_uniqueness_of :email
  validates_length_of :email, :within => 5..50
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

  validates_length_of :password_digest, :within => 4..100

end
