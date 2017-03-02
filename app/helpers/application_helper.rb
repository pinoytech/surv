module ApplicationHelper
  def has_error(resource, field_name)
    return 'has-error' if resource.errors[field_name].present?
  end
end
