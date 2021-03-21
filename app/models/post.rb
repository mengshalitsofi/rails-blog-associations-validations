class Post < ActiveRecord::Base
    belongs_to :user
    has_many :post_tags
    has_many :tags, through: :post_tags
    validates :name, presence: true
    validates :content, presence: true

    #accepts_nested_attributes_for :tags, reject_if: :no_tag

    #def no_tag(attributes)
    #    binding.pry
    #    attributes['name'].blank?
    #end
    
end
