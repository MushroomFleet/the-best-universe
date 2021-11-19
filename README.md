# the-best-universe
 STARMADE Public Repo for the best universe

Contains many files we have used on our servers.
All are working with StarMade 0.203.105

/chibimade/ is the first example of a new server design encouraging smaller designs

**Contents:** 

**smedit-extra-mem.bat**
Explains how to load more RAM into Jo Jaquinta's 2021 version of SMedit (link at the bottom)

/StarMade/**ServerTemplate.cfg** 
This is simply the server.cfg reorganised into groups for easy reading. After Exiting First run all line will jumble, this is fine.

/StarMade/**GameConfig.xml** 
Shows how to limit ships or stations using block & dimension limits

/StarMade/***.sh**
These bash scripts are used for monitoring and scheduling restarts using Cron and Tmux.



Custom Import .XML examples:
When the Game is updated this will reimport your changes, so is a good way to keep your settings in place.

/StarMade/customBlockBehaviourConfig/**customBlockBehaviourConfig.xml** 
Showing how to adjust a few basic settings, and sets all weapons ranges. (multiplied with weapon_range_reference in server.cfg)

/StarMade/customBlockConfig/**BlockConfigImport.xml** 
Shows how to adjust the colour and intensity of all Light Emitting blocks (normalised RBG values)

/StarMade/customEffectConfig/**customEffectConfig.xml** 
Shows how to improve the Mobility Chamber effect - Turn Rate



Custom NPC Faction Example:
 (includes npcSpawnConfig.xml appending the lines for the new faction to the bottom)

/StarMade/data/npcFactions/**SpaceApes**/   
This addon npcFaction Pack includes a complete low tech space ape faction with all ships and stations.
Once this is added to your server, you must run the following command to enable the new faction:
/npc_spawn_faction "SpaceApes" "Apes can Space!" "SpaceApes" 15


More Files will be added in time as we change more elements of the game in our server.


Please also take the time to check our first two Mods for StarMade, Duckets & Flora Factory, both written by Yelby:
https://github.com/YelbyTheCat/Starmade_mods/tree/main/Duckets
https://github.com/YelbyTheCat/Starmade_mods/tree/main/FloraFactory

Looking for SMedit 2021?
https://github.com/jjaquinta/StarMadeTools/releases
