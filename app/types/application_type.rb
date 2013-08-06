module ApplicationType
  extend ActiveSupport::Concern

  module ClassMethods
    delegate :model_name, :name, to: :superclass

    def permit(*args)
      @_args = args
    end

    def _args
      @_args
    end
  end

  def assign_attributes(attrs = {})
    raise ArgumentError, "expected hash" if attrs.nil?
    permitted_attrs = attrs.send :permit, self.class._args
    super(permitted_attrs)
  end
end
