class Document < ApplicationRecord
# Constant always declare on Top in model
 DOC_TYPES = ["Markesheet", "PanCard","AddressProof", "Photo Id", "Others"].freeze

  belongs_to :employee
  
  # active storage define esko (:image) ko document ke form kese use karna hai 
  # or  Document ke controller me kese permit karna hai "params" me
  has_one_attached :image

  validates :name, :doc_type, presence:true

end
