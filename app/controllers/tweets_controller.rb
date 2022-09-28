class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end
  
  def show
    @tweet = Tweet.find(params[:id])
  end
  
  def new
    @tweet = Tweet.new
  end
  
  def create
        message = params[:tweet][:message]
        tdate = Time.current
      
        @tweet = Tweet.new(message: message ,tdate: tdate )
        if @tweet.save
          redirect_to '/' #=>一覧ページにリダイレクトする
        else
          render 'new'
        end
          
        
        
  end
  
  def edit
        @tweet = Tweet.find(params[:id])
       
        
  end
    def update
        @tweet = Tweet.find(params[:id])
        
        
        @tweet.update(message: params[:tweet][:message])
        redirect_to '/'
    end
    
    def destroy
        tweet = Tweet.find(params[:id])
        tweet.destroy
        redirect_to '/'
    end
    
  
end
