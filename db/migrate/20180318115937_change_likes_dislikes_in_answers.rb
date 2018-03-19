class ChangeLikesDislikesInAnswers < ActiveRecord::Migration[5.1]
  def change
  	change_column :answers ,:likes,:integer, default: 0
  	change_column :answers ,:dislikes,:integer, default: 0
  
  end
end
