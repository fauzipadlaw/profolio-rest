class Project
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  field :date, type: Date
  field :link, type: String
  field :project_duration, type: String
  field :description, type: String
  embeds_many :technologies
  embedded_in :user
end
