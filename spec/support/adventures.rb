module Adventures
  def self.intro
    unless File.file?('lib/calculator.rb')
      puts " Welcome to TDD Adventures!"
      puts
      puts " Your mission is to recover your code using only the tests as your"
      puts " guide. Once you fix the first test you will be given further"
      puts " instructions."
      puts
      puts " Good luck!"
      puts
      puts " To continue, run:"
      puts "   rspec"
      puts
    end
  end

  def self.continue
    return level_2 if class_exists?('SecretKey')
    level_1
  end

  def self.level_1
    puts
    puts " Muahahhahahah. You think you're smart?! Wait until you meet the Evil Warlord... Hans!"
    puts
    puts " To continue, 'git merge warlord_dave'"
  end

  def self.level_2
    puts
    puts " Nooooooo! You have defeated the Evil Warlord Hans, who has now crawled back to his cave."
    puts " I hope you're ready to challenge Dr. John Fizz-Buzz!"
    puts
    puts " To continue, 'git merge dr_john_fizz_buzz'"
  end


  def self.header
    puts
    puts '    __________  ____ '
    puts '   /_  __/ __ \/ __ \ '
    puts '    / / / / / / / / / '
    puts '   / / / /_/ / /_/ / '
    puts '  /_/ /_____/_____/ '
    puts '              ___       __                 __ '
    puts '             /   | ____/ /   _____  ____  / /___  __________  _____ '
    puts '            / /| |/ __  / | / / _ \/ __ \/ __/ / / / ___/ _ \/ ___/ '
    puts '           / ___ / /_/ /| |/ /  __/ / / / /_/ /_/ / /  /  __(__  ) '
    puts '          /_/  |_\__,_/ |___/\___/_/ /_/\__/\__,_/_/   \___/____/ '
    puts
    puts ' ---------------------------------------------------------------------'
  end

  def self.class_exists?(class_name)
    klass = Module.const_get(class_name)
    return klass.is_a?(Class)
  rescue NameError
    return false
  end
end