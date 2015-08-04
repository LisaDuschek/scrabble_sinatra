require('pry')

class String
  define_method(:scrabble) do

    scrabble_hash = Hash['A',1,'B',3,'C',3,'D',2,'E',1,'F',4,'G',2,'H',4,'I',1,
                         'J',8,'K',5,'L',1,'M',3,'N',1,'O',1,'P',3,'Q',10,'R',1,
                         'S',1,'T',1,'U',1,'V',4,'W',4,'X',8,'Y',4,'Z',10]

    sum = 0
    self.split('').each() do |character|
      uppercase_character = character.upcase()
      if scrabble_hash.has_key? (uppercase_character)
        sum += scrabble_hash[uppercase_character]
      else
        raise ArgumentError.new('input must be composed only of letters')
      end
    end
    sum
  end
end
