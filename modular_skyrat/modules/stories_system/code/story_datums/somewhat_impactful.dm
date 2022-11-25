/*
	Somewhat Impactful:
		Stories that will impact around a department of people or so. People in the group will notice, and people really paying attention to the crew will likely see the results.
		Consider it a B-plot.

*/


/datum/story_type/somewhat_impactful
	impact = STORY_SOMEWHAT_IMPACTFUL


/*
	Central Command Inspector
		Plot Summary:
			CentCom has a funny habit of sending down "surprise" inspectors to see what the station's up to,
			despite them rarely liking the results of said inspection. Regardless, they've sent one to make sure things
			are in... some sort of shape, if not good shape.
		Actors:
			Ghost:
				Central Command Inspector (1)
*/
/datum/story_type/somewhat_impactful/centcom_inspector
	name = "Central Command Inspector"
	desc = "A Central Command inspector has come to make sure the station is in... if not good shape, a shape."
	actor_datums_to_make = list(
		/datum/story_actor/ghost/centcom_inspector = 1,
	)

/datum/story_type/somewhat_impactful/centcom_inspector/execute_story()
	. = ..()
	if(!.)
		return FALSE
	addtimer(CALLBACK(src, .proc/inform_station), 3 MINUTES)

/datum/story_type/somewhat_impactful/centcom_inspector/proc/inform_station()
	print_command_report("Hello, an inspector will be arriving shortly for a surprise inspection, ensure they have a pleasant report.", announce = TRUE)


/*
	Syndicate Central Command Inspector
		Plot Summary:
			CentCom has a funny habit of sending down "surprise" inspectors to see what the station's up to,
			which provides an opening for a Syndicate agent to slip in, knock out the real inspector, and assume
			their identity. Very handy when there's things to do and items of value to be stolen, especially %ITEM%.
		Actors:
			Ghost:
				Syndicate Central Command Inspector (1)
*/
/datum/story_type/somewhat_impactful/centcom_inspector/syndicate
	name = "Syndicate Central Command Inspector"
	desc = "A Syndicate agent has impersonated a CentCom inspector, to steal a high-value item while maintaining their cover."
	actor_datums_to_make = list(
		/datum/story_actor/ghost/centcom_inspector/syndicate = 1,
	)

/*
	Mob Money
		Plot Summary:
			A crewmember, %NAME%, has taken out a loan from the space mafia.
			However, their fundamental issue with the plan is that they never paid back, and now the space mafia's looking to collect,
			so they sent a few goons out to the station to shake 'em down for the 20 grand they owe the boss. Good thing for the collectors,
			immediate skeletal repositioning is a valid method of money collection.
		Actors:
			Ghost:
				Mafioso (2)
			Crew:
				Debtor (1)
*/

/*
	NRI Investors Revision
		Plot Summary:
			NRI External Relationships Collegium is widely known for sending in their inspections to ensure the cooperative stations' compliance with the regulations
			on the neutral stations. Most notably, *thoroughly* examining the medical and research departments' performance they've put so much money and resources in
			just to outbid the SolFed somewhere.
		Actors:
			Ghost:
				NRI Revisor (1)
*/
/datum/story_type/somewhat_impactful/centcom_inspector/nri
	name = "NRI Investors Revision"
	desc = "NRI ERC has come to make sure the money they've invested in research is the money well spent."
	actor_datums_to_make = list(
		/datum/story_actor/ghost/centcom_inspector/nri_revisor = 1,
	)

/datum/story_type/somewhat_impactful/centcom_inspector/nri/inform_station()
	print_command_report("Greetings, Nanotrasen Research Station, this is the regional collegiate councilor speaking. To ensure that our invested grants were spent well, we are dispatching a collegial revisor to perform a revision of your departments, accordingly.", announce = FALSE)

/datum/story_type/somewhat_impactful/mob_money
	name = "Mob Money"
	desc = "Some crewman's gotten themselves involved in organized crime, and now owes 20k to some mafiosos."
	actor_datums_to_make = list( // mob_debt needs to be first in the list to populate poor_sod for the mafiosos to get the correct objective text
		/datum/story_actor/crew/mob_debt = 1,
		/datum/story_actor/ghost/mafioso = 2,
	)
	/// Ref of the guy the mafiosos are hunting
	var/mob/living/carbon/human/poor_sod

/datum/story_type/somewhat_impactful/mob_money/Destroy(force, ...)
	poor_sod = null
	return ..()

/*
	NRI R&R
		Plot Summary:
			A small group of NRI marines are on shore leave, so they got drunk and decided to land on this station, ideally to get more drunk.
			Problem is, they don't really know the language.
		Actors:
			Ghost:
				NRI Marine (3)
*/

/datum/story_type/somewhat_impactful/nri_rnr
	name = "NRI R&R"
	desc = "A few drunk NRI members arrive on station for shore leave, without speaking the language."
	actor_datums_to_make = list(
		/datum/story_actor/ghost/spawn_in_arrivals/nri_shore_leave = 3,
	)
	maximum_execute_times = 1
