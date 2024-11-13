# frozen_string_literal: true

class MemberService
  def self.create_member(params)
    member = Member.new(params)
    member.save!
    member.id
  end
end
