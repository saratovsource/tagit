class Web::TemplatesController < Web::ApplicationController
  layout false
  def show
    template_path = File.join('angular_templates', params[:id])
    render template_path
  end
end
