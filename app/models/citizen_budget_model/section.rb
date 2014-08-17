# @see https://github.com/swanandp/acts_as_list/blob/ac4f602d20b679370ed4bb9702ccc3fa61af1be8/README.md#example
module CitizenBudgetModel
  class Section < ActiveRecord::Base
    acts_as_list scope: :simulator_id, top_of_list: 0
    translates :title, :description, :popover, :modal

    belongs_to :simulator
    has_many :questions, -> { order(:position) }, dependent: :destroy

    validates_presence_of :simulator_id
  end
end
