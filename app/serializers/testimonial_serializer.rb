class TestimonialSerializer < ActiveModel::Serializer
  attributes :name, :headline, :quote, :relation, :picture

  def picture
    if self.object.avatar.attached?
      Rails.application.routes.url_helpers.url_for(self.object.avatar)
    end
  end
end
