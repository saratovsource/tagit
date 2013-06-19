module Repositories
  class ModelNotFound < RuntimeError; end;
  class Base
    cattr_accessor :model_class, :options

  end
end
