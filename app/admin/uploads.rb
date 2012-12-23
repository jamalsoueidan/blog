ActiveAdmin.register Upload do  
  menu false
  
  form do |f|
    f.inputs "Details" do
      f.input :avatar, :as => :file
      f.input :uploadable_id, :as => :hidden, :input_html => {:value => params[:project_id]}
      f.input :uploadable_type, :as => :hidden, :input_html => {:value => 'Project'}
    end
    f.buttons
  end
  
  member_action :create, :method => :post do
    flash[:notice] = 'Upload was successfully created.'
    @upload = Upload.new(params[:upload])
    if @upload.save
      redirect_to :back
      #redirect_to admin_location_path(:id => @upload.uploadable_id)
    end
  end
  
  member_action :destroy, :method => :delete do
    flash[:notice] = 'Upload was successfully destroyed.'
    upload = Upload.find(params[:id])
    upload.delete
    redirect_to admin_project_path(:id => upload.uploadable_id)
  end
end
