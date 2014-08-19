module CitizenBudgetModel
  class Question < ActiveRecord::Base
    acts_as_list scope: :section_id, top_of_list: 0
    translates :name, :title, :description, :modal, :popover, :labels, :unit_name, :placeholder
    globalize_accessors locales: ['en-CA', 'fr-CA']

    belongs_to :section

    validates_presence_of :section_id
  end
end
