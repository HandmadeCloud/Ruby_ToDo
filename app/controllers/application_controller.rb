class ApplicationController < ActionController::API
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  before_action :set_locale

  rescue_from StandardError, with: :internal_server_error
  rescue_from ActiveRecord: RecordNotFound, with: :record_not_found
  rescue_from ActiveRecord: RecordInvalid, with: :record_invalid
  rescue_from ActionDispatch::Http::Parameters::ParseError, with: :error_during_processing

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  # locale 파라미터를 URL에 포함시킴
  def default_url_options
    { locale: I18n.locale }
  end

  private

  # 예외처리
  def internal_server_error(exception)
    render json: { error: 'Internal server error', message: exception.message }, status: :internal_server_error
  end

  def record_not_found(exception)
    render json: { error: 'Record not found', message: exception.message }, status: :record_invalid
  end

  def record_invalid(exception)
    render json: { error: 'Record invalid', message: exception.record.errors.full_messages }, status: :unprocessable_entity
  end

  def error_during_processing(exception)
    render json: { error: 'Bad request', message: exception.message }, status: :bad_request
  end
end
