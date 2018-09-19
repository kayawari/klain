module CommonKptItemValidator
  extend ActiveSupport::Concern
  included do
    validates :title, presence: true
  end
end
