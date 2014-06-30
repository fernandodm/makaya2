Makaya2::App.controllers :page do

    get :index, :map => '/' do
        render 'page/index'
    end  

end
