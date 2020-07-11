ActiveAdmin.register Product do
    # Strong parameters trong Rails
    # cho phép Rails controllers nhận giá trị truyền từ views
    # Cho các thuộc tính được khai báo dưới đây
    permit_params :image, :name, :description, :price, :year
  
    index do
      selectable_column
      id_column
      column :name
      column :image
      column :description
      column :price
      column :year
      actions
    end
  
    # Cho phép admin search theo các thuộc tính này tại trang index
    filter :name
    filter :price
  
    # Các thuộc tính sẽ được hiển thị để Admin nhập giá trị
    form do |f|
      f.inputs "Product Details" do
        f.input :name
        f.input :image
        f.input :description
        f.input :price
        f.input :year
      end
      f.actions
    end
  
  end