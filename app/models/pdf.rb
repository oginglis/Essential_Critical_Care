class Pdf < ApplicationRecord
  belongs_to :sub_category, optional: true
  belongs_to :category, optional: true
  belongs_to :secret_category, optional: true
  belongs_to :secret_sub_category, optional: true
  has_one_attached :file

  validate :there_can_be_only_one

  private

  def there_can_be_only_one
    if category_count + secret_category_count + sub_category_count + secret_sub_category_count != 1
      errors.add(:base, "You can only attach this PDF to one category")
    end
  end

  def category_count
    category.present? ? 1 : 0
  end

  def secret_category_count
    secret_category.present? ? 1 : 0
  end

  def sub_category_count
    sub_category.present? ? 1 : 0
  end

  def secret_sub_category_count
    secret_sub_category.present? ? 1 : 0
  end
end
