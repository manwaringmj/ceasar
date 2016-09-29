def encryption(message, key)
  list = message.chars.map {|char| convert_char(char,key)}
  list.join
end
def convert_char(char, key)
  ((((char.ord - 97) + key) % 26) + 97).chr
end
def decryption(message, key)
  list = message.chars.map {|char| convert_to_org(char,key)}
  list.join
end
def convert_to_org(char, key)
  ((((char.ord - 97) - key) % 26) + 97).chr
end

print decryption("mn",5)
print encryption("whatsuppartypeople", 5)
