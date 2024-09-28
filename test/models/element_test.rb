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
require "test_helper"

class ElementTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
