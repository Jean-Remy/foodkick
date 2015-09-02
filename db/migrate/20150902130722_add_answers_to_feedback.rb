class AddAnswersToFeedback < ActiveRecord::Migration
  def change
    add_column :feedbacks, :answer1, :string
    add_column :feedbacks, :answer2, :string
    add_column :feedbacks, :answer3, :string
    add_column :feedbacks, :answer4, :string
    add_column :feedbacks, :answer5, :string
  end
end
