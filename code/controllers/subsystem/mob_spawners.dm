SUBSYSTEM_DEF(mobspawners)
	name = "Mob Spawners"
	wait = 10 SECONDS

/datum/controller/subsystem/mobspawners/fire(resumed = 0)
	for(var/obj/structure/nest/N in GLOB.mob_nests)
		N.spawn_mob()
	for(var/obj/structure/destructible/hatchery/N in GLOB.mob_nests)
		N.spawn_mob()
	for(var/mob/living/simple_animal/hostile/giantantqueen/Q in GLOB.mob_nests)
		if(QDELETED(Q) || !get_turf(Q))
			GLOB.mob_nests -= Q
			continue
		Q.spawn_mob()
