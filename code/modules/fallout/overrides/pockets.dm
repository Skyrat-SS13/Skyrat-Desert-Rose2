/datum/component/storage/concrete/pockets/bos/paladin/Initialize()
	. = ..()
	max_items = 4
	max_w_class = WEIGHT_CLASS_NORMAL
	can_hold = typecacheof(list(
		/obj/item/gun/ballistic/automatic/pistol,
		/obj/item/gun/ballistic/revolver,
		/obj/item/ammo_box/magazine,
		/obj/item/ammo_box/tube,
		/obj/item/ammo_box/a357,
		/obj/item/ammo_box/l10mm,
		/obj/item/ammo_box/a762,
		/obj/item/ammo_box/shotgun,
		/obj/item/ammo_box/m44,
		/obj/item/ammo_box/a762,
		/obj/item/ammo_box/a556/stripper,
		/obj/item/ammo_box/needle,
		/obj/item/ammo_box/needleap,
		/obj/item/ammo_box/needleultra,
		/obj/item/ammo_box/a308,
		/obj/item/ammo_box/c4570,
		/obj/item/ammo_box/a50MG,
		/obj/item/gun/energy/laser/solar,
		/obj/item/gun/energy/laser/pistol,
		/obj/item/gun/energy/laser/crusader,
		/obj/item/gun/energy/laser/plasma/pistol,
		/obj/item/gun/energy/plasma/crusader,
		/obj/item/gun/energy/laser/plasma/glock,
		/obj/item/gun/energy/laser/plasma/glock/extended,
		/obj/item/gun/energy/laser/wattz,
		/obj/item/gun/energy/laser/wattz/magneto,
		/obj/item/gun/energy/laser/plasma/alien,
		/obj/item/stock_parts/cell/ammo/ec
		))

// New pocket system using global lists

/datum/component/storage/concrete/pockets/shoes
	attack_hand_interact = FALSE
	quickdraw = TRUE
	silent = TRUE

/datum/component/storage/concrete/pockets/shoes/Initialize()
	. = ..()
	cant_hold = typecacheof(list(/obj/item/screwdriver/power))
	can_hold = GLOB.storage_shoes_can_hold

/datum/component/storage/concrete/pockets/binocular
	max_items = 1

/datum/component/storage/concrete/pockets/binocular/Initialize()
	. = ..()
	can_hold = GLOB.storage_binocular_can_hold


/datum/component/storage/concrete/pockets/treasurer
	max_items = 4

/datum/component/storage/concrete/pockets/treasurer/Initialize()
	. = ..()
	can_hold = GLOB.storage_treasurer_can_hold


/datum/component/storage/concrete/pockets/bartender
	max_items = 2

/datum/component/storage/concrete/pockets/bartender/Initialize()
	. = ..()
	can_hold = GLOB.storage_bartender_can_hold

/datum/component/storage/concrete/pockets/kitchen
	max_items = 2

/datum/component/storage/concrete/pockets/kitchen/Initialize()
	. = ..()
	can_hold = GLOB.storage_kitchen_can_hold


/datum/component/storage/concrete/pockets/crafter
	max_items = 2

/datum/component/storage/concrete/pockets/crafter/Initialize()
	. = ..()
	can_hold = GLOB.storage_crafter_can_hold


/datum/component/storage/concrete/pockets/medical
	max_items = 2

/datum/component/storage/concrete/pockets/medical/Initialize()
	. = ..()
	can_hold = GLOB.storage_medical_can_hold


GLOBAL_LIST_INIT(storage_treasurer_can_hold, typecacheof(list(
	/obj/item/stack/f13Cash,
	/obj/item/key,
	/obj/item/kitchen/knife,
	/obj/item/paper,
	)))

GLOBAL_LIST_INIT(storage_bartender_can_hold, typecacheof(list(
	/obj/item/kitchen,
	/obj/item/reagent_containers/food/drinks/bottle,
	/obj/item/gun/ballistic/revolver/detective,
	/obj/item/gun/ballistic/revolver/m29/snub,
	)))

