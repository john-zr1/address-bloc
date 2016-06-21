require_relative 'entry'


class AddressBook
  attr_reader :entries
  def initialize
    @entries = []
  end

  def add_entry(name, phone_number, email)
    # #9
    index = 0
    entries.each do |entry|
    # #10
      if name < entry.nam
        break
      end
      index += 1
    end
    # #11
    entries.insert(index, Entry.new(name, phone_number, email))
  end

  def remove_entry(name, phone_number, email)
    entries.each do |entry|
      if entry.name == name || entry.phone_number == phone_number || entry.email == email
        entries.delete(entry)
      end
    end
  end
end
