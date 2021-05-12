class Order < ApplicationRecord
belongs_to :client, class_name: "User"
belongs_to :contractor, class_name: "User"

validates :client_id, presence: true
validates :contractor_id, presence: true
end
