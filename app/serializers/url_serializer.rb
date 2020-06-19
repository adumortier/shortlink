class UrlSerializer
  include FastJsonapi::ObjectSerializer
  attributes :short_url, :long_url
end
