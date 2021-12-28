let humanScore = 0
let computerScore = 0
let currentRoundNumber = 1

// Write your code below:
const generateTarget = () => Math.floor(Math.random() * 10)

const compareGuesses = (userGuess, compGuess, target) => {
	userGuess = getAbsoluteDistance(userGuess, target)
	compGuess = getAbsoluteDistance(compGuess, target)
	return userGuess <= compGuess ? true : false
}

const getAbsoluteDistance = (user, target) => Math.abs(user - target)

const updateScore = user => (user === 'human' ? humanScore++ : computerScore++)

const advanceRound = () => currentRoundNumber++
