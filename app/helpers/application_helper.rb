module ApplicationHelper
  def full_title page_title = ""
    base_title = t("name_shop")
    page_title.empty? ? base_title : page_title + " | " + base_title
  end

  def params_category id_params
    id_params ? admin_category_path : admin_categories_path
  end

  def params_shoe id_params
    id_params ? admin_shoe_path : admin_shoes_path
  end
end
