class FilehelperController < ApplicationController

  def get_file
	  @file = ActiveStorage::Blob.find_by filename: params['id']
	  #@file = ActiveStorage::Blob.find(params['id'])
#	  redirect_to @file
  end

  def index
    
  end

end
