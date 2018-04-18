require 'elasticsearch/model'
class Code < ApplicationRecord
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks
  settings index: { number_of_shards: 1 } do
  mappings dynamic: 'false' do
    indexes :code_id, analyzer: 'english'
    indexes :desc, analyzer: 'english'
  end
end
  # index_name Rails.application.class.parent_name.underscore
  # document_type self.name.downcase
  belongs_to :chapter, foreign_key: :chapter_number, primary_key: :chapter_number, required: false
  # belongs_to :parent, required: false, class_name: "Code"
  # has_many :children, class_name: "Code", foreign_key: "parent_id"


  serialize :includes
  serialize :inclusionTerm
  serialize :excludes1
  serialize :excludes2

  def children
    Code.where(parent_id: self.code_id)
  end

  def parent
    Code.find_by(code_id: self.parent_id)
  end

  def self.search(query)
    __elasticsearch__.search(
      {
        size: 10000,
        query: {
          multi_match: {
            query: query,
            fields: ['code_id', 'desc']
          }
        },
        highlight: {
          pre_tags: ['<em>'],
          post_tags: ['</em>'],
          fields: {
            code_id: {},
            desc: {},
          }
        },

      }
    )
  end
end
