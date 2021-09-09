# == Schema Information
#
# Table name: shortened_urls
#
#  id        :bigint           not null, primary key
#  short_url :string           not null
#  long_url  :string           not null
#  user_id   :integer
#
require "securerandom"

class ShortenedUrl < ApplicationRecord
    validates :short_url, :long_url, presence: true, uniqueness: true


    def self.random_code
        unless url
            SecureRandom::urlsafe_base64
        
    end
end
