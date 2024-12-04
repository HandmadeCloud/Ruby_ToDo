require "./test/test_helper"

class MemberTest < ActiveSupport::TestCase
  test "Valid member Create" do
    member = Member.new(
      email: "test@example.com",
      password: "password",
      name: "test",
      phone_number: "01012341234"
    )
    assert member.valid?
  end

  test "Invalid Phone Number" do
    member = Member.new(email: "test@example.com", name: "김말", phone_number: "12345")
    assert_not member.valid?
    assert_includes member.errors[:phone_number], "올바른 휴대폰번호 형식을 지켜주세요"
  end
end
