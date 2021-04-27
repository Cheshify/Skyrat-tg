/obj/item/shield/riot/goliath
	name = "Goliath shield"
	desc = "A shield made from interwoven plates of goliath hide."
	icon_state = "goliath_shield"
	item_state = "goliath_shield"
	block_level = 1
	block_upgrade_walk = 1
	lefthand_file = 'icons/mob/inhands/equipment/shields_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/equipment/shields_righthand.dmi'
	materials = list ()
	transparent = FALSE
	block_power = 25
	max_integrity = 70
	block_flags = BLOCKING_PROJECTILE
	w_class = WEIGHT_CLASS_BULKY

/obj/item/shield/riot/goliath/shatter(mob/living/carbon/human/owner)
	playsound(owner, 'sound/effects/bang.ogg', 50)
	new /obj/item/stack/sheet/animalhide/goliath_hide(get_turf(src))
	qdel(src)
