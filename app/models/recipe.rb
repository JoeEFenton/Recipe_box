class Recipe < ApplicationRecord
  has_many :fixins
  has_many :directions

  accepts_nested_attributes_for :fixins
                                reject_if: proc {|attributes| attributes['name'].blank},
                                allow_destroy: true
accepts_nested_attributes_for :directions
                              reject_if: proc {|attributes| attributes['step'].blank},
                              allow_destroy: true
validates :title, :description
end
