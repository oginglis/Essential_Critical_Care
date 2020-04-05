class Category < ApplicationRecord
  belongs_to :navbar_base_folder
  has_many :sub_categories, dependent: :destroy
  has_many :infographics, dependent: :destroy
  has_many :videos, dependent: :destroy
  has_many :pdfs, dependent: :destroy

  translates :title, :description
  globalize_accessors :locales => [:en, :lo], :attributes => [:title, :description]
end
