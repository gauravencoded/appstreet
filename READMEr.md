small = OptionValue.where(name: "Small").last
red = OptionValue.where(name: "Red").last
cotton = OptionValue.where(name: "Cotton").last
 chosen_option_value_ids = [small.id, red.id, cotton.id]
variant = Product.last.variants.joins(:option_values).where(option_values: { id: chosen_option_value_ids }).group(:id).having("count(variants.id) = ?", chosen_option_value_ids.count).first