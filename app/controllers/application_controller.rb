class ApplicationController < ActionController::Base

  rescue_from ActiveRecord::RecordNotUnique, with: :record_not_unique
  rescue_from ActiveRecord::RecordInvalid, with: :record_invalid

  private

    def record_not_unique(error)
      redirect_to authenticated_root_path, flash: {alert: 'Already exists.'}
    end

    def record_invalid(error)
      redirect_to authenticated_root_path, flash: {alert: error}
    end
end
