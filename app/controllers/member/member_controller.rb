# app/controllers/members_controller.rb
class MemberController < ApplicationController
  def signup
    member = Members::MemberService.create_member(signup_form)
    render json: member, status: created
  end

  private

  def signup_form
    params.permit(:email, :password, :name, :phone_number)
  end
end