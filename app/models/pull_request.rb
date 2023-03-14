class PullRequest < ApplicationRecord
  has_many :feedbacks, class_name: "Comment" #returns all comment types
  has_many :comments, -> {where(type: nil)} #returns only type nil (regular Comment)
  has_many :change_requests
  has_many :approvals
end
