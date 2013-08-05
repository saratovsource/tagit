class UrlValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    record.errors[attribute] << (options.fetch(:message, "must be a valid URL")) unless valid_url?(value)
  end

  def valid_url?(url)
    url = URI.parse url
    url.kind_of?(URI::HTTP) || url.kind_of(URI::HTTPS)
  rescue URI::InvalidURIError
    false
  end
end
