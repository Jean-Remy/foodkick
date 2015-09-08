class AddRatingsToFeedbacks < ActiveRecord::Migration
  def change
    rename_column :feedbacks, :answer1, :general_exp
    add_column :feedbacks, :general_exp_rating, :integer

    rename_column :feedbacks, :answer2, :food
    add_column :feedbacks, :food_rating, :integer

    rename_column :feedbacks, :answer3, :service
    add_column :feedbacks, :service_rating, :integer

    rename_column :feedbacks, :answer4, :quality_to_price
    add_column :feedbacks, :quality_to_price_rating, :integer

    rename_column :feedbacks, :answer5, :vibes
    add_column :feedbacks, :vibes_rating, :integer
  end
end
