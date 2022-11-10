class GroupUser < ApplicationRecord
  belongs_to :group
  belongs_to :user
  
  # 1グループ内のユーザはユニーク
  validates_uniqueness_of :group_id, scope: :user_id
end
