ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
      span class: "blank_slate" do
        span I18n.t("active_admin.dashboard_welcome.welcome")
        small I18n.t("active_admin.dashboard_welcome.call_to_action")
      end
    end

    # Here is an example of a simple dashboard with columns and panels.
    
    columns do
      column do
        panel "Products" do
          ul do
            Product.all.each do |product|
              li link_to(product.name, admin_product_path(product))  
              b product.category.name
            end
          end
        end
      end

      # column do
      #   panel "Category" do
      #     ul do
      #       Category.all.each do |category|
      #         li link_to(category.name, admin_category_path(category))
      #       end
      #     end
      #   end
      # end

      # column do
      #   panel "Info" do
      #     para "Welcome to ActiveAdmin."
      #   end
      # end
    end
  end
end
