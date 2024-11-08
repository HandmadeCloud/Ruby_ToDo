# frozen_string_literal: true
class Member < ApplicationRecord

  enum :status, { :inactive => 0, :active => 1, :suspended => 2 }

  # 유효성 검증
  validates :email,
            presence: true,
            uniqueness: true,
            format: {
              with: URI::MailTo::EMAIL_REGEXP,
              allow_blank: false,
              message: "이메일 형식이 올바르지 않습니다."
            }
  validates :password, presence: true
  validates :name,
            presence: true,
            length: { maximum: 50 }
  validates :phone_number,
            format: {
              with: /\A\d{10,11}\z/,
              message: "올바른 휴대폰번호 형식을 지켜주세요"
            }
end