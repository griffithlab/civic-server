ActiveAdmin.register_page 'Dashboard' do
  menu priority: 1, label: 'Dashboard'

  content title: 'CIViC Administrator Dashboard' do
    columns do
      column do
        panel "Recent Activity" do
          ul do
            Event.includes(:originating_user, :subject, :organization).order('updated_at DESC').limit(10).reject { |e| e.subject.nil? }.map { |e| EventPresenter.new(e) }.map do |e|
              li "#{e.description} (#{time_ago_in_words(e.timestamp)} ago)"
            end
          end
        end
        panel "Evidence Items Requiring Action" do
          ul do
            EvidenceItem.includes(:submitter).where(status: 'submitted').limit(10).map do |ei|
              li link_to("#{ei.name} (by #{ei.submitter.try(:display_name)} #{time_ago_in_words(ei.created_at)} ago)", admin_evidence_item_path(ei))
            end
          end
        end
      end
      column do
        panel "Recently Joined Users" do
          ul do
            User.order('users.created_at DESC').limit(10).map do |u|
              li link_to("#{u.display_name} (#{time_ago_in_words(u.created_at)} ago)", admin_user_path(u))
            end
          end
        end
      end
    end
  end
end
