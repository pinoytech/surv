module ArrayPagination
  module_function

  def paginate array, params
     Kaminari.paginate_array( array ).page(params[:page]).per(params[:per])
  end
end
