class Post < ActiveRecord::Base
  attr_accessible :title, :short, :detail, :created_on, :tags_attributes
  
  validates :title, :presence => true,
                    :length => { :minimum => 5 }
  validates :short, :presence => true
  validates :detail, :presence => true
  
  has_many :comments, :dependent => :destroy
  has_many :tags

  accepts_nested_attributes_for :tags, :allow_destroy => :true,
    :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }
end
