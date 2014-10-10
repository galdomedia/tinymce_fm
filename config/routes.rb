TinymceFm::Engine.routes.draw do
  match 'tinymce_managed.js', :to => 'tinymce_fm/filemanager#tinymce_managed_js', :as => :tinymce_combine_js, :via => [:get] 
  match 'tinymce_managed.css', :to => 'tinymce_fm/filemanager#tinymce_managed_css', :as => :tinymce_combine_css, :via => [:get] 
end
Rails.application.routes.draw do
  match ':controller/tinymce_filemanager/list_images', :action => 'tinymce_filemanager_list_images', :via => [:get] 
  match ':controller/tinymce_filemanager/upload_image', :action => 'tinymce_filemanager_upload_image', :via => [:post] 
  match ':controller/tinymce_filemanager/destroy_image', :action => 'tinymce_filemanager_destroy_image', :via => [:get] 
  match ':controller/tinymce_filemanager/create_images_folder', :action => 'tinymce_filemanager_create_images_folder', :via => [:post] 

  match ':controller/tinymce_filemanager/list_media', :action => 'tinymce_filemanager_list_media', :via => [:get] 
  match ':controller/tinymce_filemanager/upload_media', :action => 'tinymce_filemanager_upload_media', :via => [:post] 
  match ':controller/tinymce_filemanager/destroy_media', :action => 'tinymce_filemanager_destroy_media', :via => [:get] 
  match ':controller/tinymce_filemanager/create_media_folder', :action => 'tinymce_filemanager_create_media_folder', :via => [:post] 
  
  match ':controller/tinymce_filemanager/list_links', :action => 'tinymce_filemanager_list_links', :via => [:get] 
end
