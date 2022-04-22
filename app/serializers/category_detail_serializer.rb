class CategoryDetailSerializer
  include FastJsonapi::ObjectSerializer
  attributes :category_id, :menu_id
end
