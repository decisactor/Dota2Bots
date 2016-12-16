--npc_dota_hero_furion 			natural prophet
--npc_dota_hero_rattletrap		clockwerk
--npc_dota_hero_shredder		timbersaw
--npc_dota_hero_nevermore		shadow fiend
--npc_dota_hero_skeleton_king	wraith king
--npc_dota_hero_wisp			io 

----------------------------------------------------------------------------------------------------

function Think()


	if ( GetTeam() == TEAM_RADIANT )
	then
		print( "selecting radiant" );
		SelectHero( 0, "npc_dota_hero_furion" );			
		SelectHero( 1, "npc_dota_hero_doom_bringer" );
		SelectHero( 2, "npc_dota_hero_magnataur" );
		SelectHero( 3, "npc_dota_hero_obsidian_destroyer" );
		SelectHero( 4, "npc_dota_hero_rattletrap" );
	elseif ( GetTeam() == TEAM_DIRE )
	then
		print( "selecting dire" );
		SelectHero( 5, "npc_dota_hero_shredder" );
		SelectHero( 6, "npc_dota_hero_skeleton_king" );
		SelectHero( 7, "npc_dota_hero_wisp" );
		SelectHero( 8, "npc_dota_hero_zuus" );
		SelectHero( 9, "npc_dota_hero_nevermore" );
	end

end

----------------------------------------------------------------------------------------------------
