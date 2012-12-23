ActiveAdmin.register Project do                                    
  show do
    attributes_table do
      row :id
      row :title
    end
    
    panel "List of images" do
      
      if project  .uploads.empty?
        strong { raw 'No image added!<br /><br />'}
      else
        table_for project.uploads do 
          column :avatar do |upload| 
            image_tag upload.avatar.url(:thumb)
          end
          column :remove do |upload|
            span { link_to 'Remove', admin_upload_path(upload), :method => :delete, :confirm => "Are you sure?" }
          end
        end
      end
      
      div do
        render "footer"
      end
      
    end
  end
end                                   
