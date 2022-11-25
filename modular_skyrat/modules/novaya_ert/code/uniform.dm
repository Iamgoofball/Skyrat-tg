/obj/item/clothing/under/costume/nri //Copied from the russian outfit
	name = "advanced imperial fatigues"
	desc = "The latest in tactical and comfortable russian military outfits."
	icon = 'modular_skyrat/master_files/icons/obj/clothing/uniforms.dmi'
	worn_icon = 'modular_skyrat/master_files/icons/mob/clothing/uniform.dmi'
	worn_icon_digi = 'modular_skyrat/master_files/icons/mob/clothing/uniform_digi.dmi'
	icon_state = "nri_soldier"
	inhand_icon_state = "hostrench"
	armor = list(MELEE = 10, BULLET = 0, LASER = 0,ENERGY = 0, BOMB = 0, BIO = 0, FIRE = 30, ACID = 30)
	strip_delay = 50
	sensor_mode = SENSOR_COORDS
	random_sensor = FALSE
	can_adjust = FALSE

/obj/item/clothing/under/costume/nri/mob_can_equip(mob/living/M, slot, disable_warning, bypass_equip_delay_self, ignore_equipped)
	if(is_species(M, /datum/species/teshari))
		to_chat(M, span_warning("[src] is far too big for you!"))
		return FALSE
	return ..()

/obj/item/clothing/under/costume/nri/captain
	icon_state = "nri_captain"

/obj/item/clothing/under/costume/nri/medic
	icon_state = "nri_medic"

/obj/item/clothing/under/costume/nri/engineer
	icon_state = "nri_engineer"

/obj/item/clothing/under/costume/nri/revisor
	name = "collegial servant uniform"
	desc = "A white shirt and a pair of black slacks - THE uniform to fight the endless waves of unending paperwork, fines and grants."
	icon_state = "nri_revisor"
	armor = list(MELEE = 0, BULLET = 0, LASER = 0,ENERGY = 0, BOMB = 0, BIO = 0, FIRE = 30, ACID = 30)
