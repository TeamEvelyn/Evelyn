instance creation
populationSize: aPopulationSize
	numberOfGenerations: aNumberOfGenerations
	targetAverageSurvivalCapacity: aTargetAverageSurvivalCapacity

	^self new
		initializePopulationSize: aPopulationSize
		numberOfGenerations: aNumberOfGenerations
		targetAverageSurvivalCapacity: aTargetAverageSurvivalCapacity