class Conversation < ApplicationRecord
    # Associates the Conversation model to the User model
    belongs_to :sender, foreign_key: :sender_id, class_name: 'User'
    belongs_to :recipient, foreign_key: :recipient_id, class_name: 'User'

    # messages are dependent on conversations and if a conversation is deleted, its associated messages will be deleted as well.
    has_many :messages, dependent: :destroy
    

    validates_uniqueness_of :sender_id, scope: :recipient_id

    # Scope validates the sender_id and recipient_id for the conversation
    # Allows the database to be queried using the between keyword
    scope :between, -> (sender_id, recipient_id) do
        where("(conversations.sender_id = ? AND conversations.recipient_id = ?) OR (conversations.sender_id = ? AND conversations.recipient_id = ?)", sender_id, recipient_id, recipient_id, sender_id)
    end
end
