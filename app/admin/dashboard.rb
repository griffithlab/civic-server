ActiveAdmin.register_page 'Dashboard' do
  menu priority: 1, label: 'Dashboard'

  content title: 'CIViC Administrator Dashboard' do
     columns do

       column do
         panel "Recent Comments" do
           ul do
             Comment.order('created_at DESC').limit(5).map do |comment|
               li link_to(comment.text, admin_comment_path(comment))
             end
           end
         end
       end
       column do
         panel "Recent Suggested Changes" do
           ul do
             SuggestedChange.order('created_at DESC').includes(:moderated).limit(5).map do |sc|
               li link_to(sc.moderated, admin_suggested_change_path(sc))
             end
           end
         end
       end
     end
  end
end
