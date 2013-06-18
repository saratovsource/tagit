# Hook by DHH https://gist.github.com/dhh/2492118
class ActionDispatch::Routing::Mapper
  def draw(routes_name)
    instance_eval(File.read(Rails.root.join("config/routes/#{routes_name}.rb")))
  end
end

Tagit::Application.routes.draw do
  draw :api
  draw :web
end
