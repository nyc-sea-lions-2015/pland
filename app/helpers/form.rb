def input_form(type, name, args={})
  name_for_form = name.split('_').map{|word| word.capitalize}.join(' ')
  html_value = args.has_key?(:value) ? "value='#{args.fetch(:value)}'" : ''
  html_id = args.has_key?(:id) ? "id='#{args.fetch(:id)}'" : ''

  "<label for='#{name}'>#{name_for_form}:</label>
   <input type='#{type}' placeholder='#{name_for_form}' name ='#{name}' #{html_value} #{html_id}>"
end

def option(name, value, selected = false)
  html_selected = selected ? "selected='selected'" : ''

  "<option value=#{value} #{html_selected}>#{name}</option>"
end

def date_format(date_time)
  date_time.strftime("%D %I:%M %p")
end