module ApplicationHelper
  def body_data
    data = { view: "#{controller_path}##{action_name}" }
    data[:debug] = 'true' if Rails.env.development?
    data
  end

  def body_css_class
    controller_name = controller_path.underscore.tr('/', '-')
    "#{controller_name} #{controller_name}-#{css_action_name}"
  end

  def css_action_name
    action = action_name
    case action
    when 'update'
      'edit'
    when 'create'
      'new'
    else
      action
    end.tr('_', '-')
  end
end
