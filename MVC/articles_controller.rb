class ArticlesController < ApplicationController
  def show
    
    #データベース名 探す (カラム名が @データベース名.テーブル名のとき）

    @user = User.find(params[:id]) 
    #create_table :user do
    #	t.integer :id　＜Relational 1＞
    #end

    @article = Article.find(user_id: @user.id) 
    #create_table :article do
  	#	t.integer :id ＜Relational 2＞
  	#	t.integer :user_id ＜Relational 1＞
  	#	t.string :title
  	#	t.string :text
	#end

    @comment = Comment.find(article_id: @article.id)

	#create_table :comment do 
  	#  t.integer :id 
  	#  t.integer :article_id ＜Relational 2＞
  	#  t.string :text

  end
end

