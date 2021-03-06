/obj/structure/headpike
	name = "spooky head on a spear"
	desc = "When you really want to send a message."
	icon = 'icons/obj/structures.dmi'
	icon_state = "headpike"
	density = FALSE
	anchored = TRUE
	var/bonespear = FALSE
	var/obj/item/twohanded/spear/spear
	var/obj/item/bodypart/head/victim

/obj/structure/headpike/bone //for bone spears
	icon_state = "headpike-bone"
	bonespear = TRUE


/obj/structure/headpike/CheckParts(list/parts_list)
	..()
	victim = locate(/obj/item/bodypart/head) in parts_list
	name = "[victim.name] on a spear"
	update_icon()
	if(bonespear)
		spear = locate(/obj/item/twohanded/spear/bonespear) in parts_list
	else
		spear = locate(/obj/item/twohanded/spear) in parts_list

/obj/structure/headpike/Initialize()
	. = ..()
	pixel_x = rand(-8, 8)

/obj/structure/headpike/update_overlays()
	. = ..()
	var/obj/item/bodypart/head/H = locate() in contents
	if(H)
		var/mutable_appearance/MA = new()
		MA.copy_overlays(H)
		MA.pixel_y = 12
		. += H

/obj/structure/headpike/on_attack_hand(mob/user, act_intent = user.a_intent, unarmed_attack_flags)
	to_chat(user, SPAN_NOTICE("You take down [src]."))
	if(victim)
		victim.forceMove(drop_location())
		victim = null
	spear.forceMove(drop_location())
	spear = null
	qdel(src)
