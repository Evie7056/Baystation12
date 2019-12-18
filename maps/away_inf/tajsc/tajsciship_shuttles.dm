/obj/effect/overmap/visitable/ship/tajsciship
	name = "light tajaran station"
	fore_dir = WEST
	vessel_mass = 64000
	base = 1
	color = "#800080"
	icon = 'maps/away_inf/tajsc/tajsciship.dmi'
	icon_state = "shipstay"
	moving_state = "shipmove"
	initial_generic_waypoints = list("nav_tajsciship_start", "nav_tajbase_1", "nav_tajbase_2")
	initial_restricted_waypoints = list(
	"CCA EC Shuttle" = list("nav_tajscishuttle_dock")
	)

/obj/effect/overmap/visitable/ship/landable/tajscishuttle
	name = "Nas'tishs"
	shuttle = "Nas'tishs"
	fore_dir = WEST
	color = "#800080"
	max_speed = 1/(2 SECONDS)
	burn_delay = 2 SECONDS

/datum/shuttle/autodock/overmap/tajscishuttle
	name = "Nas'tishs"
	warmup_time = 5
	shuttle_area = /area/ship/tajsciship/shuttle
	current_location = "nav_tajscishuttle_dock"
	range = 2
	logging_home_tag = "Dock"
	logging_access = list(access_tajsciship)
	sound_takeoff = 'sound/effects/rocket.ogg'
	sound_landing = 'sound/effects/rocket_backwards.ogg'

/obj/effect/shuttle_landmark/tajscishuttle
	name = "Dock"
	landmark_tag = "nav_tajscishuttle_dock"
	base_area = /area/ship/tajsciship
	base_turf = /turf/simulated/floor/plating

/obj/effect/shuttle_landmark/tajscishuttle/nav1
	name = "Space near light station"
	landmark_tag = "nav_tajbase_1"
