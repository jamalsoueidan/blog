ActiveAdmin.register Post do                                    
  form do |f|
     f.inputs do
       f.input :title
       f.input :body, :as => :html_editor
     end

     f.buttons
   end
end                                   
