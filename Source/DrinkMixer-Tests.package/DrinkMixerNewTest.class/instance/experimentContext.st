accessing
experimentContext

	^ EvolutionaryAlgorithmContext
		selectingSurvivorsWith: (DrinkMixerSurvivorsSelectionStrategy workingWith: self drinkMixer)
		parentsWith: ParentSelectionStrategy new
		crossingOverWith: MixedDrinkCrossOverStrategy new
		mutatingWith: (PluggableIndividualMutationStrategy creatingMutationsByMeansOf: MixedDrinkMutator)
		stoppingCriteria: (PluggableStoppingCriteria analyzingGenerationWith: (AgingStopCondition stopAtGenerationNumber: 50))
		createGenerationWith: EvolutionaryAlgorithmGenerationBuilder new