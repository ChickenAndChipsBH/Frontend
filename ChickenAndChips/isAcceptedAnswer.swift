import Foundation

// Function to check if a user's answer should be accepted
func isAcceptedAnswer(_ userAnswer: String, _ correctAnswer: String) -> Bool {
  // Convert both strings to lowercase for case-insensitive comparison
  let lowercasedUserAnswer = userAnswer.lowercased().trimmingCharacters(in: .whitespacesAndNewlines)
  let lowercasedCorrectAnswer = correctAnswer.lowercased().trimmingCharacters(in: .whitespacesAndNewlines)

  // Check for exact match, especially for short single digit answers
  if lowercasedUserAnswer.count == 1 && lowercasedCorrectAnswer.count == 1,
     let userNumber = Int(lowercasedUserAnswer),
     let correctNumber = Int(lowercasedCorrectAnswer) {
    return userNumber == correctNumber
  }

  // Check for written number formats
  if let userNumber = convertWrittenNumber(lowercasedUserAnswer) {
    if let correctNumber = Int(lowercasedCorrectAnswer) {
      return userNumber == correctNumber
    }
  }

  // Split the correct answer by commas and spaces into an array of individual words
  let correctAnswerWords = lowercasedCorrectAnswer.components(separatedBy: CharacterSet(charactersIn: ", "))

  // Check if the user's answer contains any of the words from the correct answer
  for word in correctAnswerWords {
    if lowercasedUserAnswer.contains(word) {
      return true
    }
  }

  // Calculate Levenshtein distance between user's answer and correct answer
  let distance = levenshteinDistance(lowercasedUserAnswer, lowercasedCorrectAnswer)

  // If the Levenshtein distance is within a certain threshold, consider it accepted
  let threshold = 2 // Adjust threshold as needed
  if distance <= threshold {
    return true
  }

  // If none of the above conditions are met, consider it not accepted
  return false
}

// Function to convert written numbers to integers (basic handling)
func convertWrittenNumber(_ text: String) -> Int? {
    switch text {
    case "one":
        return 1
    case "two":
        return 2
    case "three":
        return 3
    case "four":
        return 4
    case "five":
        return 5
    case "six":
        return 6
    case "seven":
        return 7
    case "eight":
        return 8
    case "nine":
        return 9
    case "ten":
        return 10
    case "eleven":
        return 11
    // Add more cases for other written numbers as needed
    default:
        // Handle hyphenated numbers like "ninety-nine" (more complex parsing needed)
        if text.contains("-") {
            let parts = text.components(separatedBy: "-")
            if let first = convertWrittenNumber(parts[0]),
               let second = convertWrittenNumber(parts[1]) {
                return first * 100 + second
            }
        }
        return nil
    }
}


// Function to calculate Levenshtein distance between two strings
func levenshteinDistance(_ s1: String, _ s2: String) -> Int {
    let len1 = s1.count
    let len2 = s2.count
    var dp = [[Int]](repeating: [Int](repeating: 0, count: len2 + 1), count: len1 + 1)

    for i in 0...len1 {
        for j in 0...len2 {
            if i == 0 {
                dp[i][j] = j
            } else if j == 0 {
                dp[i][j] = i
            } else if s1[s1.index(s1.startIndex, offsetBy: i - 1)] == s2[s2.index(s2.startIndex, offsetBy: j - 1)] {
                dp[i][j] = dp[i - 1][j - 1]
            } else {
                dp[i][j] = 1 + min(dp[i][j - 1], dp[i - 1][j], dp[i - 1][j - 1])
            }
        }
    }

    return dp[len1][len2]
}
