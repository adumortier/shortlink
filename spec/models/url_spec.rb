require 'rails_helper'

RSpec.describe Url, type: :model do

  it { should validate_presence_of :short_url }
  it { should validate_presence_of :long_url }
  it { should validate_uniqueness_of(:short_url) }
end
