class BucketsController < ApplicationController
  before_action :authorized

  def index 
    @b = Bucket.all
  end

  def new
    @b = Bucket.new
    
  end

  def create
    @b = Bucket.new(bucket_params) 
    if @b.save
      redirect_to buckets_path, notice: "Added bucket " + bucket_params[:name].to_s()
    else
      render "new"
    end
  end
  def bucket_params 
    params.required(:bucket).permit(:bucket_type, :name)
  end
end
