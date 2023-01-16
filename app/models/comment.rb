class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :topic

  belongs_to :parent, class_name: "Comment", optional: true

  # child comment
  has_many :comments, foreign_key: :parent_id
end
