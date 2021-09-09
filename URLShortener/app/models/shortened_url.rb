# == Schema Information
#
# Table name: shortened_urls
#
#  id        :bigint           not null, primary key
#  short_url :string           not null
#  long_url  :string           not null
#  user_id   :integer
#
class ShortenedUrl < ApplicationRecord
    validates :short_url, :long_url, presence: true, uniqueness: true
end
