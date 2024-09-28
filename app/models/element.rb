# == Schema Information
#
# Table name: elements
#
#  id           :integer          not null, primary key
#  element_type :string
#  position     :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  post_id      :integer          not null
#
# Indexes
#
#  index_elements_on_post_id  (post_id)
#
# Foreign Keys
#
#  post_id  (post_id => posts.id)
#
class Element < ApplicationRecord
  belongs_to :post

  validates :element_type, inclusion: { in: ['paragraph', 'image', 'video-embed'] }

  has_rich_text :content
  has_one_attached :image

  def paragraph?
    element_type == 'paragraph'
  end

  def image?
    element_type == 'image'
  end
end
