def input_form(type, name)
  name_for_form = name.split('_').map{|word| word.capitalize}.join(' ')
  "<label for='#{name}'>#{name_for_form}:</label>
   <input type='text' placeholder='#{name_for_form}' name ='#{name}'>"

end