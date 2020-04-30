import UIKit
import Foundation


/*
 
 You’re working an internship at Twitter and are tasked to improve suggestions for accounts to follow, which already works great for established accounts because it uses content from your tweets and other accounts you follow to suggest new ones. However, when a new user signs up none of this information exists yet, but Twitter still wants to make some follow suggestions. Your team asked you to implement a function that accepts a new user’s handle and an array of many other users’ handles, which could be very long -- Twitter has over 330 million active accounts!
 
 You need to calculate a similarity score between a pair of handles by looking at the letters each contains,
 scoring +1 for each letter in the alphabet that occurs in both handles
 but scoring -1 for each letter that occurs in only one handle. Your function should return k handles from the array that have the highest similarity score to the new user’s handle.
 Example execution:
 
 handles = [‘DogeCoin’, ‘YangGang2020’, ‘HodlForLife’, ‘fakeDonaldDrumpf’, ‘GodIsLove’, ‘BernieOrBust’]
 
 suggest(‘iLoveDogs’, handles, k=2) should return [‘GodIsLove’, ‘DogeCoin’]
 
 */

func suggestUsernames(userHandle: String, handles: [String], k: Int) -> [[String]]{
    
    var finalResult: [[String]] = []
    
    let userSet = Set(userHandle)
    
    var usernameSimilarityDict: [Int: [String]] = [:]
    
    for username in handles {
        
        let usernameSet = Set(username)
        
        // intersection of two sets include elements that are present in both sets.
        
        var score = usernameSet.intersection(userSet).count
        
        score -= usernameSet.symmetricDifference(userSet).count

        if usernameSimilarityDict[score] != nil {
            usernameSimilarityDict[score]?.append(username)
        } else {
            usernameSimilarityDict[score] = [username]
        }
    }
    
    let sortedScores = usernameSimilarityDict.keys.sorted { $0 > $1 }
    
    
    for i in 0...k - 1 {
        finalResult.append(usernameSimilarityDict[sortedScores[i]]!)
    }
    return finalResult
}


suggestUsernames(userHandle: "iLoveDogs", handles: ["DogeCoin", "YangGang2020", "HodlForLife", "fakeDonaldDrumpf", "GodIsLove", "BernieOrBust"], k: 2)


