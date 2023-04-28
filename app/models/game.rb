class Game < ApplicationRecord
  
  belongs_to :parent, class_name: "Game",
                      optional: true
  
  has_many  :extension, class_name: "Game",
                        foreign_key: "parent_id",
                        dependent: :nullify,
                        inverse_of: "parent"

end
