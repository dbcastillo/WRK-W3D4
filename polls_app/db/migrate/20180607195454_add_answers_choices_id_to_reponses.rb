class AddAnswersChoicesIdToReponses < ActiveRecord::Migration[5.1]
  def change
    add_column :responses, :answer_choice_id, :integer
  end
end
