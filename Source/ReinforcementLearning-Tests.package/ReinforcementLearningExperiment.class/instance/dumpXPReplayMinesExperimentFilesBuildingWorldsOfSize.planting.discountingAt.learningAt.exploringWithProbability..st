experimenting - mines - private
dumpXPReplayMinesExperimentFilesBuildingWorldsOfSize: aWorldSize planting: aNumberOfMines discountingAt: aDiscountRate learningAt: aLearningRate exploringWithProbability: explorationProbability

	| fileStream |

	self resetStatistics.

	repetitions
		timesRepeat: [ self
				accumXPReplayMinesStatsBuildingWorldsOfSize: aWorldSize
				planting: aNumberOfMines
				discountingAt: aDiscountRate
				learningAt: aLearningRate
				exploringWithProbability: explorationProbability ].

	fileStream := (resultsDirectory , 'Mines-ExperienceReplay-W_'
		, aWorldSize printString , '-M_' , aNumberOfMines printString , '-D_'
		, aDiscountRate printString , '-L_' , aLearningRate printString
		, '-E_' , explorationProbability printString , extension)
		asFileReference writeStream.

	self dumpStatisticsTo: fileStream