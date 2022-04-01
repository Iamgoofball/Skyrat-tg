// Normal SWAT dudes.

/obj/item/clothing/under/rank/security/officer/solfed
	name = "Sol Federation S.W.A.T Uniform"
	desc = "A standard S.W.A.T uniform for the Sol Federation."
	icon_state = "fbi_uniform"
	worn_icon_state = "fbi_uniform"
	icon = 'modular_skyrat/modules/goofsec/icons/clothing_swat.dmi'
	worn_icon = 'modular_skyrat/modules/goofsec/icons/worn_clothing_swat.dmi'
	unique_reskin = null

/obj/item/clothing/gloves/solfed
	name = "Sol Federation S.W.A.T Gloves"
	desc = "A standard S.W.A.T gloves for the Sol Federation."
	icon_state = "swat_gloves"
	worn_icon_state = "swat_gloves"
	icon = 'modular_skyrat/modules/goofsec/icons/clothing_swat.dmi'
	worn_icon = 'modular_skyrat/modules/goofsec/icons/worn_clothing_swat.dmi'

/obj/item/storage/belt/security/solfed
	name = "Sol Federation S.W.A.T Belt"
	desc = "A standard S.W.A.T glove for the Sol Federation."
	icon_state = "fbi_belt"
	worn_icon_state = "fbi_belt"
	icon = 'modular_skyrat/modules/goofsec/icons/clothing_swat.dmi'
	worn_icon = 'modular_skyrat/modules/goofsec/icons/worn_clothing_swat.dmi'
	unique_reskin = null

/obj/item/clothing/suit/armor/vest/solfed
	name = "Sol Federation S.W.A.T Vest"
	desc = "A standard S.W.A.T vest for the Sol Federation."
	icon_state = "fbi_armor"
	worn_icon_state = "fbi_armor"
	icon = 'modular_skyrat/modules/goofsec/icons/clothing_swat.dmi'
	worn_icon = 'modular_skyrat/modules/goofsec/icons/worn_clothing_swat.dmi'
	unique_reskin = null

/obj/item/clothing/head/helmet/solfed
	name = "Sol Federation S.W.A.T Helmet"
	desc = "A standard S.W.A.T helmet for the Sol Federation."
	icon_state = "fbi_helmet"
	worn_icon_state = "fbi_helmet"
	icon = 'modular_skyrat/modules/goofsec/icons/clothing_swat.dmi'
	worn_icon = 'modular_skyrat/modules/goofsec/icons/worn_clothing_swat.dmi'
	unique_reskin = null

// IT'S A SHIELD *bang bang bang*

/obj/item/shield/riot/solfed
	name = "Sol Federation S.W.A.T Shield"
	desc = "A standard S.W.A.T shield for the Sol Federation."
	icon_state = "fbi_shield"
	slot_flags = 0
	block_chance = 75 // Likely a huge mistake, nerf downwards if needed.
	max_integrity = INFINITE // Since their gimmick is having a shield, it probably shouldn't break fast, if at all.

// ITS A MOTHERFUCKIN MEDIC

/obj/item/clothing/under/rank/security/officer/solfed/medic
	icon_state = "medic_uniform"
	worn_icon_state = "medic_uniform"

/obj/item/clothing/gloves/solfed/medic
	icon_state = "medic_gloves"
	worn_icon_state = "medic_gloves"

/obj/item/storage/belt/security/solfed/medic
	icon_state = "medic_belt"
	worn_icon_state = "medic_belt"

/obj/item/clothing/suit/armor/vest/solfed/medic
	icon_state = "medic_armor"
	worn_icon_state = "medic_armor"

/obj/item/clothing/head/helmet/solfed/medic
	icon_state = "medic_helmet"
	worn_icon_state = "medic_helmet"

// LIGHTNING BOLT LIGHTNING BOLT

/obj/item/clothing/under/rank/security/officer/solfed/taser
	icon_state = "taser_jumpsuit"
	worn_icon_state = "taser_jumpsuit"

/obj/item/clothing/suit/armor/vest/solfed/taser
	icon_state = "taser_armor"
	worn_icon_state = "taser_armor"

/obj/item/clothing/head/helmet/solfed/taser
	icon_state = "taser_helmet"
	worn_icon_state = "taser_helmet"

// we call this a difficulty tweak

/obj/item/clothing/under/rank/security/officer/solfed/cloaker
	icon_state = "cloaker_jumpsuit"
	worn_icon_state = "cloaker_jumpsuit"

/obj/item/clothing/suit/armor/vest/solfed/cloaker
	icon_state = "cloaker_armor"
	worn_icon_state = "cloaker_armor"

/obj/item/clothing/head/helmet/solfed/cloaker
	icon_state = "cloaker_helmet"
	worn_icon_state = "cloaker_helmet"

// BULLDOZER

/obj/item/clothing/suit/armor/vest/solfed/dozer
	icon_state = "dozer_armor"
	worn_icon_state = "dozer_armor"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	armor = list(MELEE = 50, BULLET = 30, LASER = 30, ENERGY = 30, BOMB = 100, BIO = 0, FIRE = 80, ACID = 80, WOUND = 20)
	clothing_flags = BLOCKS_SHOVE_KNOCKDOWN
	strip_delay = 80
	equip_delay_other = 60

/obj/item/clothing/head/helmet/solfed/dozer
	icon_state = "dozer_helmet"
	worn_icon_state = "dozer_helmet"
	armor = list(MELEE = 35, BULLET = 30, LASER = 30, ENERGY = 40, BOMB = 100, BIO = 0, FIRE = 50, ACID = 50, WOUND = 10)

/obj/item/clothing/suit/armor/vest/solfed/dozer/skull
	icon_state = "skulldozer_armor"
	worn_icon_state = "skulldozer_armor"

/obj/item/clothing/head/helmet/solfed/dozer/skull
	icon_state = "skulldozer_helmet"
	worn_icon_state = "skulldozer_helmet"
