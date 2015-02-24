ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") }, style: "padding: 0px;" do
    div class: "container", style: "background:#000000;" do
      div class: "row", style: "padding:30px 0;" do
        div class: "col-xs-12" do
          div (image_tag 'logo.png', style: 'margin:0 auto;display:block;')
        end
      end
    end
    div class: "blank_slate_container", id: "dashboard_default_message" do
      span class: "blank_slate" do
        span ("Welcome to Paradigm Sports Management Dashboard")
        small ("More stuff coming soon!")
      end
    end

    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
end
