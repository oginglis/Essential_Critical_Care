ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do




    columns do
      column do
        panel "Site Architecture" do
          ul do
            NavbarBaseFolder.all.map do |n|
              li link_to("Topic - " + n.title , admin_topic_path(n))
              ul do
                n.categories.all.map do |c|
                  li link_to("Category - " + c.title , admin_category_path(c))
                  ul do
                    c.sub_categories.all.map do |s|
                      li link_to("Sub Category - " + s.title , admin_sub_category_path(s))
                    end
                  end
                end
              end
            end
          end
        end
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
