class AddRelationColumnToTestimonial < ActiveRecord::Migration[7.0]
  def change
    add_column :testimonials, :relation, :string
  end
end
