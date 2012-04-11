# == Schema Information
#
# Table name: recipes
#
#  id           :integer         not null, primary key
#  name         :string(255)
#  description  :string(255)
#  instructions :text
#  link         :text
#  created_at   :datetime
#  updated_at   :datetime
#

require 'spec_helper'

describe Recipe do
  pending "add some examples to (or delete) #{__FILE__}"
end
