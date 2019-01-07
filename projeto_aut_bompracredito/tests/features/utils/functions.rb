# ---
class Functions
  def self.get_element_in_list_by_value(elements, value)
    elements.each do |element|
      next unless value.gsub(/\s+/, '').casecmp(element.text.gsub(/\s+/, '')).zero?

      puts element['outerHTML']
      return element
      # ---
    end
  end

  def self.get_element_in_list_by_id(elements, id)
    elements.each do |element|
      next unless element[:id].include? id

      puts "id: #{element[:id]} for #{element['outerHTML']}"
      return element
      # ---
    end
  end

  def self.fill_textbox_in_list_by_index(elements, index, text)
    elements.each_with_index do |element, idx|
      next unless index == idx

      puts "index: #{idx} for #{element['outerHTML']}"
      return element.send_keys text
      # ---
    end
  end

  def self.fill_textbox_in_list_by_index_using_set(elements, index, text)
    elements.each_with_index do |element, idx|
      next unless index == idx

      puts "index: #{idx} for #{element['outerHTML']}"
      return element.set text
      # ---
    end
  end

  def self.wait_url_appear(path)
    # puts URI.parse(Capybara.current_url).to_s
    until URI.parse(Capybara.current_url).to_s.include? path
      puts 'Waiting for the new url appear...'
    end
  end

  def self.wait_element_enable_by_xpath(xpath_elm)
    while Capybara.page.find(:xpath, xpath_elm)[:disabled].to_s.include? 'true'
      puts 'Waiting enable element...'
    end
    # puts Capybara.page.find(:xpath, ref)['innerHTML']
  end

  def self.get_element_by_id_using_script(id, value)
    Capybara.page.find_by_id(id).set value
  end
end
