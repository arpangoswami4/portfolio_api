class AddEmailToTestimonial < ActiveRecord::Migration[7.0]
  def change
    add_column :testimonials, :email, :string
  end
end
