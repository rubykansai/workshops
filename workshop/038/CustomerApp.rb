require 'rubygems'
require 'wx'
require 'dm-core'

DataMapper.setup(:default, "sqlite3:///#{Dir.pwd}/customer.db")

class Customer
  include DataMapper::Resource
  property :id, Serial
  property :name, String
  property :address, String
  property :come_count, Integer
end

DataMapper.auto_migrate!
Customer.create(:name => '田中', :address => '大阪市北区', :come_count => 3)
Customer.create(:name => '山田', :address => '堺市', :come_count => 5)
Customer.create(:name => '中村', :address => '大阪市都島区', :come_count => 1)

class CustomerApp < Wx::App
  def on_init
    frame = Wx::Frame.new(nil, -1, 'CustomerList', Wx::Point.new(50, 50), Wx:: Size.new(400, 340))
    Wx::StaticText.new(frame, -1, '名前', Wx::Point.new(30, 20))
    text = Wx:: TextCtrl.new(frame, -1, '', Wx::Point.new(70, 20))
    button = Wx:: Button.new(frame, -1, '検索', Wx::Point.new(180, 20))
    grid = Wx::Grid.new(frame, -1, Wx::Point.new(0, 60), Wx::Size.new(400, 300))
    
    grid.create_grid(Customer.all.count, 3)
    cols = [['名前', 'name'], ['住所', 'address'], ['来店回数', 'come_count']]
    (0..2).each do | i |
      grid.set_col_label_value(i, cols[i][0])
    end
    Customer.all.each_with_index  do | cust, id |
      (0..2).each do | i |
        grid.set_cell_value(id, i, eval('cust.' + cols[i][1]).to_s)
      end
    end

    evt_button(button.get_id) do |event|
      grid.get_number_rows.times { grid.delete_rows }
      grid.append_rows(Customer.all(:name.like => '%' + text.get_value + '%').count)
      Customer.all(:name.like => "%#{text.get_value}%").each_with_index do | cust, id |
        (0..2).each do | i |
          grid.set_cell_value(id, i, eval('cust.' + cols[i][1]).to_s)
        end
      end
    end
   frame.show
  end
end

CustomerApp.new.main_loop