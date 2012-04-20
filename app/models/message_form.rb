class MessageForm
  include ActiveAttr::Model

  attribute :body
  attribute :group_id
  attribute :replied_to_id
  attribute :direct_to_id
  attribute :to

  validates :body, :presence => true
end

