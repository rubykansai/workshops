require "pp"

module LiveHistory
  # ついカッとなってやった、
  # オートロードなら何でもよかった。
  # config/initializers/ に置いたので実はどうでもよかった……orz
end

class String
  def w3m(dump = false)
    open("|w3m #{"-dump" if dump} -T text/html", "w") do |f|
      f.puts(self)
    end
  end
end

module IRB
  class ReadlineInputMethod
    @@history = File.open(__FILE__).tap do |f|
      f.gets("\n__END__\n")
    end

    def gets
      if l = readline(@prompt, false)
        if l.empty?
          if h = @@history.gets("\n\n")
            h.rstrip!
            HISTORY.push(h)
          else
            HISTORY.push("### 銅鑼ナウ")
          end
        else
          HISTORY.push(l)
        end
        @line[@line_no += 1] = l + "\n"
      else
        @eof = true
        l
      end
    end
  end
end

__END__
### M as in MVC

pp [Source, Binary].map(&:reflections)

pp Source.all

pp Source.all(:include => :binaries)

### attributes_as_nice_string?

ActiveRecord::Base.class_eval do
  remove_method :inspect
end

sources = Source.all(:include => :binaries)

pp sources.first

pp sources.second

pp sources.third

puts sources.map{|s|
  ["Package: #{s.name}",
    "Version: #{s.version}",
    "Binary: #{s.binaries.map(&:name).join(", ")}"].join("\n")
}.join("\n\n")

### V as in MVC

p self

irb helper

@sources = Source.all

@source = @sources.choice

collection_select(:source, :id, @sources, :id, :name)

collection_select(:source, :id, @sources, :id, :name).w3m

update_page do |page|
  page.alert("foo")
end

@template = ActionView::Base.new

update_page do |page|
  page.event.observe(:id, :click) do |p|
    p.insert_html :bottom, :ul, content_tag(:li, "foo")
  end
end

ActionView::Base.debug_rjs = false

update_page do |page|
  page.select("table#list td.number").each do |v, i|
    v.innerHTML = i.succ
  end
end

update_page do |page|
  page.select("table#list td.number").each do |v, i|
    v.innerHTML = i.succ!
  end
end

update_page do |page|
  page.select("table#list td.number").each do |v, i|
    v.innerHTML = i.+(1)
  end
end

update_page do |page|
  page.select("table#list td.number").each do |v, i|
    v.innerHTML = page.literal("++index; // ;-)")
  end
end

### C as in MVC

ActionController::Routing::Routes.draw do |map|
  map.connect "products/:id", :controller => "catalog", :action => "view"
  map.purchase "products/:id/purchase", :controller => "catalog", :action => "purchase"
end

app.url_for "controller" => "catalog", "action" => "view", "id" => "3"

app.get "/products/3"

p app.controller.params

app.url_for "controller" => "catalog", "action" => "purchase", "id" => "123"

app.xhr :post, "products/123/purchase"

p app.controller.params
