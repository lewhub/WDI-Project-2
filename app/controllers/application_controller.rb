class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_customer, :current_worker, :logged_in_as_customer?, :logged_in_as_worker?, :authorize_customer
  def current_customer
    @current_customer ||= Customer.find(session[:customer_id]) if session[:customer_id]
    rescue ActiveRecord::RecordNotFound
  end

  def current_worker
    @current_worker ||= Worker.find(session[:worker_id]) if session[:worker_id]
    rescue ActiveRecord::RecordNotFound
  end



  def logged_in_as_worker?
    !!current_worker
  end

  def logged_in_as_customer?
    !!current_customer
  end

  def authorize_customer
    unless logged_in_as_customer?
      flash[:restrict] = "Attention:: Customer Account: You do not have access to this information. Please log in."
    end
    redirect_to root_path unless logged_in_as_customer?
  end

  def authorize_worker
    unless logged_in_as_worker?
      flash[:restrict_worker] = "Attention:: Worker Account: You do not have access to this information. Please log in."
    end
    redirect_to workers_path unless logged_in_as_worker?
  end


end
