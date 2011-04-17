class Menu

  RATES = {
    :SGDMYR => 2.4
  }

  def initialize
    @menu = [
      { name: 'Chicken Rice',   price: 350 },
      { name: 'Prawn Noodle',   price: 400 },
      { name: 'Herbal Duck',    price: 400 },
      { name: 'Curry Rice',     price: 320 },
      { name: 'Carrot Cake',    price: 300 }
    ]
  end

  def to_myr__1
    menu_in_myr = []
    @menu.each do |dish|
      menu_in_myr << {
        name: dish[:name],
        price: (dish[:price] * RATES[:SGDMYR]).to_i
      }
    end
    menu_in_myr
  end

  def to_myr__2
    @menu.map do |dish|
      dish[:price] = (dish[:price] * RATES[:SGDMYR]).to_i
      dish
    end
  end

  def to_myr__3
    @menu.tap do |menu|
      menu.each do |dish| 
        (dish[:price] * RATES[:SGDMYR]).to_i
      end
    end
  end

end