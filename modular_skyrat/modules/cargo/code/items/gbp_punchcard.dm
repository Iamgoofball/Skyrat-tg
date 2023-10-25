/obj/item/gbp_punchcard
	name = "Good Assistant Points punchcard"
	desc = "The Good Assistant Points program is designed to supplement the income of otherwise unemployed or unpaid individuals on board Nanotrasen vessels and colonies.<br>\
	Simply get your punchcard stamped by a Head of Staff to earn 50 credits per punch upon turn-in at a Good Assistant Point machine!<br>\
	Maximum of six punches per any given card. Card replaced upon redemption of existing card. Do not lose your punchcard."
	icon = 'modular_skyrat/modules/cargo/icons/punchcard.dmi'
	icon_state = "punchcard_0"
	w_class = WEIGHT_CLASS_TINY
	var/max_punches = 6
	var/punches = 0

/obj/item/gbp_punchcard/attackby(obj/item/attacking_item, mob/user, params)
	. = ..()
	if(istype(attacking_item, /obj/item/gbp_puncher))
		if(punches < max_punches)
			punches++
			icon_state = "punchcard_[punches]"
			playsound(attacking_item, 'sound/items/boxcutter_activate.ogg', 100)
			if(punches == max_punches)
				playsound(src, 'sound/items/party_horn.ogg', 100)
				say("Congratulations, you have finished your punchcard!")
		else
			balloon_alert(user, "no room!")

/obj/item/gbp_puncher
	name = "Good Assistant Points puncher"
	desc = "A puncher for use with the Good Assistant Points system. Use it on a punchcard to punch a hole. Expect to be hassled for punches by assistants."
	icon = 'modular_skyrat/modules/cargo/icons/punchcard.dmi'
	icon_state = "puncher"
	w_class = WEIGHT_CLASS_TINY

/obj/machinery/gbp_redemption
	name = "Good Assistant Points Redemption Machine"
	desc = "Turn your Good Assistant Points punchcards in here for a payout based on the amount of punches you have, and get a new card!"
	icon = 'modular_skyrat/modules/cargo/icons/punchcard.dmi'
	icon_state = "gbp_machine"
	density = TRUE
	circuit = /obj/item/circuitboard/machine/gbp_redemption

/obj/machinery/gbp_redemption/wrench_act(mob/living/user, obj/item/tool)
	. = ..()
	default_unfasten_wrench(user, tool)
	return TOOL_ACT_TOOLTYPE_SUCCESS

/obj/machinery/gbp_redemption/attackby(obj/item/attacking_item, mob/user, params)
	if(default_deconstruction_screwdriver(user, "gbp_machine_open", "gbp_machine", attacking_item))
		return

	if(default_pry_open(attacking_item, close_after_pry = TRUE))
		return

	if(default_deconstruction_crowbar(attacking_item))
		return

	if(istype(attacking_item, /obj/item/gbp_punchcard))
		var/obj/item/gbp_punchcard/punchcard = attacking_item
		var/amount_to_reward = punchcard.punches * 50
		if(!punchcard.punches)
			playsound(src, 'sound/machines/scanbuzz.ogg', 100)
			say("You can't redeem an unpunched card!")
			return
		var/obj/item/card/id/card_used
		if(isliving(user))
			var/mob/living/living_user = user
			card_used = living_user.get_idcard(TRUE)
		if(card_used?.registered_account)
			playsound(src, 'sound/machines/printer.ogg', 100)
			card_used?.registered_account.adjust_money(amount_to_reward, "GAP: [punchcard.punches] punches")
			say("Rewarded [amount_to_reward] to your account, and dispensed a ration pack! Thank you for being a Good Assistant! Please take your new punchcard.")
			new /obj/item/storage/fancy/nugget_box(get_turf(src))
			new /obj/item/gbp_punchcard(get_turf(src))
			qdel(attacking_item)
			return
		else
			playsound(src, 'sound/machines/scanbuzz.ogg', 100)
			say("You cannot redeem a punchcard without an ID card with a valid account!")
			return
	return ..()

/obj/item/circuitboard/machine/gbp_redemption
	name = "Good Assistant Point Redemption Machine"
	greyscale_colors = CIRCUIT_COLOR_SUPPLY
	build_path = /obj/machinery/gbp_redemption
	req_components = list(
		/datum/stock_part/servo = 1)


/datum/outfit/job/rd
	backpack_contents = list(
		/obj/item/melee/baton/telescopic = 1,
		/obj/item/gbp_puncher = 1
	)

/datum/outfit/job/hos
	backpack_contents = list(
		/obj/item/evidencebag = 1,
		/obj/item/gbp_puncher = 1,
	)

/datum/outfit/job/hop
	backpack_contents = list(
		/obj/item/melee/baton/telescopic = 1,
		/obj/item/gbp_puncher = 1,
	)

/datum/outfit/job/ce
	backpack_contents = list(
		/obj/item/melee/baton/telescopic = 1,
		/obj/item/construction/rcd/ce = 1,
		/obj/item/gbp_puncher = 1,
	)

/datum/outfit/job/cmo
	backpack_contents = list(
		/obj/item/melee/baton/telescopic = 1,
		/obj/item/gbp_puncher = 1,
	)

/datum/outfit/job/captain
	backpack_contents = list(
		/obj/item/melee/baton/telescopic = 1,
		/obj/item/station_charter = 1,
		/obj/item/gbp_puncher = 1,
	)

/datum/outfit/job/quartermaster
	backpack_contents = list(
		/obj/item/melee/baton/telescopic = 1,
		/obj/item/gbp_puncher = 1,
	)

/datum/job/assistant
	paycheck = 0

/datum/outfit/job/assistant
	backpack_contents = list(/obj/item/gbp_punchcard)

/datum/design/board/gbp_machine
	name = "Good Assistant Points Redemption Machine Board"
	desc = "The circuit board for a Good Assistant Points Redemption Machine."
	id = "gbp_machine"
	build_path = /obj/item/circuitboard/machine/gbp_redemption
	category = list(
		RND_CATEGORY_MACHINE + RND_SUBCATEGORY_MACHINE_CARGO
	)
	departmental_flags = DEPARTMENT_BITFLAG_CARGO
