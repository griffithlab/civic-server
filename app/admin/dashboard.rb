ActiveAdmin.register_page 'Dashboard' do

  menu priority: 1, label: 'Dashboard'

  content title: 'CIViC Administrator Dashboard' do
    div class: "blank_slate_container", id: "dashboard_default_message" do
      span class: "blank_slate" do
        span I18n.t("active_admin.dashboard_welcome.welcome")
        small I18n.t("active_admin.dashboard_welcome.call_to_action")
      end
    end

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
     end
  end
end
