class Order < ApplicationRecord
belongs_to :client, class_name: "User", :foreign_key => 'client_id'
belongs_to :contractor, class_name: "User", :foreign_key => 'contractor_id'

attr_accessor :token

validates :client_id, presence: true
validates :contractor_id, presence: true
validates :token, presence: true


end
