import Foundation

// Function to check if a user's answer should be accepted
func isAcceptedAnswer(_ userAnswer: String, _ correctAnswer: String) -> Bool {
    // Convert both strings to lowercase for case-insensitive comparison
    let lowercasedUserAnswer = userAnswer.lowercased()
    let lowercasedCorrectAnswer = correctAnswer.lowercased()

    // Check if the user's answer matches the correct answer exactly
    if lowercasedUserAnswer == lowercasedCorrectAnswer {
        return true
    }

    // Split the correct answer by commas and spaces into an array of individual words
    let correctAnswerWords = lowercasedCorrectAnswer.components(separatedBy: CharacterSet(charactersIn: ", "))

    // Check if the user's answer contains any of the words from the correct answer
    for word in correctAnswerWords {
        // If the user's answer contains a word from the correct answer, consider it accepted
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

    // If none of the words from the correct answer are found in the user's answer,
    // and Levenshtein distance is above threshold, consider it not accepted
    return false
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
