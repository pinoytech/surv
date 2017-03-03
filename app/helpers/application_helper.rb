module ApplicationHelper
  def has_error(resource, field_name)
    return 'has-error' if resource.errors[field_name].present?
  end

  def kaminari_paginate paginatable_object
    options = {theme: 'twitter-bootstrap-3', pagination_class: "pagination-sm"}
    if paginatable_object.is_a? Kaminari::PaginatableArray
      paginate paginatable_object, options
    else
      paginate ArrayPagination.paginate(paginatable_object, {page: params[:page], per: 2}), options
    end
  end

  def errors_for(object)
    if object.errors.any?
      content_tag(:div, class: "panel panel-danger") do
        concat(content_tag(:div, class: "panel-heading") do
          concat(content_tag(:h4, class: "panel-title") do
            concat "Error(s) prohibited this #{object.class.name.downcase} from being saved:"
          end)
        end)
        concat(content_tag(:div, class: "panel-body") do
          concat(content_tag(:ul) do
            object.errors.full_messages.each do |msg|
              concat content_tag(:li, msg)
            end
          end)
        end)
      end
    end
  end
end
