class MemberController < ApplicationController
  def signup
    member = Member.new(signup_form)

    member.save
  end

  def signup_form
    params.permit(:email, :password, :name, :phone_number)
  end
end