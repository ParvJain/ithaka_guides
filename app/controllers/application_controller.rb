class ApplicationController < ActionController::API
    include ActionController::Serialization
    include ActionView::Layouts
    include ActionController::Flash
	include ActionController::ImplicitRender
	include ActionController::RequestForgeryProtection
	include ActionController::Helpers
  	include ActionController::MimeResponds

end
