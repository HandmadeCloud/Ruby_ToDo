class Base < ApplicationRecord
  self.abstract_class = true

  # 공통 메서드 추가
  def self.default_scope
    where(deleted_at: nil)  # 기본적으로 삭제되지 않은 항목만 조회
  end

end