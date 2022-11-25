/*
	Incredibly Impactful:
		Stories that will likely impact the entire station. It'll be hard for someone to be out of the way of this. They're loud, they're important, and they're
		going to have consequences.
*/

/datum/story_type/incredibly_impactful
	impact = STORY_INCREDIBLY_IMPACTFUL



/*
	Tourism Overload
		Plot Summary:
			Bad news for the crew, great news for Nanotrasen; After some clever bargaining, Nanotrasen managed to make bank on a great deal to encourage tourism at the station. The travel agency is sending
			over 15 tourists to the station. Brace for impact.
		Actors:
			Ghost:
				Obnoxious Tourist (5)
				Monolingual Tourist (2)
				Wealthy Tourist (3)
				Broke Tourist (2)
				"Tourist" (3)
*/
/datum/story_type/incredibly_impactful/tourism_overload
	name = "Tourism Overload"
	desc = "A swarm of up to 15 tourists come to the station."
	actor_datums_to_make = list(
		/datum/story_actor/ghost/spawn_in_arrivals/tourist/monolingual = 2,
		/datum/story_actor/ghost/spawn_in_arrivals/tourist/wealthy = 3,
		/datum/story_actor/ghost/spawn_in_arrivals/tourist/broke = 2,
		/datum/story_actor/ghost/spawn_in_arrivals/tourist/syndicate = 3,
		/datum/story_actor/ghost/spawn_in_arrivals/tourist = 5,
	)
