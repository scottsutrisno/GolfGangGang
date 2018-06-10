# frozen_string_literal: true

class Users::ConfirmationsController < Devise::ConfirmationsController
  # GET /resource/confirmation/new
  def new
    super
  end

  # POST /resource/confirmation
  def create
    super
  end

  # GET /resource/confirmation?confirmation_token=abcdef
  def show
    super
  end

  # protected

  # The path used after resending confirmation instructions.
  def after_resending_confirmation_instructions_path_for(resource_name)
    new_users_confirmation_path
  end

  # The path used after confirmation.
  def after_confirmation_path_for(resource_name, resource)
    signin_path
  end
end
