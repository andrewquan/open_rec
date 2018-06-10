module ApplicationHelper
  def flash_messages(type)
    case type
    when :notice
      "alert alert-info"
    when :success
      "alert alert-success"
    when :error
      "alert alert-danger"
    when :warning
      "alert alert-warning"
    end
  end
end
