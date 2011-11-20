class RegistrationsController < ApplicationController
  before_filter :authenticate_usuario!
end
