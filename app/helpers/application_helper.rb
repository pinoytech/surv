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
end
