ActiveRecord::Base.class_eval do
  def in_any_locale?(attribute)
    I18n.available_locales.any?{|locale| send(self.class.localized_attr_name_for(attribute, locale)).present?}
  end
end
