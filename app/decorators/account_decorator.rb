class AccountDecorator < ApplicationDecorator

  def avatar
    user_info[:image]
  end

  def user_name
    user_info[:name]
  end

  #protected

  def user_info
    (provider.try(:info) || {}).with_indifferent_access
  end

  def provider
    context[:provider]
  end
end
