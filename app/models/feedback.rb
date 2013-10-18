class Feedback
  include Mongoid::Document
  field :android_id, type: String
  field :overall_rating, type: Integer
  field :useful, type: Integer
  field :content, type: Integer
  field :speaker, type: Integer
  field :anything, type: String
  field :package_name, type: String
  field :version_name, type: String
  field :current_time, type: String
  field :network_name, type: String
  field :phone_type, type: String
  field :api, type: String
  field :model, type: String
  field :vendor, type: String
end
