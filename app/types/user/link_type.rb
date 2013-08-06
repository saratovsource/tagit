class User::LinkType < Link
  include ApplicationType

  permit :uri
end