GLOBAL_LIST_INIT(storage_kitchen_can_hold, typecacheof(list(
	/obj/item/kitchen,
	/obj/item/reagent_containers/food/condiment,
	)))

GLOBAL_LIST_INIT(storage_crafter_can_hold, typecacheof(list(
	/obj/item/crowbar,
	/obj/item/wrench,
	/obj/item/screwdriver,
	/obj/item/multitool,
	/obj/item/wirecutters,
	)))

GLOBAL_LIST_INIT(storage_medical_can_hold, typecacheof(list(
	/obj/item/clothing/mask/surgical,
	/obj/item/clothing/gloves/color/latex,
	/obj/item/clothing/gloves/f13/crudemedical,
	/obj/item/healthanalyzer,
	/obj/item/reagent_containers/dropper,
	/obj/item/reagent_containers/glass/bottle,
	/obj/item/reagent_containers/pill,
	/obj/item/reagent_containers/syringe,
	/obj/item/reagent_containers/medspray,
	/obj/item/storage/pill_bottle,
	/obj/item/stack/medical,
	/obj/item/reagent_containers/hypospray,
	/obj/item/hypospray,
	/obj/item/surgical_drapes,
	/obj/item/scalpel,
	/obj/item/bonesetter,
	/obj/item/retractor,
	/obj/item/cautery,
	/obj/item/hemostat,
	/obj/item/clothing/neck/stethoscope,
	/obj/item/storage/bag/chemistry,
	/obj/item/storage/bag/bio,
	/obj/item/reagent_containers/blood,
	/obj/item/reagent_containers/chem_pack,
	)))

GLOBAL_LIST_INIT(storage_shoes_can_hold, typecacheof(list(
	/obj/item/reagent_containers/syringe,
	/obj/item/reagent_containers/hypospray/medipen,
	/obj/item/reagent_containers/dropper,
	/obj/item/screwdriver,
	/obj/item/weldingtool/mini,
	/obj/item/pen,
	/obj/item/gun/ballistic/revolver/detective,
//	/obj/item/gun/ballistic/revolver/hobo/knifegun,
	/obj/item/kitchen/knife,
	/obj/item/scalpel,
	)))

GLOBAL_LIST_INIT(storage_holster_can_hold, typecacheof(list(
	/obj/item/gun/ballistic/automatic/pistol,
	/obj/item/gun/ballistic/revolver,
	/obj/item/ammo_box/magazine,
	/obj/item/ammo_box/tube,
	/obj/item/ammo_box/a357,
	/obj/item/ammo_box/l10mm,
	/obj/item/ammo_box/a762,
	/obj/item/ammo_box/shotgun,
	/obj/item/ammo_box/m44,
	/obj/item/ammo_box/a762,
	/obj/item/ammo_box/a556/stripper,
	/obj/item/ammo_box/needle,
	/obj/item/ammo_box/needleap,
	/obj/item/ammo_box/needleultra,
	/obj/item/ammo_box/a308,
	/obj/item/ammo_box/c4570,
	/obj/item/ammo_box/a50MG,
	/obj/item/gun/energy/laser/solar,
	/obj/item/gun/energy/laser/pistol,
	/obj/item/gun/energy/laser/plasma/pistol,
	/obj/item/gun/energy/laser/plasma/glock,
	/obj/item/gun/energy/laser/plasma/glock/extended,
	/obj/item/gun/energy/laser/wattz,
	/obj/item/gun/energy/laser/wattz/magneto,
	/obj/item/gun/energy/laser/plasma/alien,
	/obj/item/stock_parts/cell/ammo/ec,
	)))

GLOBAL_LIST_INIT(storage_hat_can_hold, typecacheof(list(
	/obj/item/storage/fancy/cigarettes,
	/obj/item/toy/cards/deck,
	/obj/item/ammo_casing,
	)))

GLOBAL_LIST_INIT(storage_binocular_can_hold, typecacheof(list(
	/obj/item/binoculars,
	)))
