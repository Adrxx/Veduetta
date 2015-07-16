class Case < ActiveRecord::Base
  has_many :photos, :dependent => :destroy
  accepts_nested_attributes_for :photos, :allow_destroy => true

  validates :title, presence: true
  validates_length_of :title, :minimum => 0, :maximum => 100, :allow_blank => true
  validates :description, presence: true
  # validates :eleapsed_time, presence: true
  validates :waist_before, numericality: true, allow_blank:true
  validates :waist_after, numericality: true, allow_blank:true
  validates :weight_before, numericality: true, allow_blank:true
  validates :weight_after, numericality: true, allow_blank:true
  # validates :product_used, presence: true

end