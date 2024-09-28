# == Schema Information
#
# Table name: posts
#
#  id           :integer          not null, primary key
#  description  :text
#  published    :boolean
#  published_at :datetime
#  slug         :string
#  title        :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  author_id    :integer          not null
#
# Indexes
#
#  index_posts_on_author_id  (author_id)
#  index_posts_on_slug       (slug) UNIQUE
#
# Foreign Keys
#
#  author_id  (author_id => authors.id)
#
class Post < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  belongs_to :author
  has_many :elements

  has_one_attached :header_image

  scope :published, -> do
    where(published: true)
  end

  scope :most_recently_published, -> do
    order(published_at: :desc)
  end

  def should_generate_new_friendly_id?
    title_changed?
  end
end
