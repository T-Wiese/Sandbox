import Foundation

//finds if an anagra
func isPalendrome(_ word: String) -> Bool {
  var letterDictionary: [Character:Int] = [:]

  let lowWord = word.lowercased().replacingOccurrences(of: " ", with: "")
  print(lowWord)
  for char in lowWord {
    if( letterDictionary[char] == nil) {
      letterDictionary[char] = 1
    } else {
      letterDictionary[char] = letterDictionary[char]! + 1
    }
  }

  var oddCount = 0

  for letter in letterDictionary {
    if (letter.value % 2 != 0) {
      oddCount += 1
    }
  }

  if(oddCount > 1) {
    return false
  }
  return true
}
