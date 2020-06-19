class Url < ApplicationRecord
  
  validates :short_url, uniqueness: true, presence: true
  validates_presence_of :long_url

  def serialize
    UrlSerializer.new(self)
  end

end
