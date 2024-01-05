
def cesar_cipher(message, key, decrypt: false)
  key = - key if decrypt
  results = message.chars.map do |char|
    if char.between?('A', 'Z')
      pos_alphabet = char.ord - 'A'.ord
      ((pos_alphabet + key) % 26 + 'A'.ord).chr
    elsif char.between?('a', 'z')
      pos_alphabet = char.ord - 'a'.ord
      ((pos_alphabet + key) % 26 + 'a'.ord).chr
    else
      char
    end
  end
  results.join
end

print 'Enter a message to encrypt: '
message = gets.chomp
print 'Enter a key for decryption (interger): '
key = gets.chomp.to_i
encrypted = cesar_cipher(message, key)
p "Enrypted message with key #{key}: #{encrypted}"
p "Decrypted message: #{cesar_cipher(encrypted, key, decrypt: true)}"
