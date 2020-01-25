class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end

class Shape < ActiveRecord::Base
  include PgSearch::Model
end
