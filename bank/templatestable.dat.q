<0>
# Peasant
<type         NORMAL 400>
<frequency    100>
<region       { CITY 0  FARM 0 PEASANTSMALL 0 PEASANTMEDIUM 0 PEASANTLARGE 0 PEASANT 0 } >
<regionlimit  { CITY 1 FARM 1 PEASANTSMALL 2 PEASANTMEDIUM 4 PEASANTLARGE 6 PEASANT 1 } >
<job          peasant>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int hirelingWages 1>
<script       human>
<script       pet>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_LABORER>
<convfrag     BRITANNIA_ACCEPTITEM>
<convfrag     BRITANNIA_PERSONALSPACE>
<convfrag     BRITANNIA_NEEDRESPONSE>
<convfrag     BRITANNIA_REFUSEITEM>
<convfrag     BRITANNIA_SCAVENGER>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !1d10>
<strength     1d15+25>
<dexterity    1d15+20>
<intelligence 1d15+15>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           25d10+125>
<sk           skill_magic_defense   25d10+125>
<sk           skill_battle_defense  25d10+125>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           plain_shirt all_colors 1>
<eq           plain_pants all_colors 1>
<eq           poor_backpack 0 0 1>
<resource     food         5   1    FOOD>
<resource     food         5   1    EGGS>
<resource     food         5   1    FRUIT>
<resource     food         5   1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production   8   0    MEAT>
<resource     desire       1  -3    DANGER>
<resource     desire       3  -6    MEAT>
<resource     desire       1  -3    SPOOKINESS>
<resource     desire      10   2    GOLD>
<@@@ END @@@>
<1>
# Noble
<type         NORMAL 400>
<frequency    100>
<region       { CITY 0 LBCASTLE 0 NOBLESMALL 0 NOBLEMEDIUM 0 NOBLELARGE 0 NOBLE 0 } >
<regionlimit  { CITY 1 LBCASTLE 3 NOBLESMALL 2 NOBLEMEDIUM 4 NOBLELARGE 8 NOBLE 1 } >
<job          noble>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_NOBLE>
<convfrag     BRITANNIA_ACCEPTITEM>
<convfrag     BRITANNIA_PERSONALSPACE>
<convfrag     BRITANNIA_NEEDRESPONSE>
<convfrag     BRITANNIA_REFUSEITEM>
<convfrag     BRITANNIA_SCAVENGER>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-16>
<notoriety    !20d4+20>
<strength     1d15+30>
<dexterity    1d15+40>
<intelligence 1d15+50>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+225>
<sk           skill_magic_defense  25d10+225>
<sk           skill_battle_defense 25d10+225>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           fancy_shirt all_colors 1>
<eq           fancy_pants all_colors 1>
<eq           cloak all_colors 1>
<eq           sash_1 all_colors 1>
<eq           random_boots 0 0 1>
<eq           long_sword 0 0 1>
<eq           filthy_rich_backpack 0 0 1>
<resource     food         5   1    FOOD>
<resource     food         5   1    EGGS>
<resource     food         5   1    FRUIT>
<resource     food         5   1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production   8   0    MEAT>
<resource     desire       1  -3    DANGER>
<resource     desire       1  -3    SPOOKINESS>
<resource     desire       3  -6    MEAT>
<resource     desire       1   1    NOTORIETY>
<resource     desire      10   2    GOLD>
<@@@ END @@@>
<2>
# Armorer
<type         SHOPKEEPER 400>
<frequency    100>
<region       ARMORER>
<regionlimit  { ARMORER 1 } >
<job          armourer>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_SHOPKEEPER>
<convfrag     BRITANNIA_MERCHANT_GREETING>
<convfrag     BRITANNIA_ARMOURER>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+85>
<dexterity    1d15+75>
<intelligence 1d15+60>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           25d10+525>
<sk           skill_magic_defense   25d10+525>
<sk           skill_battle_defense  25d10+525>
<sk           skill_weapon_slashing 25d10+425>
<sk           skill_weapon_bashing  25d10+425>
<sk           skill_weapon_piercing 25d10+425>
<sk           skill_weapon_hand     25d10+425>
<sk           skill_armslore        25d10+625>
<sk           skill_blacksmith      25d10+525>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           plain_shirt all_colors 1>
<eq           plain_pants all_colors 1>
<eq           apron brown_colors 1>
<eq           black_boots neutral_colors 1>
<eq           random_coin_purse 0 0 1>
<eq           { all_armor 15 leather_goods 5 metal_goods 5 plate_goods 1 chain_goods 1 ring_goods 1 } 0 0 1 NONE>
<eq           all_shields 0 0 1 NONE>
<eq           armorer_purchases 0 0 1 NONE>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<resource     desire     10  1    METAL>
<@@@ END @@@>
<3>
# Baker
<type         SHOPKEEPER 400>
<frequency    100>
<region       BAKER>
<regionlimit  { BAKER 1 } >
<job          baker>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_BAKER>
<convfrag     BRITANNIA_SHOPKEEPER>
<convfrag     BRITANNIA_MERCHANT_GREETING>
<convfrag     BRITANNIA_ACCEPTITEM>
<convfrag     BRITANNIA_PERSONALSPACE>
<convfrag     BRITANNIA_NEEDRESPONSE>
<convfrag     BRITANNIA_REFUSEITEM>
<convfrag     BRITANNIA_SCAVENGER>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<strength     1d15+33>
<dexterity    1d15+32>
<intelligence 1d15+25>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+125>
<sk           skill_magic_defense  25d10+125>
<sk           skill_battle_defense 25d10+125>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_cooking        25d10+525>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           plain_shirt all_colors 1>
<eq           plain_pants all_colors 1>
<eq           plain_shoes neutral_colors 1>
<eq           apron white_colors 1>
<eq           random_coin_purse 0 0 1>
<eq             loaf_bread_1 0 0 1 SELLABLE>
<eq             loaf_bread_2 0 0 1 SELLABLE>
<eq             baked_pie 0 0 1 SELLABLE>
<eq             cake 0 0 1 SELLABLE>
<eq             muffin 0 0 1 SELLABLE>
<eq             flour_sack 0 0 1 SELLABLE>
<eq             french_bread 0 0 1 SELLABLE>
<eq             pan_cookies 0 0 1 SELLABLE>
<eq             pizza 0 0 1 SELLABLE>
<eq             honey_obj 0 0 1 SELLABLE>
<eq             dough 0 0 1 SELLABLE>
<eq             kindling 0 0 1 BUYABLE>
<eq             loaf_bread_1 0 0 1 BUYABLE>
<eq             loaf_bread_2 0 0 1 BUYABLE>
<eq             baked_pie 0 0 1 BUYABLE>
<eq             cake 0 0 1 BUYABLE>
<eq             muffin 0 0 1 BUYABLE>
<eq             flour_sack 0 0 1 BUYABLE>
<eq             french_bread 0 0 1 BUYABLE>
<eq             pan_cookies 0 0 1 BUYABLE>
<eq             pizza 0 0 1 BUYABLE>
<eq             honey_obj 0 0 1 BUYABLE>
<eq             fresh_eggs 0 0 1 BUYABLE>
<eq             milk_pitcher 0 0 1 BUYABLE>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<resource     desire     10  1    FLOUR>
<@@@ END @@@>
<4>
# Bowyer
<type         SHOPKEEPER 400>
<frequency    100>
<region       BOWYER>
<regionlimit  { BOWYER 1 } >
<job          bowyer>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 4>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_SHOPKEEPER>
<convfrag     BRITANNIA_MERCHANT_GREETING>
<convfrag     BRITANNIA_BOWYER>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+65>
<dexterity    1d15+70>
<intelligence 1d15+60>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           25d10+425>
<sk           skill_magic_defense   25d10+425>
<sk           skill_battle_defense  25d10+425>
<sk           skill_weapon_slashing 25d10+225>
<sk           skill_weapon_bashing  25d10+225>
<sk           skill_weapon_piercing 25d10+225>
<sk           skill_weapon_hand     25d10+225>
<sk           skill_ranged_weapons  25d10+625>
<sk           skill_fletcher        25d10+625>
<resistances  ranged>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           plain_shirt all_colors 1>
<eq           plain_pants all_colors 1>
<eq           random_boots 0 0 1>
<eq           leather_gorget brown_colors 1>
<eq           random_coin_purse 0 0 1>
<eq             crossbow 0 0 1 SELLABLE>
<eq             big_crossbow 0 0 1 SELLABLE>
<eq             bolts 0 0 1 SELLABLE>
<eq             bow 0 0 1 SELLABLE>
<eq             arrows 0 0 1 SELLABLE>
<eq             loose_feathers 0 0 1 SELLABLE>
<eq             arrow_shafts 0 0 1 SELLABLE>
<eq             crossbow 0 0 1 BUYABLE>
<eq             crossbow_2 0 0 1 BUYABLE>
<eq             bolts 0 0 1 BUYABLE>
<eq             big_crossbow 0 0 1 BUYABLE>
<eq             big_crossbow_2 0 0 1 BUYABLE>
<eq             bow 0 0 1 BUYABLE>
<eq             bow_2 0 0 1 BUYABLE>
<eq             arrows 0 0 1 BUYABLE>
<eq             loose_feathers 0 0 1 BUYABLE>
<eq             arrow_shafts 0 0 1 BUYABLE>
<eq             lumber 0 0 1 BUYABLE>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  1    GOLD>
<resource     desire     10  1    WOOD>
<resource     desire     10  1    FEATHERS>
<@@@ END @@@>
<5>
# Butcher
<type         SHOPKEEPER 400>
<frequency    100>
<region       BUTCHER>
<regionlimit  { BUTCHER 1 } >
<job          butcher>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_BUTCHER>
<convfrag     BRITANNIA_SHOPKEEPER>
<convfrag     BRITANNIA_MERCHANT_GREETING>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+75>
<dexterity    1d15+70>
<intelligence 1d15+60>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+525>
<sk           skill_magic_defense  25d10+525>
<sk           skill_battle_defense 25d10+525>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           plain_shirt all_colors 1>
<eq           plain_pants all_colors 1>
<eq           plain_shoes neutral_colors 1>
<eq           apron white_colors 1>
<eq           random_coin_purse 0 0 1>
<eq             bacon 0 0 1 SELLABLE>
<eq             ham 0 0 1 SELLABLE>
<eq             sausages 0 0 1 SELLABLE>
<eq             chicken_leg 0 0 1 SELLABLE>
<eq             raw_bird 0 0 1 SELLABLE>
<eq             mutton_leg 0 0 1 SELLABLE>
<eq             raw_ribs 0 0 1 SELLABLE>
<eq             butcher_knife 0 0 1 SELLABLE>
<eq             meat_cleaver 0 0 1 SELLABLE>
<eq             skinning_knife 0 0 1 SELLABLE>
<eq             bacon 0 0 1 BUYABLE>
<eq             ham 0 0 1 BUYABLE>
<eq             sausages 0 0 1 BUYABLE>
<eq             chicken_leg 0 0 1 BUYABLE>
<eq             raw_bird 0 0 1 BUYABLE>
<eq             mutton_leg 0 0 1 BUYABLE>
<eq             raw_ribs 0 0 1 BUYABLE>
<eq             butcher_knife 0 0 1 BUYABLE>
<eq             butcher_knife_2 0 0 1 BUYABLE>
<eq             meat_cleaver 0 0 1 BUYABLE>
<eq             meat_cleaver_2 0 0 1 BUYABLE>
<eq             skinning_knife 0 0 1 BUYABLE>
<eq             skinning_knife_2 0 0 1 BUYABLE>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<resource     desire     10  1    MEAT>
<@@@ END @@@>
<6>
# City Guard
<type         GUARD 400>
<frequency    100>
<region       { LBCASTLE 0 CITY 0 BANK 0 GUARDSMALL 0 GUARDMEDIUM 0 GUARDLARGE 0 GUARD 0 } >
<regionlimit  { LBCASTLE 2 CITY 4 BANK 2 GUARDSMALL 1 GUARDMEDIUM 2 GUARDLARGE 3 GUARD 2 } >
<job          guard>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<script       cityguard>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_GUARD>
<strength     9000>
<dexterity    9000>
<intelligence 9000>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    GOOD>
<attitude     1d41-21>
<notoriety    100d1>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           1d100+900>
<sk           skill_magic_defense   1d100+900>
<sk           skill_battle_defense  1d100+900>
<sk           skill_weapon_slashing 1d100+900>
<sk           skill_weapon_bashing  1d100+900>
<sk           skill_weapon_piercing 1d100+900>
<sk           skill_weapon_ranged   1d100+900>
<sk           skill_weapon_hand     1d100+900>
<sk           skill_detect_hidden   1d100+900>
<sk           skill_forensics       1d100+900>
<immunities   slashing>
<immunities   piercing>
<immunities   bashing>
<immunities   ranged>
<immunities   poison>
<immunities   magic>
<immunities   fire>
<immunities   lightning>
<immunities   ice>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           plain_shirt all_colors 1>
<eq           plain_pants all_colors 1>
<eq           plate_chest 0 0 1>
<eq           plate_legs 0 0 1>
<eq           plate_arms 0 0 1>
<eq           random_over_armor all_colors 1>
<eq           halberd 0 0 1>
<eq           random_coin_purse 0 0 1>
<resource     shelter      5   1    GUARDPOST>
<resource     production   8   0    MEAT>
<resource     production   1   1    GUARD>
<resource     production   1   1    HUMANS>
<resource     desire     -50  -1    NOTORIETY>
<resource     desire       5   1    GUARDPOST>
<@@@ END @@@>
<7>
# Healer 
<type         SHOPKEEPER 400>
<frequency    100>
<region       HEALER>
<regionlimit  { HEALER 1 } >
<job          healer>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 5>
<script       human>
<script       healer>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_HEALER>
<convfrag     BRITANNIA_SHOPKEEPER>
<convfrag     BRITANNIA_MERCHANT_GREETING>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !127d1>
<strength     1d15+70>
<dexterity    1d15+80>
<intelligence 1d15+85>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           25d10+625>
<sk           skill_magic_defense   25d10+625>
<sk           skill_battle_defense  25d10+625>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_first_aid       25d10+525>
<sk           skill_anatomy         25d10+525>
<sk           skill_seance          25d10+525>
<sk           skill_forensics       25d10+325>
<resistances  slashing>
<resistances  piercing>
<resistances  bashing>
<resistances  ranged>
<resistances  poison>
<resistances  magic>
<resistances  fire>
<resistances  lightning>
<resistances  ice>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           robe yellow_colors 1>
<eq           sandals 0 0 1>
<eq           random_coin_purse 0 0 1>
<eq             bandage 0 0 1 SELLABLE>
<eq             heal_potion 0 0 1 SELLABLE>
<eq             ginseng_reagent 0 0 1 SELLABLE>
<eq             garlic_reagent 0 0 1 SELLABLE>
<eq             refresh_potion 0 0 1 SELLABLE>
<eq             folded_cloth_1 0 0 1 BUYABLE>
<eq             folded_cloth_2 0 0 1 BUYABLE>
<eq             folded_cloth_3 0 0 1 BUYABLE>
<eq             folded_cloth_4 0 0 1 BUYABLE>
<eq             spider_silk_reagent 0 0 1 BUYABLE>
<eq             bandage 0 0 1 BUYABLE>
<eq             bandage_2 0 0 1 BUYABLE>
<eq             heal_potion 0 0 1 BUYABLE>
<eq             ginseng_reagent 0 0 1 BUYABLE>
<eq             garlic_reagent 0 0 1 BUYABLE>
<eq             refresh_potion 0 0 1 BUYABLE>
<resource     food         5  1    FOOD>
<resource     food         5  1    EGGS>
<resource     food         5  1    FRUIT>
<resource     food         5  1    FISH>
<resource     shelter      1  1    HOME>
<resource     shelter     16  0    HOUSES>
<resource     production   8  0    MEAT>
<resource     desire       1 -3    DANGER>
<resource     desire      10  2    GOLD>
<resource     desire      10  2    GARLIC>
<resource     desire      10  2    GINSENG>
<resource     desire      10  2    CLOTH>
<@@@ END @@@>
<8>
# Innkeeper
<type         SHOPKEEPER 400>
<frequency    100>
<region       INN>
<regionlimit  { INN 1 } >
<job          innkeeper>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 7>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_INNKEEPER>
<convfrag     BRITANNIA_SHOPKEEPER>
<convfrag     BRITANNIA_MERCHANT_GREETING>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+65>
<dexterity    1d15+65>
<intelligence 1d15+60>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+425>
<sk           skill_magic_defense  25d10+425>
<sk           skill_battle_defense 25d10+425>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           plain_shirt all_colors 1>
<eq           plain_pants all_colors 1>
<eq           random_shoes neutral_colors 1>
<eq           random_coin_purse 0 0 1>
<eq             ale_bottle 0 0 1 SELLABLE>
<eq             wine_bottle 0 0 1 SELLABLE>
<eq             liquor_bottle 0 0 1 SELLABLE>
<eq             cider_jug 0 0 1 SELLABLE>
<eq             milk_pitcher 0 0 1 SELLABLE>
<eq             ale_pitcher 0 0 1 SELLABLE>
<eq             cider_pitcher 0 0 1 SELLABLE>
<eq             liquor_pitcher 0 0 1 SELLABLE>
<eq             wine_pitcher 0 0 1 SELLABLE>
<eq             water_pitcher 0 0 1 SELLABLE>
<eq             loaf_bread_1 0 0 1 SELLABLE>
<eq             cheese 0 0 1 SELLABLE>
<eq             cooked_bird 0 0 1 SELLABLE>
<eq             cooked_mutton 0 0 1 SELLABLE>
<eq             cooked_chick_leg 0 0 1 SELLABLE>
<eq             cooked_ribs 0 0 1 SELLABLE>
<eq             bowl_carrots_1 0 0 1 SELLABLE>
<eq             bowl_corn_1 0 0 1 SELLABLE>
<eq             bowl_lettuce_1 0 0 1 SELLABLE>
<eq             bowl_peas_1 0 0 1 SELLABLE>
<eq             bowl_carrots_2 0 0 1 SELLABLE>
<eq             bowl_corn_2 0 0 1 SELLABLE>
<eq             bowl_lettuce_2 0 0 1 SELLABLE>
<eq             bowl_peas_2 0 0 1 SELLABLE>
<eq             bowl_potatoes  0 0 1 SELLABLE>
<eq             bowl_stew 0 0 1 SELLABLE>
<eq             bowl_tomato_soup 0 0 1 SELLABLE>
<eq             baked_pie 0 0 1 SELLABLE>
<eq             peach 0 0 1 SELLABLE>
<eq             pear 0 0 1 SELLABLE>
<eq             grapes 0 0 1 SELLABLE>
<eq             apple 0 0 1 SELLABLE>
<eq             banana 0 0 1 SELLABLE>
<eq             torch 0 0 1 SELLABLE>
<eq             candle 0 0 1 SELLABLE>
<eq             backpack 0 0 1 SELLABLE>
<eq             chessboard 0 0 1 SELLABLE>
<eq             checkerboard 0 0 1 SELLABLE>
<eq             backgammon 0 0 1 SELLABLE>
<eq             dice_cup 0 0 1 SELLABLE>
<eq             vendor_deed_template 0 0 1 SELLABLE>
<eq             vendor_deed_template 0 0 1 BUYABLE>
<eq             chessboard 0 0 1 BUYABLE>
<eq             checkerboard 0 0 1 BUYABLE>
<eq             dice_cup 0 0 1 BUYABLE>
<eq             backgammon 0 0 1 BUYABLE>
<eq             backgammon_2 0 0 1 BUYABLE>
<eq             ale_bottle 0 0 1 BUYABLE>
<eq             wine_bottle 0 0 1 BUYABLE>
<eq             liquor_bottle 0 0 1 BUYABLE>
<eq             cider_jug 0 0 1 BUYABLE>
<eq             ale_pitcher 0 0 1 BUYABLE>
<eq             ale_pitcher_2 0 0 1 BUYABLE>
<eq             cider_pitcher 0 0 1 BUYABLE>
<eq             cider_pitcher_2 0 0 1 BUYABLE>
<eq             glass_pitcher 0 0 1 BUYABLE>
<eq             glass_pitcher_2 0 0 1 BUYABLE>
<eq             glass_pitcher_3 0 0 1 BUYABLE>
<eq             liquor_pitcher 0 0 1 BUYABLE>
<eq             liquor_pitcher_2 0 0 1 BUYABLE>
<eq             milk_pitcher 0 0 1 BUYABLE>
<eq             milk_pitcher_2 0 0 1 BUYABLE>
<eq             wine_pitcher 0 0 1 BUYABLE>
<eq             wine_pitcher_2 0 0 1 BUYABLE>
<eq             water_pitcher 0 0 1 BUYABLE>
<eq             water_pitcher_2 0 0 1 BUYABLE>
<eq             water_pitcher_3 0 0 1 BUYABLE>
<eq             water_pitcher_4 0 0 1 BUYABLE>
<eq             loaf_bread_1 0 0 1 BUYABLE>
<eq             cheese 0 0 1 BUYABLE>
<eq             raw_bird 0 0 1 BUYABLE>
<eq             mutton_leg 0 0 1 BUYABLE>
<eq             raw_ribs 0 0 1 BUYABLE>
<eq             cooked_ribs 0 0 1 BUYABLE>
<eq             baked_pie 0 0 1 BUYABLE>
<eq             peach 0 0 1 BUYABLE>
<eq             pear 0 0 1 BUYABLE>
<eq             grapes 0 0 1 BUYABLE>
<eq             apple 0 0 1 BUYABLE>
<eq             banana 0 0 1 BUYABLE>
<eq             torch 0 0 1 BUYABLE>
<eq             candle 0 0 1 BUYABLE>
<resource     food         5  1    FOOD>
<resource     food         5  1    EGGS>
<resource     food         5  1    FRUIT>
<resource     food         5  1    FISH>
<resource     shelter      1  1    HOME>
<resource     shelter     16  0    HOUSES>
<resource     production   8  0    MEAT>
<resource     production   5  1    GUARDPOST>
<resource     desire       1 -3    DANGER>
<resource     desire       1 -3    SPOOKINESS>
<resource     desire      10  2    GOLD>
<@@@ END @@@>
<9>
# Jailor
<type         NORMAL 400>
<frequency    100>
<region       { PRISON 0 JAILORSMALL 0 JAILORMEDIUM 0 JAILORLARGE 0 JAILOR 0 JAIL 0 } >
<regionlimit  { PRISON 1 JAILORSMALL 2 JAILORMEDIUM 4 JAILORLARGE 6 JAILOR 1 JAIL 2 } >
<job          jailor>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_JAILOR>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+95>
<dexterity    1d15+95>
<intelligence 1d15+70>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+725>
<sk           skill_magic_defense  25d10+725>
<sk           skill_battle_defense 25d10+725>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           chain_chest 0 0 1>
<eq           chain_legs 0 0 1>
<eq           bronze_shield 0 0 1>
<eq           black_boots neutral_colors 1>
<eq           sword_2 0 0 1>
<eq           random_coin_purse 0 0 1>
<resource     food         5  1    FOOD>
<resource     food         5  1    EGGS>
<resource     food         5  1    FRUIT>
<resource     food         5  1    FISH>
<resource     shelter      1  1    HOME>
<resource     shelter     16  0    HOUSES>
<resource     production   8  0    MEAT>
<resource     desire       1 -3    DANGER>
<resource     desire      10  2    GOLD>
<@@@ END @@@>
<10>
# Jeweler
<type         SHOPKEEPER 400>
<frequency    100>
<region       JEWELER>
<regionlimit  { JEWELER 1 } >
<job          jeweler>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 7>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_JEWELER>
<convfrag     BRITANNIA_SHOPKEEPER>
<convfrag     BRITANNIA_MERCHANT_GREETING>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+35>
<dexterity    1d15+50>
<intelligence 1d15+40>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+225>
<sk           skill_magic_defense  25d10+225>
<sk           skill_battle_defense 25d10+225>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_appraise       25d10+525>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           fancy_shirt all_colors 1>
<eq           fancy_pants all_colors 1>
<eq           random_shoes neutral_colors 1>
<eq           rich_backpack 0 0 1>
<eq             ring 0 0 1 SELLABLE>
<eq             necklace_1 0 0 1 SELLABLE>
<eq             necklace_2 0 0 1 SELLABLE>
<eq             necklace_3 0 0 1 SELLABLE>
<eq             beads 0 0 1 SELLABLE>
<eq             bracelet 0 0 1 SELLABLE>
<eq             earrings 0 0 1 SELLABLE>
<eq             crystal_of_com_t1 0 0 1 SELLABLE>
<eq             crystal_of_com_t2 0 0 1 SELLABLE>
<eq             crystal_of_com_t3 0 0 1 SELLABLE>
<eq             star_sapphire 0 0 1 SELLABLE>
<eq             emerald 0 0 1 SELLABLE>
<eq             sapphire 0 0 1 SELLABLE>
<eq             ruby 0 0 1 SELLABLE>
<eq             citrine 0 0 1 SELLABLE>
<eq             amethyst 0 0 1 SELLABLE>
<eq             tourmaline 0 0 1 SELLABLE>
<eq             amber 0 0 1 SELLABLE>
<eq             diamond 0 0 1 SELLABLE>
<eq             copper_ingot 0 0 1 BUYABLE>
<eq             copper_ingot_2 0 0 1 BUYABLE>
<eq             copper_wire 0 0 1 BUYABLE>
<eq             gold_ingot 0 0 1 BUYABLE>
<eq             gold_ingot_2 0 0 1 BUYABLE>
<eq             gold_wire 0 0 1 BUYABLE>
<eq             iron_ingot 0 0 1 BUYABLE>
<eq             iron_ingot_2 0 0 1 BUYABLE>
<eq             iron_wire 0 0 1 BUYABLE>
<eq             silver_ingot 0 0 1 BUYABLE>
<eq             silver_ingot_2 0 0 1 BUYABLE>
<eq             silver_wire 0 0 1 BUYABLE>
<eq             forged_metal 0 0 1 BUYABLE>
<eq             bracelet 0 0 1 BUYABLE>
<eq             ring 0 0 1 BUYABLE>
<eq             beads 0 0 1 BUYABLE>
<eq             earrings 0 0 1 BUYABLE>
<eq             necklace_1 0 0 1 BUYABLE>
<eq             necklace_2 0 0 1 BUYABLE>
<eq             necklace_3 0 0 1 BUYABLE>
<eq             gem1 0 0 1 BUYABLE>
<eq             gem2 0 0 1 BUYABLE>
<eq             gem3 0 0 1 BUYABLE>
<eq             gem4 0 0 1 BUYABLE>
<eq             gem5 0 0 1 BUYABLE>
<eq             gem6 0 0 1 BUYABLE>
<eq             gem7 0 0 1 BUYABLE>
<eq             gem8 0 0 1 BUYABLE>
<eq             gem9 0 0 1 BUYABLE>
<eq             gem10 0 0 1 BUYABLE>
<eq             gem11 0 0 1 BUYABLE>
<eq             gem12 0 0 1 BUYABLE>
<eq             gem13 0 0 1 BUYABLE>
<eq             gem14 0 0 1 BUYABLE>
<eq             gem15 0 0 1 BUYABLE>
<eq             gem16 0 0 1 BUYABLE>
<eq             gem17 0 0 1 BUYABLE>
<eq             gem18 0 0 1 BUYABLE>
<eq             gem19 0 0 1 BUYABLE>
<eq             gem20 0 0 1 BUYABLE>
<eq             gem21 0 0 1 BUYABLE>
<eq             gem22 0 0 1 BUYABLE>
<eq             gem23 0 0 1 BUYABLE>
<eq             gem24 0 0 1 BUYABLE>
<eq             gem25 0 0 1 BUYABLE>
<eq             gem26 0 0 1 BUYABLE>
<eq             gem27 0 0 1 BUYABLE>
<eq             gem28 0 0 1 BUYABLE>
<eq             gem29 0 0 1 BUYABLE>
<eq             gem30 0 0 1 BUYABLE>
<eq             gem31 0 0 1 BUYABLE>
<eq             gem32 0 0 1 BUYABLE>
<eq             gem33 0 0 1 BUYABLE>
<eq             gem34 0 0 1 BUYABLE>
<eq             crystal_of_com_t1 0 0 1 BUYABLE>
<eq             crystal_of_com_t2 0 0 1 BUYABLE>
<eq             crystal_of_com_t3 0 0 1 BUYABLE>
<resource     food         5   1    FOOD>
<resource     food         5   1    EGGS>
<resource     food         5   1    FRUIT>
<resource     food         5   1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production   8   0    MEAT>
<resource     desire       1  -3    DANGER>
<resource     desire       1  -3    SPOOKINESS>
<resource     desire      10   1    GOLD>
<resource     desire      10   1    JEWELS>
<@@@ END @@@>
<11>
# Tanner
<type         SHOPKEEPER 400>
<frequency    100>
<region       TANNER>
<regionlimit  { TANNER 1 } >
<job          tanner>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_TANNER>
<convfrag     BRITANNIA_SHOPKEEPER>
<convfrag     BRITANNIA_MERCHANT_GREETING>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+50>
<dexterity    1d15+60>
<intelligence 1d15+40>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+325>
<sk           skill_magic_defense  25d10+325>
<sk           skill_battle_defense 25d10+325>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           plain_shirt brown_colors 1>
<eq           plain_pants brown_colors 1>
<eq           random_boots 0 0 1>
<eq           apron brown_colors 1>
<eq           random_coin_purse 0 0 1>
<eq             leather_gorget 0 0 1 SELLABLE>
<eq             leather_cap 0 0 1 SELLABLE>
<eq             leather_arms 0 0 1 SELLABLE>
<eq             leather_chest 0 0 1 SELLABLE>
<eq             leather_legs 0 0 1 SELLABLE>
<eq             leather_gloves 0 0 1 SELLABLE>
<eq             studded_gorget 0 0 1 SELLABLE>
<eq             studded_arms 0 0 1 SELLABLE>
<eq             studded_chest 0 0 1 SELLABLE>
<eq             studded_legs 0 0 1 SELLABLE>
<eq             studded_gloves 0 0 1 SELLABLE>
<eq             fem_armor_a 0 0 1 SELLABLE>
<eq             fem_armor_b 0 0 1 SELLABLE>
<eq             fem_armor_c 0 0 1 SELLABLE>
<eq             fem_armor_shorts 0 0 1 SELLABLE>
<eq             fem_armor_skirt 0 0 1 SELLABLE>
<eq             fem_armor_top_a 0 0 1 SELLABLE>
<eq             fem_armor_top_a_2 0 0 1 SELLABLE>
<eq             fem_armor_top_b 0 0 1 SELLABLE>
<eq             fem_armor_top_b_2 0 0 1 SELLABLE>
<eq             leather_cap 0 0 1 SELLABLE>
<eq             bag 0 0 1 SELLABLE>
<eq             belt_pouch 0 0 1 SELLABLE>
<eq             backpack 0 0 1 SELLABLE>
<eq             cut_hides_4 0 0 1 SELLABLE>
<eq             skinning_knife 0 0 1 SELLABLE>
<eq             skinning_knife 0 0 1 BUYABLE>
<eq             skinning_knife_2 0 0 1 BUYABLE>
<eq             leather_gorget 0 0 1 BUYABLE>
<eq             leather_cap 0 0 1 BUYABLE>
<eq             leather_arms 0 0 1 BUYABLE>
<eq             leather_arms_2 0 0 1 BUYABLE>
<eq             leather_chest 0 0 1 BUYABLE>
<eq             leather_chest_2 0 0 1 BUYABLE>
<eq             leather_legs 0 0 1 BUYABLE>
<eq             leather_legs_2 0 0 1 BUYABLE>
<eq             leather_gloves 0 0 1 BUYABLE>
<eq             leather_gloves_2 0 0 1 BUYABLE>
<eq             studded_gorget 0 0 1 BUYABLE>
<eq             studded_arms 0 0 1 BUYABLE>
<eq             studded_arms_2 0 0 1 BUYABLE>
<eq             studded_chest 0 0 1 BUYABLE>
<eq             studded_chest_2 0 0 1 BUYABLE>
<eq             studded_legs 0 0 1 BUYABLE>
<eq             studded_legs_2 0 0 1 BUYABLE>
<eq             studded_gloves 0 0 1 BUYABLE>
<eq             studded_gloves_2 0 0 1 BUYABLE>
<eq             fem_armor_a 0 0 1 BUYABLE>
<eq             fem_armor_a_2 0 0 1 BUYABLE>
<eq             fem_armor_b 0 0 1 BUYABLE>
<eq             fem_armor_b_2 0 0 1 BUYABLE>
<eq             fem_armor_c 0 0 1 BUYABLE>
<eq             fem_armor_c_2 0 0 1 BUYABLE>
<eq             fem_armor_shorts 0 0 1 BUYABLE>
<eq             fem_armor_shorts_2 0 0 1 BUYABLE>
<eq             fem_armor_skirt 0 0 1 BUYABLE>
<eq             fem_armor_skirt_2 0 0 1 BUYABLE>
<eq             fem_armor_top_a 0 0 1 BUYABLE>
<eq             fem_armor_top_a_2 0 0 1 BUYABLE>
<eq             fem_armor_top_b 0 0 1 BUYABLE>
<eq             fem_armor_top_b_2 0 0 1 BUYABLE>
<eq             cut_hides 0 0 1 BUYABLE>
<eq             cut_hides_2 0 0 1 BUYABLE>
<eq             cut_hides_3 0 0 1 BUYABLE>
<eq             cut_hides_4 0 0 1 BUYABLE>
<eq             pile_hides 0 0 1 BUYABLE>
<eq             pile_hides_2 0 0 1 BUYABLE>
<eq             llama_hides 0 0 1 BUYABLE>
<eq             llama_hides_2 0 0 1 BUYABLE>
<eq             llama_hides_3 0 0 1 BUYABLE>
<eq             llama_hides_4 0 0 1 BUYABLE>
<eq             llama_hides_5 0 0 1 BUYABLE>
<eq             llama_hides_6 0 0 1 BUYABLE>
<eq             llama_hides_7 0 0 1 BUYABLE>
<eq             llama_hides_8 0 0 1 BUYABLE>
<eq             llama_hides_9 0 0 1 BUYABLE>
<eq             leather_cap 0 0 1 BUYABLE>
<eq             bag 0 0 1 BUYABLE>
<eq             belt_pouch 0 0 1 BUYABLE>
<eq             belt_pouch_2 0 0 1 BUYABLE>
<eq             backpack 0 0 1 BUYABLE>
<eq             backpack_2 0 0 1 BUYABLE>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  1    GOLD>
<resource     desire     10  1    LEATHER>
<resource     desire     10  1    HIDE>
<@@@ END @@@>
<12>
# Mage 
<type         SHOPKEEPER 400>
<frequency    100>
<region       { MAGIC 0 MAGE 0 } >
<regionlimit  { MAGIC 1 MAGE 1 } >
<job          mage>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 1>
<objvar       int spellCastersLevel 2d3+1>
<script       human>
<script       spellai>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_MAGE>
<convfrag     BRITANNIA_SHOPKEEPER>
<convfrag     BRITANNIA_MERCHANT_GREETING>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+60>
<dexterity    1d15+70>
<intelligence 1d15+85>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+325>
<sk           skill_magic_defense  25d10+525>
<sk           skill_battle_defense 25d10+425>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_magic          1d150+850>
<sk           skill_inscribe       1d150+500>
<resistances  magic>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           robe blue_colors 1>
<eq           random_shoes blue_colors 1>
<eq           random_coin_purse 0 0 1>
<eq           random_upper_scroll 0 0 1 SELFCONTAINED>
<eq           random_upper_scroll 0 0 1 SELFCONTAINED>
<eq           { basic_mage 18 second_circle 13 third_circle 8 fourth_circle 3 } 0 0 1 NONE>
<resource     food         5  1    FOOD>
<resource     food         5  1    EGGS>
<resource     food         5  1    FRUIT>
<resource     food         5  1    FISH>
<resource     shelter      1  1    HOME>
<resource     shelter     16  0    HOUSES>
<resource     production   8  0    MEAT>
<resource     desire       1 -3    DANGER>
<resource     desire       1 -3    SPOOKINESS>
<resource     desire      10  1    GOLD>
<resource     desire       1  1    MAGIC>
<resource     desire      10  2    MANDRAKE>
<resource     desire      10  2    SPIDER_SILK>
<resource     desire      10  2    SULPHEROUS ASH>
<resource     desire      10  2    BLACK_PEARL>
<resource     desire      10  2    BLOOD_MOSS>
<resource     desire      10  2    GARLIC>
<resource     desire      10  2    GINSENG>
<resource     desire      10  2    NIGHTSHADE>
<@@@ END @@@>
<13>
# Pirate 
<type         NORMAL 400>
<frequency    100>
<region       { DOCKS 0 CITY_BUCDEN 0 PIRATESMALL 0 PIRATEMEDIUM 0 PIRATELARGE 0 PIRATE 0 } >
<regionlimit  { DOCKS 2 CITY_BUCDEN 20 PIRATESMALL 2 PIRATEMEDIUM 4 PIRATELARGE 6 PIRATE 1 } >
<job          pirate>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int hirelingWages 7>
<script       human>
<script       pet>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_PIRATE>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    2d30-77>
<strength     1d15+85>
<dexterity    1d15+85>
<intelligence 1d15+70>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           25d10+625>
<sk           skill_magic_defense   25d10+625>
<sk           skill_battle_defense  25d10+625>
<sk           skill_weapon_slashing 25d10+525>
<sk           skill_weapon_bashing  25d10+225>
<sk           skill_weapon_piercing 25d10+225>
<sk           skill_weapon_hand     25d10+425>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           plain_shirt all_colors 1>
<eq           plain_pants all_colors 1>
<eq           cutlass 0 0 1>
<eq           { bandana 1 skull_cap 1 } red_colors 1>
<eq           thigh_boots neutral_colors 1>
<eq           random_coin_purse 0 0 1>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  1    SHIPS>
<resource     desire     10  1    GOLD>
<resource     desire     10  1    JEWELS>
<resource     desire      3  1    SELF>
<@@@ END @@@>
<14>
# Provisioner 
<type         SHOPKEEPER 400>
<frequency    100>
<region       PROVISIONER>
<regionlimit  { PROVISIONER 1 } >
<job          provisioner>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 7>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_PROVISIONER>
<convfrag     BRITANNIA_SHOPKEEPER>
<convfrag     BRITANNIA_MERCHANT_GREETING>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+65>
<dexterity    1d15+60>
<intelligence 1d15+65>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+425>
<sk           skill_magic_defense  25d10+425>
<sk           skill_battle_defense 25d10+425>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           plain_shirt all_colors 1>
<eq           plain_pants all_colors 1>
<eq           plain_shoes neutral_colors 1>
<eq           random_coin_purse 0 0 1>
<eq             arrows 0 0 1 SELLABLE>
<eq             bolts 0 0 1 SELLABLE>
<eq             backpack 0 0 1 SELLABLE>
<eq             belt_pouch 0 0 1 SELLABLE>
<eq             bag 0 0 1 SELLABLE>
<eq             candle 0 0 1 SELLABLE>
<eq             torch 0 0 1 SELLABLE>
<eq             lantern 0 0 1 SELLABLE>
<eq             oil_flask 0 0 1 SELLABLE>
<eq             lockpick 0 0 1 SELLABLE>
<eq             floppy_hat all_colors 1 SELLABLE>
<eq             bumpkin_straw_hat all_colors 1 SELLABLE>
<eq             darby_hat all_colors 1 SELLABLE>
<eq             pointy_hat all_colors 1 SELLABLE>
<eq             banded_straw_hat all_colors 1 SELLABLE>
<eq             mage_like_hat all_colors 1 SELLABLE>
<eq             leather_cap all_colors 1 SELLABLE>
<eq             turban all_colors 1 SELLABLE>
<eq             straw_boater all_colors 1 SELLABLE>
<eq             bandana all_colors 1 SELLABLE>
<eq             skull_cap all_colors 1 SELLABLE>
<eq             loaf_bread_1 0 0 1 SELLABLE>
<eq             cooked_mutton 0 0 1 SELLABLE>
<eq             cooked_chick_leg 0 0 1 SELLABLE>
<eq             cooked_bird 0 0 1 SELLABLE>
<eq             ale_bottle 0 0 1 SELLABLE>
<eq             wine_bottle 0 0 1 SELLABLE>
<eq             liquor_bottle 0 0 1 SELLABLE>
<eq             cider_jug 0 0 1 SELLABLE>
<eq             pear 0 0 1 SELLABLE>
<eq             apple 0 0 1 SELLABLE>
<eq             garlic_reagent 0 0 1 SELLABLE>
<eq             ginseng_reagent 0 0 1 SELLABLE>
<eq             empty_vial 0 0 1 SELLABLE>
<eq             sm_blank_book 0 0 1 SELLABLE>
<eq             lg_blank_book 0 0 1 SELLABLE>
<eq             { sm_pub_book 1 lg_pub_book 1 } 0 0 1 SELLABLE>
<eq             wooden_box_1 0 0 1 SELLABLE>
<eq             copper_key 0 0 1 SELLABLE>
<eq             bedroll 0 0 1 SELLABLE>
<eq             kindling 0 0 1 SELLABLE>
<eq             ship_deed_template_0 0 0 1 SELLABLE>
<eq             house_deed_template_0 0 0 1 SELLABLE>
<eq             house_deed_smithy 0 0 1 SELLABLE>
<eq             house_deed_bakery 0 0 1 SELLABLE>
<eq             house_deed_tailor 0 0 1 SELLABLE>
<eq             house_deed_weap_train 0 0 1 SELLABLE>
<eq             house_deed_thief_train 0 0 1 SELLABLE>
<eq             guildstone_deed 0 0 1 SELLABLE>
<eq             hair_dye 0 0 1 SELLABLE>
<eq             chessboard 0 0 1 SELLABLE>
<eq             checkerboard 0 0 1 SELLABLE>
<eq             backgammon 0 0 1 SELLABLE>
<eq             dice_cup 0 0 1 SELLABLE>
<eq             chessboard 0 0 1 BUYABLE>
<eq             checkerboard 0 0 1 BUYABLE>
<eq             dice_cup 0 0 1 BUYABLE>
<eq             backgammon 0 0 1 BUYABLE>
<eq             backgammon_2 0 0 1 BUYABLE>
<eq             hair_dye 0 0 1 BUYABLE>
<eq             kindling 0 0 1 BUYABLE>
<eq             empty_vial 0 0 1 BUYABLE>
<eq             wooden_box_1 0 0 1 BUYABLE>
<eq             wooden_box_2 0 0 1 BUYABLE>
<eq             copper_key 0 0 1 BUYABLE>
<eq             ship_deed_template_0 0 0 1 BUYABLE>
<eq             house_deed_template_0 0 0 1 BUYABLE>
<eq             house_deed_smithy 0 0 1 BUYABLE>
<eq             house_deed_bakery 0 0 1 BUYABLE>
<eq             house_deed_tailor 0 0 1 BUYABLE>
<eq             house_deed_weap_train 0 0 1 BUYABLE>
<eq             house_deed_thief_train 0 0 1 BUYABLE>
<eq             arrows 0 0 1 BUYABLE>
<eq             bolts 0 0 1 BUYABLE>
<eq             belt_pouch 0 0 1 BUYABLE>
<eq             belt_pouch_2 0 0 1 BUYABLE>
<eq             backpack 0 0 1 BUYABLE>
<eq             backpack_2 0 0 1 BUYABLE>
<eq             bag 0 0 1 BUYABLE>
<eq             candle 0 0 1 BUYABLE>
<eq             torch 0 0 1 BUYABLE>
<eq             lantern 0 0 1 BUYABLE>
<eq             oil_flask 0 0 1 BUYABLE>
<eq             lockpick 0 0 1 BUYABLE>
<eq             lockpick_2 0 0 1 BUYABLE>
<eq             lockpicks 0 0 1 BUYABLE>
<eq             lockpicks_2 0 0 1 BUYABLE>
<eq             floppy_hat all_colors 1 BUYABLE>
<eq             bumpkin_straw_hat all_colors 1 BUYABLE>
<eq             darby_hat all_colors 1 BUYABLE>
<eq             pointy_hat all_colors 1 BUYABLE>
<eq             banded_straw_hat all_colors 1 BUYABLE>
<eq             mage_like_hat all_colors 1 BUYABLE>
<eq             leather_cap all_colors 1 BUYABLE>
<eq             turban all_colors 1 BUYABLE>
<eq             straw_boater all_colors 1 BUYABLE>
<eq             bandana all_colors 1 BUYABLE>
<eq             skull_cap all_colors 1 BUYABLE>
<eq             star_sapphire 0 0 1 BUYABLE>
<eq             emerald 0 0 1 BUYABLE>
<eq             sapphire 0 0 1 BUYABLE>
<eq             ruby 0 0 1 BUYABLE>
<eq             citrine 0 0 1 BUYABLE>
<eq             amethyst 0 0 1 BUYABLE>
<eq             tourmaline 0 0 1 BUYABLE>
<eq             amber 0 0 1 BUYABLE>
<eq             diamond 0 0 1 BUYABLE>
<eq             gold_ingot 0 0 1 BUYABLE>
<eq             silver_ingot 0 0 1 BUYABLE>
<eq             plate_chest 0 0 1 BUYABLE>
<eq             plate_chest_2 0 0 1 BUYABLE>
<eq             plate_legs 0 0 1 BUYABLE>
<eq             plate_legs_2 0 0 1 BUYABLE>
<eq             plate_arms 0 0 1 BUYABLE>
<eq             plate_arms_2 0 0 1 BUYABLE>
<eq             plate_gloves 0 0 1 BUYABLE>
<eq             plate_gloves_2 0 0 1 BUYABLE>
<eq             plate_helm 0 0 1 BUYABLE>
<eq             plate_helm_2 0 0 1 BUYABLE>
<eq             open_helm 0 0 1 BUYABLE>
<eq             open_helm_2 0 0 1 BUYABLE>
<eq             nose_helm 0 0 1 BUYABLE>
<eq             nose_helm_2 0 0 1 BUYABLE>
<eq             bucket_helm 0 0 1 BUYABLE>
<eq             bascinet 0 0 1 BUYABLE>
<eq             bascinet_2 0 0 1 BUYABLE>
<eq             chain_coif 0 0 1 BUYABLE>
<eq             chain_coif_2 0 0 1 BUYABLE>
<eq             chain_chest 0 0 1 BUYABLE>
<eq             chain_chest_2 0 0 1 BUYABLE>
<eq             chain_legs 0 0 1 BUYABLE>
<eq             chain_legs_2 0 0 1 BUYABLE>
<eq             ring_chest 0 0 1 BUYABLE>
<eq             ring_chest_2 0 0 1 BUYABLE>
<eq             ring_legs 0 0 1 BUYABLE>
<eq             ring_legs_2 0 0 1 BUYABLE>
<eq             ring_arms 0 0 1 BUYABLE>
<eq             ring_arms_2 0 0 1 BUYABLE>
<eq             ring_gloves 0 0 1 BUYABLE>
<eq             ring_gloves_2 0 0 1 BUYABLE>
<eq             plate_gorget 0 0 1 BUYABLE>
<eq             leather_gorget 0 0 1 BUYABLE>
<eq             studded_gorget 0 0 1 BUYABLE>
<eq             leather_cap 0 0 1 BUYABLE>
<eq             leather_arms 0 0 1 BUYABLE>
<eq             leather_arms_2 0 0 1 BUYABLE>
<eq             leather_chest 0 0 1 BUYABLE>
<eq             leather_chest_2 0 0 1 BUYABLE>
<eq             leather_legs 0 0 1 BUYABLE>
<eq             leather_legs_2 0 0 1 BUYABLE>
<eq             leather_gloves 0 0 1 BUYABLE>
<eq             leather_gloves_2 0 0 1 BUYABLE>
<eq             heater_shield_1 0 0 1 BUYABLE>
<eq             heater_shield_2 0 0 1 BUYABLE>
<eq             heater_shield_3 0 0 1 BUYABLE>
<eq             heater_shield_4 0 0 1 BUYABLE>
<eq             kite_shield_1 0 0 1 BUYABLE>
<eq             kite_shield_2 0 0 1 BUYABLE>
<eq             metal_shield 0 0 1 BUYABLE>
<eq             wooden_shield 0 0 1 BUYABLE>
<eq             buckler_shield 0 0 1 BUYABLE>
<eq             bronze_shield 0 0 1 BUYABLE>
<eq             studded_arms 0 0 1 BUYABLE>
<eq             studded_arms_2 0 0 1 BUYABLE>
<eq             studded_chest 0 0 1 BUYABLE>
<eq             studded_chest_2 0 0 1 BUYABLE>
<eq             studded_legs 0 0 1 BUYABLE>
<eq             studded_legs_2 0 0 1 BUYABLE>
<eq             studded_gloves 0 0 1 BUYABLE>
<eq             studded_gloves_2 0 0 1 BUYABLE>
<eq             fem_armor_a 0 0 1 BUYABLE>
<eq             fem_armor_a_2 0 0 1 BUYABLE>
<eq             fem_armor_b 0 0 1 BUYABLE>
<eq             fem_armor_b_2 0 0 1 BUYABLE>
<eq             fem_armor_c 0 0 1 BUYABLE>
<eq             fem_armor_c_2 0 0 1 BUYABLE>
<eq             fem_armor_shorts 0 0 1 BUYABLE>
<eq             fem_armor_shorts_2 0 0 1 BUYABLE>
<eq             fem_armor_skirt 0 0 1 BUYABLE>
<eq             fem_armor_skirt_2 0 0 1 BUYABLE>
<eq             fem_armor_top_a 0 0 1 BUYABLE>
<eq             fem_armor_top_a_2 0 0 1 BUYABLE>
<eq             fem_armor_top_b 0 0 1 BUYABLE>
<eq             fem_armor_top_b_2 0 0 1 BUYABLE>
<eq             sm_blank_book 0 0 1 BUYABLE>
<eq             lg_blank_book 0 0 1 BUYABLE>
<eq             sm_pub_book 0 0 1 BUYABLE>
<eq             lg_pub_book 0 0 1 BUYABLE>
<eq             clock 0 0 1 BUYABLE>
<eq             clock_2 0 0 1 BUYABLE>
<eq             clock_parts 0 0 1 BUYABLE>
<eq             clock_parts_2 0 0 1 BUYABLE>
<eq             axel_and_gears 0 0 1 BUYABLE>
<eq             axel_and_gears_2 0 0 1 BUYABLE>
<eq             gears 0 0 1 BUYABLE>
<eq             gears_2 0 0 1 BUYABLE>
<eq             hinge 0 0 1 BUYABLE>
<eq             hinge_2 0 0 1 BUYABLE>
<eq             sextant 0 0 1 BUYABLE>
<eq             sextant_2 0 0 1 BUYABLE>
<eq             sextant_parts 0 0 1 BUYABLE>
<eq             sextant_parts_2 0 0 1 BUYABLE>
<eq             sticks 0 0 1 BUYABLE>
<eq             sticks_2 0 0 1 BUYABLE>
<eq             springs 0 0 1 BUYABLE>
<eq             springs_2 0 0 1 BUYABLE>
<eq             key_ring 0 0 1 BUYABLE>
<eq             iron_ingot 0 0 1 BUYABLE>
<eq             log 0 0 1 BUYABLE>
<eq             lumber 0 0 1 BUYABLE>
<eq             sewing_kit 0 0 1 BUYABLE>
<eq             draw_knife 0 0 1 BUYABLE>
<eq             froe 0 0 1 BUYABLE>
<eq             inshave 0 0 1 BUYABLE>
<eq             scorp 0 0 1 BUYABLE>
<eq             butcher_knife 0 0 1 BUYABLE>
<eq             butcher_knife_2 0 0 1 BUYABLE>
<eq             scissors 0 0 1 BUYABLE>
<eq             scissors_2 0 0 1 BUYABLE>
<eq             tongs 0 0 1 BUYABLE>
<eq             tongs_2 0 0 1 BUYABLE>
<eq             dovetail 0 0 1 BUYABLE>
<eq             dovetail_2 0 0 1 BUYABLE>
<eq             saw 0 0 1 BUYABLE>
<eq             saw_2 0 0 1 BUYABLE>
<eq             hammer 0 0 1 BUYABLE>
<eq             hammer_2 0 0 1 BUYABLE>
<eq             smith_hammer 0 0 1 BUYABLE>
<eq             smith_hammer_2 0 0 1 BUYABLE>
<eq             sledge_hammer 0 0 1 BUYABLE>
<eq             sledge_hammer_2 0 0 1 BUYABLE>
<eq             shovel 0 0 1 BUYABLE>
<eq             shovel_2 0 0 1 BUYABLE>
<eq             moulding_plane 0 0 1 BUYABLE>
<eq             moulding_plane_2 0 0 1 BUYABLE>
<eq             smoothing_plane 0 0 1 BUYABLE>
<eq             smoothing_plane_2 0 0 1 BUYABLE>
<eq             jointing_plane 0 0 1 BUYABLE>
<eq             jointing_plane_2 0 0 1 BUYABLE>
<eq             pickaxe 0 0 1 BUYABLE>
<eq             pickaxe_2 0 0 1 BUYABLE>
<eq             bad_axe 0 0 1 BUYABLE>
<eq             bad_axe_2 0 0 1 BUYABLE>
<eq             bardiche 0 0 1 BUYABLE>
<eq             bardiche_2 0 0 1 BUYABLE>
<eq             battle_axe 0 0 1 BUYABLE>
<eq             battle_axe_2 0 0 1 BUYABLE>
<eq             double_battle_axe 0 0 1 BUYABLE>
<eq             double_battle_axe_2 0 0 1 BUYABLE>
<eq             bow 0 0 1 BUYABLE>
<eq             bow_2 0 0 1 BUYABLE>
<eq             butcher_knife 0 0 1 BUYABLE>
<eq             butcher_knife_2 0 0 1 BUYABLE>
<eq             club 0 0 1 BUYABLE>
<eq             club_2 0 0 1 BUYABLE>
<eq             crossbow 0 0 1 BUYABLE>
<eq             crossbow_2 0 0 1 BUYABLE>
<eq             big_crossbow 0 0 1 BUYABLE>
<eq             big_crossbow_2 0 0 1 BUYABLE>
<eq             cutlass 0 0 1 BUYABLE>
<eq             cutlass_2 0 0 1 BUYABLE>
<eq             dagger_1 0 0 1 BUYABLE>
<eq             dagger_2 0 0 1 BUYABLE>
<eq             gnarled_staff 0 0 1 BUYABLE>
<eq             gnarled_staff_2 0 0 1 BUYABLE>
<eq             halberd 0 0 1 BUYABLE>
<eq             halberd_2 0 0 1 BUYABLE>
<eq             hammerpick 0 0 1 BUYABLE>
<eq             hammerpick_2 0 0 1 BUYABLE>
<eq             kitana 0 0 1 BUYABLE>
<eq             kitana_2 0 0 1 BUYABLE>
<eq             kryss 0 0 1 BUYABLE>
<eq             kryss_2 0 0 1 BUYABLE>
<eq             broad_sword 0 0 1 BUYABLE>
<eq             broad_sword_2 0 0 1 BUYABLE>
<eq             long_sword 0 0 1 BUYABLE>
<eq             long_sword_2 0 0 1 BUYABLE>
<eq             magic_sword 0 0 1 BUYABLE>
<eq             magic_sword_2 0 0 1 BUYABLE>
<eq             viking_sword 0 0 1 BUYABLE>
<eq             viking_sword_2 0 0 1 BUYABLE>
<eq             mace 0 0 1 BUYABLE>
<eq             mace_2 0 0 1 BUYABLE>
<eq             maul 0 0 1 BUYABLE>
<eq             maul_2 0 0 1 BUYABLE>
<eq             meat_cleaver 0 0 1 BUYABLE>
<eq             meat_cleaver_2 0 0 1 BUYABLE>
<eq             new_axe 0 0 1 BUYABLE>
<eq             new_axe_2 0 0 1 BUYABLE>
<eq             double_new_axe 0 0 1 BUYABLE>
<eq             double_new_axe_2 0 0 1 BUYABLE>
<eq             pickaxe 0 0 1 BUYABLE>
<eq             pickaxe_2 0 0 1 BUYABLE>
<eq             pitchfork 0 0 1 BUYABLE>
<eq             pitchfork_2 0 0 1 BUYABLE>
<eq             quarter_staff 0 0 1 BUYABLE>
<eq             quarter_staff_2 0 0 1 BUYABLE>
<eq             scimitar 0 0 1 BUYABLE>
<eq             scimitar_2 0 0 1 BUYABLE>
<eq             shepherd_crook 0 0 1 BUYABLE>
<eq             shepherd_crook_2 0 0 1 BUYABLE>
<eq             skinning_knife 0 0 1 BUYABLE>
<eq             skinning_knife_2 0 0 1 BUYABLE>
<eq             smith_hammer 0 0 1 BUYABLE>
<eq             smith_hammer_2 0 0 1 BUYABLE>
<eq             short_spear 0 0 1 BUYABLE>
<eq             short_spear_2 0 0 1 BUYABLE>
<eq             spear 0 0 1 BUYABLE>
<eq             spear_2 0 0 1 BUYABLE>
<eq             two_handed_axe 0 0 1 BUYABLE>
<eq             two_handed_axe_2 0 0 1 BUYABLE>
<eq             war_axe 0 0 1 BUYABLE>
<eq             war_axe_2 0 0 1 BUYABLE>
<eq             war_hammer 0 0 1 BUYABLE>
<eq             war_hammer_2 0 0 1 BUYABLE>
<eq             war_mace 0 0 1 BUYABLE>
<eq             war_mace_2 0 0 1 BUYABLE>
<eq             lumber 0 0 1 BUYABLE>
<eq             iron_ingot 0 0 1 BUYABLE>
<eq             log     0 0 1 BUYABLE>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<15>
# Sailor 
<type         NORMAL 400>
<frequency    100>
<region       { CUSTOMS 0 DOCKS 0 SAILORSMALL 0 SAILORMEDIUM 0 SAILORLARGE 0 SAILOR 0 } >
<regionlimit  { CUSTOMS 1 DOCKS 1 SAILORSMALL 2 SAILORMEDIUM 4 SAILORLARGE 6 SAILOR 1 } >
<job          sailor>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int hirelingWages 5>
<script       human>
<script       pet>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_SAILOR>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+65>
<dexterity    1d15+65>
<intelligence 1d15+40>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+425>
<sk           skill_magic_defense  25d10+425>
<sk           skill_battle_defense 25d10+425>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           plain_shirt white_colors 1>
<eq           plain_pants white_colors 1>
<eq           cutlass 0 0 1>
<eq           plain_shoes neutral_colors 1>
<eq           random_coin_purse 0 0 1>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter     1  1    SHIPS>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  1    SHIPS>
<resource     desire     10  1    GOLD>
<resource     desire     10  1    WATER>
<resource     desire      3  1    SELF>
<@@@ END @@@>
<16>
# Shipwright 
<type         SHOPKEEPER 400>
<frequency    100>
<region       SHIPWRIGHT>
<regionlimit  { SHIPWRIGHT 1 } >
<job          shipwright>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 10>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_SHIPWRIGHT>
<convfrag     BRITANNIA_SHOPKEEPER>
<convfrag     BRITANNIA_MERCHANT_GREETING>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+65>
<dexterity    1d15+70>
<intelligence 1d15+60>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+425>
<sk           skill_magic_defense  25d10+425>
<sk           skill_battle_defense 25d10+425>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           plain_shirt all_colors 1>
<eq           plain_pants all_colors 1>
<eq           plain_shoes neutral_colors 1>
<eq           random_coin_purse 0 0 1>
<eq             ship_deed_template_0 0 0 1 SELLABLE>
<eq             ship_deed_template_1 0 0 1 SELLABLE>
<eq             ship_deed_template_2 0 0 1 SELLABLE>
<eq             ship_deed_template_3 0 0 1 SELLABLE>
<eq             ship_deed_template_4 0 0 1 SELLABLE>
<eq             ship_deed_template_5 0 0 1 SELLABLE>
<eq             ship_deed_template_0 0 0 1 BUYABLE>
<eq             ship_deed_template_1 0 0 1 BUYABLE>
<eq             ship_deed_template_2 0 0 1 BUYABLE>
<eq             ship_deed_template_3 0 0 1 BUYABLE>
<eq             ship_deed_template_4 0 0 1 BUYABLE>
<eq             ship_deed_template_5 0 0 1 BUYABLE>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<resource     desire     10  1    WOOD>
<@@@ END @@@>
<17>
# Tailor Guildmaster
<type         SHOPKEEPER 400>
<frequency    100>
<region       CLOTHIER>
<regionlimit  { CLOTHIER 1 } >
<job          tailor>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 9>
<script       human>
<script       gm>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_TAILOR>
<convfrag     BRITANNIA_SHOPKEEPER>
<convfrag     BRITANNIA_MERCHANT_GREETING>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+35>
<dexterity    1d15+45>
<intelligence 1d15+40>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+225>
<sk           skill_magic_defense  25d10+225>
<sk           skill_battle_defense 25d10+225>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_tailor         25d10+525>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           plain_shirt all_colors 1>
<eq           plain_pants all_colors 1>
<eq           random_shoes neutral_colors 1>
<eq           random_coin_purse 0 0 1>
<eq             sewing_kit 0 0 1 SELLABLE>
<eq             scissors 0 0 1 SELLABLE>
<eq             dye_tub 0 0 1 SELLABLE>
<eq             dye_bowl 0 0 1 SELLABLE>
<eq             plain_shirt 0 0 1 SELLABLE>
<eq             poor_pants 0 0 1 SELLABLE>
<eq             fancy_shirt 0 0 1 SELLABLE>
<eq             fancy_pants 0 0 1 SELLABLE>
<eq             full_dress 0 0 1 SELLABLE>
<eq             plain_dress 0 0 1 SELLABLE>
<eq             long_skirt 0 0 1 SELLABLE>
<eq             kilt { red_colors 1 blue_colors 1 green_colors 1 } 1 SELLABLE>
<eq             apron 0 0 1 SELLABLE>
<eq             robe 0 0 1 SELLABLE>
<eq             cloak 0 0 1 SELLABLE>
<eq             cape 0 0 1 SELLABLE>
<eq             doublet 0 0 1 SELLABLE>
<eq             tunic 0 0 1 SELLABLE>
<eq             jester_suit 0 0 1 SELLABLE>
<eq             jester_cap 0 0 1 SELLABLE>
<eq             floppy_hat all_colors 1 SELLABLE>
<eq             bumpkin_straw_hat all_colors 1 SELLABLE>
<eq             darby_hat all_colors 1 SELLABLE>
<eq             pointy_hat all_colors 1 SELLABLE>
<eq             banded_straw_hat all_colors 1 SELLABLE>
<eq             mage_like_hat all_colors 1 SELLABLE>
<eq             leather_cap all_colors 1 SELLABLE>
<eq             turban all_colors 1 SELLABLE>
<eq             straw_boater all_colors 1 SELLABLE>
<eq             bandana all_colors 1 SELLABLE>
<eq             skull_cap all_colors 1 SELLABLE>
<eq             folded_cloth_1 all_colors 1 SELLABLE>
<eq             folded_cloth_2 all_colors 1 SELLABLE>
<eq             folded_cloth_3 all_colors 1 SELLABLE>
<eq             folded_cloth_4 all_colors 1 SELLABLE>
<eq             bolt_of_cloth all_colors 1 SELLABLE>
<eq             bolt_of_cloth_2 all_colors 1 SELLABLE>
<eq             bolt_of_cloth_3 all_colors 1 SELLABLE>
<eq             bolt_of_cloth_4 all_colors 1 SELLABLE>
<eq             raw_cotton 0 0 1 SELLABLE>
<eq             raw_wool 0 0 1 SELLABLE>
<eq             retted_flax 0 0 1 SELLABLE>
<eq             thread 0 0 1 SELLABLE>
<eq             sewing_kit 0 0 1 BUYABLE>
<eq             scissors 0 0 1 BUYABLE>
<eq             scissors_2 0 0 1 BUYABLE>
<eq             dye_tub 0 0 1 BUYABLE>
<eq             dye_bowl 0 0 1 BUYABLE>
<eq             poor_shirt 0 0 1 BUYABLE>
<eq             poor_shirt_2 0 0 1 BUYABLE>
<eq             poor_pants 0 0 1 BUYABLE>
<eq             fancy_shirt 0 0 1 BUYABLE>
<eq             fancy_shirt_2 0 0 1 BUYABLE>
<eq             fancy_pants 0 0 1 BUYABLE>
<eq             full_dress 0 0 1 BUYABLE>
<eq             plain_dress 0 0 1 BUYABLE>
<eq             skirt 0 0 1 BUYABLE>
<eq             kilt 0 0 1 BUYABLE>
<eq             apron 0 0 1 BUYABLE>
<eq             robe 0 0 1 BUYABLE>
<eq             cloak 0 0 1 BUYABLE>
<eq             cape 0 0 1 BUYABLE>
<eq             doublet 0 0 1 BUYABLE>
<eq             jester_suit 0 0 1 BUYABLE>
<eq             jester_suit_2 0 0 1 BUYABLE>
<eq             jester_cap 0 0 1 BUYABLE>
<eq             tunic 0 0 1 BUYABLE>
<eq             tunic_2 0 0 1 BUYABLE>
<eq             floppy_hat all_colors 1 BUYABLE>
<eq             bumpkin_straw_hat all_colors 1 BUYABLE>
<eq             darby_hat all_colors 1 BUYABLE>
<eq             pointy_hat all_colors 1 BUYABLE>
<eq             banded_straw_hat all_colors 1 BUYABLE>
<eq             mage_like_hat all_colors 1 BUYABLE>
<eq             leather_cap all_colors 1 BUYABLE>
<eq             turban all_colors 1 BUYABLE>
<eq             straw_boater all_colors 1 BUYABLE>
<eq             bandana all_colors 1 BUYABLE>
<eq             skull_cap all_colors 1 BUYABLE>
<eq             folded_cloth_1 0 0 1 BUYABLE>
<eq             folded_cloth_2 0 0 1 BUYABLE>
<eq             folded_cloth_3 0 0 1 BUYABLE>
<eq             folded_cloth_4 0 0 1 BUYABLE>
<eq             bolt_of_cloth 0 0 1 BUYABLE>
<eq             bolt_of_cloth_2 0 0 1 BUYABLE>
<eq             bolt_of_cloth_3 0 0 1 BUYABLE>
<eq             bolt_of_cloth_4 0 0 1 BUYABLE>
<eq             scissors 0 0 1 BUYABLE>
<eq             raw_cotton 0 0 1 BUYABLE>
<eq             raw_wool 0 0 1 BUYABLE>
<eq             retted_flax 0 0 1 BUYABLE>
<eq             retted_flax2 0 0 1 BUYABLE>
<eq             thread 0 0 1 BUYABLE>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<resource     desire     10  1    CLOTH>
<@@@ END @@@>
<18>
# Weaver 
<type         SHOPKEEPER 400>
<frequency    100>
<region       CLOTHIER>
<regionlimit  { CLOTHIER 1 } >
<job          weaver>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 9>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_WEAVER>
<convfrag     BRITANNIA_SHOPKEEPER>
<convfrag     BRITANNIA_MERCHANT_GREETING>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+35>
<dexterity    1d15+50>
<intelligence 1d15+30>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+225>
<sk           skill_magic_defense  25d10+225>
<sk           skill_battle_defense 25d10+225>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_tailor         25d10+325>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           plain_shirt all_colors 1>
<eq           plain_pants all_colors 1>
<eq           random_shoes neutral_colors 1>
<eq           random_coin_purse 0 0 1>
<eq             dye_bowl 0 0 1 SELLABLE>
<eq             dye_tub 0 0 1 SELLABLE>
<eq             folded_cloth_1 0 0 1 SELLABLE>
<eq             folded_cloth_2 0 0 1 SELLABLE>
<eq             folded_cloth_3 0 0 1 SELLABLE>
<eq             folded_cloth_4 0 0 1 SELLABLE>
<eq             bolt_of_cloth 0 0 1 SELLABLE>
<eq             bolt_of_cloth_2 0 0 1 SELLABLE>
<eq             bolt_of_cloth_3 0 0 1 SELLABLE>
<eq             bolt_of_cloth_4 0 0 1 SELLABLE>
<eq             ball_of_yarn_1 0 0 1 SELLABLE>
<eq             ball_of_yarn_2 0 0 1 SELLABLE>
<eq             ball_of_yarn_3 0 0 1 SELLABLE>
<eq             scissors 0 0 1 SELLABLE>
<eq             scissors 0 0 1 BUYABLE>
<eq             scissors_2 0 0 1 BUYABLE>
<eq             dye_bowl 0 0 1 BUYABLE>
<eq             dye_tub 0 0 1 BUYABLE>
<eq             folded_cloth_1 0 0 1 BUYABLE>
<eq             folded_cloth_2 0 0 1 BUYABLE>
<eq             folded_cloth_3 0 0 1 BUYABLE>
<eq             folded_cloth_4 0 0 1 BUYABLE>
<eq             bolt_of_cloth 0 0 1 BUYABLE>
<eq             bolt_of_cloth_2 0 0 1 BUYABLE>
<eq             bolt_of_cloth_3 0 0 1 BUYABLE>
<eq             bolt_of_cloth_4 0 0 1 BUYABLE>
<eq             raw_cotton 0 0 1 BUYABLE>
<eq             raw_wool 0 0 1 BUYABLE>
<eq             ball_of_yarn_1 0 0 1 BUYABLE>
<eq             ball_of_yarn_2 0 0 1 BUYABLE>
<eq             ball_of_yarn_3 0 0 1 BUYABLE>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<resource     desire     10  1    CLOTH>
<resource     desire     10  1    COTTON>
<resource     desire     10  1    WOOL>
<@@@ END @@@>
<19>
# Tavernkeeper 
<type         SHOPKEEPER 400>
<frequency    100>
<region       TAVERN>
<regionlimit  { TAVERN 1 } >
<job          tavernkeeper>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 7>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_TAVERNKEEPER>
<convfrag     BRITANNIA_SHOPKEEPER>
<convfrag     BRITANNIA_MERCHANT_GREETING>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+60>
<dexterity    1d15+65>
<intelligence 1d15+50>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+425>
<sk           skill_magic_defense  25d10+425>
<sk           skill_battle_defense 25d10+425>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           plain_shirt all_colors 1>
<eq           plain_pants all_colors 1>
<eq           plain_shoes neutral_colors 1>
<eq           apron white_colors 1>
<eq           random_coin_purse 0 0 1>
<eq             ale_bottle 0 0 1 SELLABLE>
<eq             wine_bottle 0 0 1 SELLABLE>
<eq             liquor_bottle 0 0 1 SELLABLE>
<eq             cider_jug 0 0 1 SELLABLE>
<eq             ale_pitcher 0 0 1 SELLABLE>
<eq             cider_pitcher 0 0 1 SELLABLE>
<eq             glass_pitcher 0 0 1 SELLABLE>
<eq             liquor_pitcher 0 0 1 SELLABLE>
<eq             milk_pitcher 0 0 1 SELLABLE>
<eq             wine_pitcher 0 0 1 SELLABLE>
<eq             water_pitcher 0 0 1 SELLABLE>
<eq             loaf_bread_1 0 0 1 SELLABLE>
<eq             cheese_1 0 0 1 SELLABLE>
<eq             cooked_bird 0 0 1 SELLABLE>
<eq             cooked_mutton 0 0 1 SELLABLE>
<eq             cooked_chicken 0 0 1 SELLABLE>
<eq             bowl_carrots_1 0 0 1 SELLABLE>
<eq             bowl_corn_1 0 0 1 SELLABLE>
<eq             bowl_lettuce_1 0 0 1 SELLABLE>
<eq             bowl_peas_1 0 0 1 SELLABLE>
<eq             bowl_carrots_2 0 0 1 SELLABLE>
<eq             bowl_corn_2 0 0 1 SELLABLE>
<eq             bowl_lettuce 0 0 1 SELLABLE>
<eq             bowl_peas_2 0 0 1 SELLABLE>
<eq             bowl_potatoes  0 0 1 SELLABLE>
<eq             bowl_stew_1 0 0 1 SELLABLE>
<eq             bowl_tomato_soup 0 0 1 SELLABLE>
<eq             baked_pie 0 0 1 SELLABLE>
<eq             chessboard 0 0 1 SELLABLE>
<eq             checkerboard 0 0 1 SELLABLE>
<eq             backgammon 0 0 1 SELLABLE>
<eq             dice_cup 0 0 1 SELLABLE>
<eq             vendor_deed_template 0 0 1 SELLABLE>
<eq             vendor_deed_template 0 0 1 BUYABLE>
<eq             chessboard 0 0 1 BUYABLE>
<eq             checkerboard 0 0 1 BUYABLE>
<eq             dice_cup 0 0 1 BUYABLE>
<eq             backgammon 0 0 1 BUYABLE>
<eq             backgammon_2 0 0 1 BUYABLE>
<eq             ale_bottle 0 0 1 BUYABLE>
<eq             wine_bottle 0 0 1 BUYABLE>
<eq             liquor_bottle 0 0 1 BUYABLE>
<eq             cider_jug 0 0 1 BUYABLE>
<eq             ale_pitcher 0 0 1 BUYABLE>
<eq             ale_pitcher_2 0 0 1 BUYABLE>
<eq             cider_pitcher 0 0 1 BUYABLE>
<eq             cider_pitcher_2 0 0 1 BUYABLE>
<eq             glass_pitcher 0 0 1 BUYABLE>
<eq             glass_pitcher_2 0 0 1 BUYABLE>
<eq             glass_pitcher_3 0 0 1 BUYABLE>
<eq             liquor_pitcher 0 0 1 BUYABLE>
<eq             liquor_pitcher_2 0 0 1 BUYABLE>
<eq             milk_pitcher 0 0 1 BUYABLE>
<eq             milk_pitcher_2 0 0 1 BUYABLE>
<eq             wine_pitcher 0 0 1 BUYABLE>
<eq             wine_pitcher_2 0 0 1 BUYABLE>
<eq             water_pitcher 0 0 1 BUYABLE>
<eq             water_pitcher_2 0 0 1 BUYABLE>
<eq             water_pitcher_3 0 0 1 BUYABLE>
<eq             water_pitcher_4 0 0 1 BUYABLE>
<eq             loaf_bread_1 0 0 1 BUYABLE>
<eq             cheese_1 0 0 1 BUYABLE>
<eq             cooked_bird 0 0 1 BUYABLE>
<eq             cooked_mutton 0 0 1 BUYABLE>
<eq             cooked_chicken 0 0 1 BUYABLE>
<eq             bowl_carrots_1 0 0 1 BUYABLE>
<eq             bowl_corn_1 0 0 1 BUYABLE>
<eq             bowl_lettuce_1 0 0 1 BUYABLE>
<eq             bowl_peas_1 0 0 1 BUYABLE>
<eq             bowl_carrots_2 0 0 1 BUYABLE>
<eq             bowl_corn_2 0 0 1 BUYABLE>
<eq             bowl_lettuce 0 0 1 BUYABLE>
<eq             bowl_peas_2 0 0 1 BUYABLE>
<eq             bowl_potatoes  0 0 1 BUYABLE>
<eq             bowl_stew_1 0 0 1 BUYABLE>
<eq             bowl_tomato_soup 0 0 1 BUYABLE>
<eq             baked_pie 0 0 1 BUYABLE>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<20>
# Thief 
<type         NORMAL 400>
<frequency    100>
<region       { THIEF 0 THIEVES 0 CITY 0 } >
<regionlimit  { THIEF 1 THIEVES 2 CITY 6 } >
<job          thief>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 3>
<objvar       int hirelingWages 6>
<script       human>
<script       pet>
<script       thief>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_THIEF>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_NEEDS>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+60>
<dexterity    1d15+85>
<intelligence 1d15+70>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           25d10+525>
<sk           skill_magic_defense   25d10+525>
<sk           skill_battle_defense  25d10+525>
<sk           skill_weapon_slashing 25d10+325>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+525>
<sk           skill_weapon_hand     25d10+225>
<sk           skill_poisoning       25d10+325>
<sk           skill_locksmith       25d10+325>
<sk           skill_hide            25d10+425>
<sk           skill_detect_hidden   25d10+325>
<sk           skill_peek            25d10+425>
<sk           skill_steal           25d10+425>
<sk           skill_remove_trap     25d10+325>
<resistances  poison>
<resistances  piercing>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           plain_shirt all_colors 1>
<eq           plain_pants all_colors 1>
<eq           random_footwear 0 0 1>
<eq           random_dagger 0 0 1>
<eq           random_coin_purse 0 0 1>
<eq           lockpick 0 0 1 SELFCONTAINED>
<resource     food         5  1    FOOD>
<resource     food         5  1    EGGS>
<resource     food         5  1    FRUIT>
<resource     food         5  1    FISH>
<resource     shelter      1  1    HOME>
<resource     shelter     16  0    HOUSES>
<resource     production   8  0    MEAT>
<resource     desire       1 -3    DANGER>
<resource     desire       1 -3    SPOOKINESS>
<resource     desire       1 -2    GUARD>
<resource     desire       1  3    GOLD>
<resource     desire       1  3    JEWELS>
<@@@ END @@@>
<21>
# Tinker 
<type         SHOPKEEPER 400>
<frequency    100>
<region       TINKER>
<regionlimit  { TINKER 1 } >
<job          tinker>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 8>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_TINKER>
<convfrag     BRITANNIA_SHOPKEEPER>
<convfrag     BRITANNIA_MERCHANT_GREETING>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+40>
<dexterity    1d15+65>
<intelligence 1d15+60>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+325>
<sk           skill_magic_defense  25d10+325>
<sk           skill_battle_defense 25d10+325>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_tinker         25d10+425>
<sk           skill_locksmith      25d10+425>
<sk           skill_remove_trap    25d10+425>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           plain_shirt all_colors 1>
<eq           plain_pants all_colors 1>
<eq           plain_shoes neutral_colors 1>
<eq           random_coin_purse 0 0 1>
<eq             clock 0 0 1 SELLABLE>
<eq             nails 0 0 1 SELLABLE>
<eq             clock_parts 0 0 1 SELLABLE>
<eq             axel_and_gears 0 0 1 SELLABLE>
<eq             gears 0 0 1 SELLABLE>
<eq             hinge 0 0 1 SELLABLE>
<eq             sextant 0 0 1 SELLABLE>
<eq             sextant_parts 0 0 1 SELLABLE>
<eq             sticks 0 0 1 SELLABLE>
<eq             springs 0 0 1 SELLABLE>
<eq             copper_key 0 0 1 SELLABLE>
<eq             gold_key 0 0 1 SELLABLE>
<eq             iron_key 0 0 1 SELLABLE>
<eq             rusty_key 0 0 1 SELLABLE>
<eq             key_ring 0 0 1 SELLABLE>
<eq             lockpick 0 0 1 SELLABLE>
<eq             lockpicks 0 0 1 SELLABLE>
<eq             tinker_tools 0 0 1 SELLABLE>
<eq             lumber 0 0 1 SELLABLE>
<eq             iron_ingot 0 0 1 SELLABLE>
<eq             sewing_kit 0 0 1 SELLABLE>
<eq             draw_knife 0 0 1 SELLABLE>
<eq             froe 0 0 1 SELLABLE>
<eq             inshave 0 0 1 SELLABLE>
<eq             scorp 0 0 1 SELLABLE>
<eq             butcher_knife 0 0 1 SELLABLE>
<eq             scissors 0 0 1 SELLABLE>
<eq             tongs 0 0 1 SELLABLE>
<eq             dovetail 0 0 1 SELLABLE>
<eq             saw 0 0 1 SELLABLE>
<eq             hammer 0 0 1 SELLABLE>
<eq             smith_hammer 0 0 1 SELLABLE>
<eq             sledge_hammer 0 0 1 SELLABLE>
<eq             shovel 0 0 1 SELLABLE>
<eq             moulding_plane 0 0 1 SELLABLE>
<eq             smoothing_plane 0 0 1 SELLABLE>
<eq             jointing_plane 0 0 1 SELLABLE>
<eq             pickaxe 0 0 1 SELLABLE>
<eq             drum 0 0 1 SELLABLE>
<eq             tambourine 0 0 1 SELLABLE>
<eq             lyre 0 0 1 SELLABLE>
<eq             lute 0 0 1 SELLABLE>
<eq             drum 0 0 1 BUYABLE>
<eq             tambourine 0 0 1 BUYABLE>
<eq             lyre 0 0 1 BUYABLE>
<eq             lute 0 0 1 BUYABLE>
<eq             kindling 0 0 1 BUYABLE>
<eq             clock 0 0 1 BUYABLE>
<eq             clock_2 0 0 1 BUYABLE>
<eq             clock_parts 0 0 1 BUYABLE>
<eq             clock_parts_2 0 0 1 BUYABLE>
<eq             axel_and_gears 0 0 1 BUYABLE>
<eq             axel_and_gears_2 0 0 1 BUYABLE>
<eq             gears 0 0 1 BUYABLE>
<eq             gears_2 0 0 1 BUYABLE>
<eq             hinge 0 0 1 BUYABLE>
<eq             hinge_2 0 0 1 BUYABLE>
<eq             sextant 0 0 1 BUYABLE>
<eq             sextant_2 0 0 1 BUYABLE>
<eq             sextant_parts 0 0 1 BUYABLE>
<eq             sextant_parts_2 0 0 1 BUYABLE>
<eq             sticks 0 0 1 BUYABLE>
<eq             sticks_2 0 0 1 BUYABLE>
<eq             springs 0 0 1 BUYABLE>
<eq             springs_2 0 0 1 BUYABLE>
<eq             copper_key 0 0 1 BUYABLE>
<eq             gold_key 0 0 1 BUYABLE>
<eq             iron_key 0 0 1 BUYABLE>
<eq             rusty_key 0 0 1 BUYABLE>
<eq             magic_key 0 0 1 BUYABLE>
<eq             key_ring 0 0 1 BUYABLE>
<eq             lockpick 0 0 1 BUYABLE>
<eq             lockpick_2 0 0 1 BUYABLE>
<eq             lockpicks 0 0 1 BUYABLE>
<eq             lockpicks_2 0 0 1 BUYABLE>
<eq             tinker_tools 0 0 1 BUYABLE>
<eq             tinker_kit_1 0 0 1 BUYABLE>
<eq             tinker_kit_2 0 0 1 BUYABLE>
<eq             tinker_kit_3 0 0 1 BUYABLE>
<eq             tinker_kit_4 0 0 1 BUYABLE>
<eq             iron_ingot 0 0 1 BUYABLE>
<eq             log     0 0  1  BUYABLE>
<eq             lumber 0 0 1 BUYABLE>
<eq             sewing_kit 0 0 1 BUYABLE>
<eq             draw_knife 0 0 1 BUYABLE>
<eq             froe 0 0 1 BUYABLE>
<eq             inshave 0 0 1 BUYABLE>
<eq             scorp 0 0 1 BUYABLE>
<eq             butcher_knife 0 0 1 BUYABLE>
<eq             butcher_knife_2 0 0 1 BUYABLE>
<eq             scissors 0 0 1 BUYABLE>
<eq             scissors_2 0 0 1 BUYABLE>
<eq             tongs 0 0 1 BUYABLE>
<eq             tongs_2 0 0 1 BUYABLE>
<eq             dovetail 0 0 1 BUYABLE>
<eq             dovetail_2 0 0 1 BUYABLE>
<eq             saw 0 0 1 BUYABLE>
<eq             saw_2 0 0 1 BUYABLE>
<eq             hammer 0 0 1 BUYABLE>
<eq             hammer_2 0 0 1 BUYABLE>
<eq             smith_hammer 0 0 1 BUYABLE>
<eq             smith_hammer_2 0 0 1 BUYABLE>
<eq             sledge_hammer 0 0 1 BUYABLE>
<eq             sledge_hammer_2 0 0 1 BUYABLE>
<eq             shovel 0 0 1 BUYABLE>
<eq             shovel_2 0 0 1 BUYABLE>
<eq             moulding_plane 0 0 1 BUYABLE>
<eq             moulding_plane_2 0 0 1 BUYABLE>
<eq             smoothing_plane 0 0 1 BUYABLE>
<eq             smoothing_plane_2 0 0 1 BUYABLE>
<eq             jointing_plane 0 0 1 BUYABLE>
<eq             jointing_plane_2 0 0 1 BUYABLE>
<eq             pickaxe 0 0 1 BUYABLE>
<eq             pickaxe_2 0 0 1 BUYABLE>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<22>
# WeaponsTrainer 
<type         NORMAL 400>
<frequency    100>
<region       { WEAPONTRAINERSMALL 0 WEAPONTRAINERMEDIUM 0 WEAPONTRAINERLARGE 0 WEAPONTRAINER 0 } >
<regionlimit  { WEAPONTRAINERSMALL 2 WEAPONTRAINERMEDIUM 4 WEAPONTRAINERLARGE 6 WEAPONTRAINER 1 } >
<job          weaponstrainer>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 2>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_WEAPONSTRAINER>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+95>
<dexterity    1d15+90>
<intelligence 1d15+70>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           25d10+725>
<sk           skill_magic_defense   25d10+625>
<sk           skill_battle_defense  25d10+725>
<sk           skill_weapon_slashing 25d10+650>
<sk           skill_weapon_bashing  25d10+650>
<sk           skill_weapon_piercing 25d10+650>
<sk           skill_weapon_hand     25d10+650>
<resistances  slashing>
<resistances  piercing>
<resistances  bashing>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           studded_chest 0 0 1>
<eq           studded_legs 0 0 1>
<eq           studded_arms 0 0 1>
<eq           studded_gloves 0 0 1>
<eq           random_boots 0 0 1>
<eq           random_coin_purse 0 0 1>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<23>
# Weaponsmith 
<type         SHOPKEEPER 400>
<frequency    100>
<region       WEAPONRY>
<regionlimit  { WEAPONRY 1 } >
<job          weaponsmith>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 2>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_WEAPONSMITH>
<convfrag     BRITANNIA_SHOPKEEPER>
<convfrag     BRITANNIA_MERCHANT_GREETING>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+85>
<dexterity    1d15+85>
<intelligence 1d15+80>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           25d10+525>
<sk           skill_magic_defense   25d10+525>
<sk           skill_battle_defense  25d10+525>
<sk           skill_weapon_slashing 25d10+425>
<sk           skill_weapon_bashing  25d10+425>
<sk           skill_weapon_piercing 25d10+425>
<sk           skill_weapon_hand     25d10+425>
<sk           skill_armslore        25d10+425>
<sk           skill_blacksmith      25d10+625>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           plain_shirt all_colors 1>
<eq           plain_pants all_colors 1>
<eq           random_boots 0 0 1>
<eq           apron 0 0 1>
<eq           random_coin_purse 0 0 1>
<eq           { all_weapons 5 bladed_weapons 1 blunt_weapons 1 } 0 0 1 NONE>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<resource     desire      1  1    WOOD>
<resource     desire      1  1    METAL>
<@@@ END @@@>
<24>
# Carpenter 
<type         SHOPKEEPER 400>
<frequency    100>
<region       { WOODWORKER 0 CARPENTER 0 } >
<regionlimit  { WOODWORKER 1 CARPENTER 1 } >
<job          carpenter>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_SHOPKEEPER>
<convfrag     BRITANNIA_MERCHANT_GREETING>
<convfrag     BRITANNIA_CARPENTER>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+70>
<dexterity    1d15+65>
<intelligence 1d15+50>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           25d10+425>
<sk           skill_magic_defense   25d10+425>
<sk           skill_battle_defense  25d10+425>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_carpentry       25d10+525>
<sk           skill_lumberjack      25d10+425>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           plain_shirt all_colors 1>
<eq           plain_pants all_colors 1>
<eq           plain_shoes neutral_colors 1>
<eq           apron 0 0 1>
<eq           random_coin_purse 0 0 1>
<eq             nails 0 0 1 SELLABLE>
<eq             sticks 0 0 1 SELLABLE>
<eq             lumber 0 0 1 SELLABLE>
<eq             draw_knife 0 0 1 SELLABLE>
<eq             froe 0 0 1 SELLABLE>
<eq             inshave 0 0 1 SELLABLE>
<eq             scorp 0 0 1 SELLABLE>
<eq             dovetail 0 0 1 SELLABLE>
<eq             saw 0 0 1 SELLABLE>
<eq             hammer 0 0 1 SELLABLE>
<eq             moulding_plane 0 0 1 SELLABLE>
<eq             smoothing_plane 0 0 1 SELLABLE>
<eq             jointing_plane 0 0 1 SELLABLE>
<eq             drum 0 0 1 SELLABLE>
<eq             tambourine 0 0 1 SELLABLE>
<eq             lyre 0 0 1 SELLABLE>
<eq             lute 0 0 1 SELLABLE>
<eq             drum 0 0 1 BUYABLE>
<eq             tambourine 0 0 1 BUYABLE>
<eq             lyre 0 0 1 BUYABLE>
<eq             lute 0 0 1 BUYABLE>
<eq             sticks 0 0 1 BUYABLE>
<eq             sticks_2 0 0 1 BUYABLE>
<eq             log     0 0  1  BUYABLE>
<eq             lumber 0 0 1 BUYABLE>
<eq             draw_knife 0 0 1 BUYABLE>
<eq             froe 0 0 1 BUYABLE>
<eq             inshave 0 0 1 BUYABLE>
<eq             scorp 0 0 1 BUYABLE>
<eq             dovetail 0 0 1 BUYABLE>
<eq             dovetail_2 0 0 1 BUYABLE>
<eq             saw 0 0 1 BUYABLE>
<eq             saw_2 0 0 1 BUYABLE>
<eq             hammer 0 0 1 BUYABLE>
<eq             hammer_2 0 0 1 BUYABLE>
<eq             moulding_plane 0 0 1 BUYABLE>
<eq             moulding_plane_2 0 0 1 BUYABLE>
<eq             smoothing_plane 0 0 1 BUYABLE>
<eq             smoothing_plane_2 0 0 1 BUYABLE>
<eq             jointing_plane 0 0 1 BUYABLE>
<eq             jointing_plane_2 0 0 1 BUYABLE>
<eq             chair_1 0 0 1 BUYABLE>
<eq             chair_2 0 0 1 BUYABLE>
<eq             chair_3 0 0 1 BUYABLE>
<eq             chair_4 0 0 1 BUYABLE>
<eq             chair_5 0 0 1 BUYABLE>
<eq             chair_6 0 0 1 BUYABLE>
<eq             chair_7 0 0 1 BUYABLE>
<eq             chair_8 0 0 1 BUYABLE>
<eq             chair_9 0 0 1 BUYABLE>
<eq             chair_10 0 0 1 BUYABLE>
<eq             chair_11 0 0 1 BUYABLE>
<eq             chair_12 0 0 1 BUYABLE>
<eq             chair_13 0 0 1 BUYABLE>
<eq             chair_14 0 0 1 BUYABLE>
<eq             chair_15 0 0 1 BUYABLE>
<eq             chair_16 0 0 1 BUYABLE>
<eq             chair_17 0 0 1 BUYABLE>
<eq             chair_18 0 0 1 BUYABLE>
<eq             chair_19 0 0 1 BUYABLE>
<eq             chair_20 0 0 1 BUYABLE>
<eq             chair_21 0 0 1 BUYABLE>
<eq             stool_1 0 0 1 BUYABLE>
<eq             stool_2 0 0 1 BUYABLE>
<eq             bench_1 0 0 1 BUYABLE>
<eq             bench_2 0 0 1 BUYABLE>
<eq             throne_1 0 0 1 BUYABLE>
<eq             throne_2 0 0 1 BUYABLE>
<eq             table_1 0 0 1 BUYABLE>
<eq             table_2 0 0 1 BUYABLE>
<eq             table_3 0 0 1 BUYABLE>
<eq             table_4 0 0 1 BUYABLE>
<eq             table_5 0 0 1 BUYABLE>
<eq             table_6 0 0 1 BUYABLE>
<eq             table_7 0 0 1 BUYABLE>
<eq             table_8 0 0 1 BUYABLE>
<eq             table_9 0 0 1 BUYABLE>
<eq             table_10 0 0 1 BUYABLE>
<eq             wooden_box_1 0 0 1 BUYABLE>
<eq             wooden_box_2 0 0 1 BUYABLE>
<eq             small_crate_1 0 0 1 BUYABLE>
<eq             small_crate_2 0 0 1 BUYABLE>
<eq             crate_1 0 0 1 BUYABLE>
<eq             crate_2 0 0 1 BUYABLE>
<eq             crate_3 0 0 1 BUYABLE>
<eq             chest_1 0 0 1 BUYABLE>
<eq             chest_2 0 0 1 BUYABLE>
<eq             shelf_1 0 0 1 BUYABLE>
<eq             shelf_2 0 0 1 BUYABLE>
<eq             armoir_1 0 0 1 BUYABLE>
<eq             armoir_2 0 0 1 BUYABLE>
<eq             armoir_3 0 0 1 BUYABLE>
<eq             armoir_4 0 0 1 BUYABLE>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<resource     desire      1  1    WOOD>
<@@@ END @@@>
<25>
# Sculpter 
<type         NORMAL 400>
<frequency    100>
<region       { ARTISAN 0 CITY 0 } >
<regionlimit  { ARTISAN 1 CITY 1 } >
<job          sculpter>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_SCULPTOR>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+15 >
<dexterity    1d15+25 >
<intelligence 1d15+20 >
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+125>
<sk           skill_magic_defense  25d10+125>
<sk           skill_battle_defense 25d10+125>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_anatomy        25d10+225>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           plain_shirt all_colors 1>
<eq           plain_pants all_colors 1>
<eq           plain_shoes neutral_colors 1>
<eq           apron white_colors 1>
<eq           random_coin_purse 0 0 1>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<26>
# Artist 
<type         NORMAL 400>
<frequency    100>
<region       { ARTISAN 0 PAINTER 0 CITY 0 } >
<regionlimit  { ARTISAN 2 PAINTER 2 CITY 1 } >
<job          artist>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_ARTIST>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+15 >
<dexterity    1d15+30 >
<intelligence 1d15+15 >
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+125>
<sk           skill_magic_defense  25d10+125>
<sk           skill_battle_defense 25d10+125>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_anatomy        25d10+225>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           plain_shirt all_colors 1>
<eq           plain_pants all_colors 1>
<eq           random_shoes neutral_colors 1>
<eq           apron white_colors 1>
<eq           palette 0 0 1 SELFCONTAINED>
<eq           random_coin_purse 0 0 1>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<27>
# Alchemist 
<type         SHOPKEEPER 400>
<frequency    100>
<region       { MAGE 0 ALCHEMIST 0 } >
<regionlimit  { MAGE 1 ALCHEMIST 1 } >
<job          alchemist>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 1>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_ALCHEMIST>
<convfrag     BRITANNIA_SHOPKEEPER>
<convfrag     BRITANNIA_MERCHANT_GREETING>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+35>
<dexterity    1d15+35>
<intelligence 1d15+50>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+225>
<sk           skill_magic_defense  25d10+225>
<sk           skill_battle_defense 25d10+225>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_alchemy        25d10+525>
<sk           skill_taste          25d10+525>
<resistances  magic>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           plain_shirt all_colors 1>
<eq           plain_pants all_colors 1>
<eq           robe red_colors 1>
<eq           random_shoes neutral_colors 1>
<eq           random_coin_purse 0 0 1>
<eq             refresh_potion 0 0 1 SELLABLE>
<eq             agility_potion 0 0 1 SELLABLE>
<eq             blind_potion 0 0 1 SELLABLE>
<eq             heal_potion 0 0 1 SELLABLE>
<eq             strength_potion 0 0 1 SELLABLE>
<eq             poison_potion 0 0 1 SELLABLE>
<eq             sleep_potion 0 0 1 SELLABLE>
<eq             kaboom_potion 0 0 1 SELLABLE>
<eq             mortar_pestle 0 0 1 SELLABLE>
<eq             black_pearl_reagent 0 0 1 SELLABLE>
<eq             blood_moss_reagent 0 0 1 SELLABLE>
<eq             garlic_reagent 0 0 1 SELLABLE>
<eq             ginseng_reagent 0 0 1 SELLABLE>
<eq             mandrake_root 0 0 1 SELLABLE>
<eq             nightshade_reagent 0 0 1 SELLABLE>
<eq             sulfurous_ash_reagent 0 0 1 SELLABLE>
<eq             spider_silk_reagent 0 0 1 SELLABLE>
<eq             empty_vial 0 0 1 SELLABLE>
<eq             hair_dye 0 0 1 SELLABLE>
<eq             hair_dye 0 0 1 BUYABLE>
<eq             empty_vial 0 0 1 BUYABLE>
<eq             refresh_potion 0 0 1 BUYABLE>
<eq             agility_potion 0 0 1 BUYABLE>
<eq             blind_potion 0 0 1 BUYABLE>
<eq             heal_potion 0 0 1 BUYABLE>
<eq             strength_potion 0 0 1 BUYABLE>
<eq             poison_potion 0 0 1 BUYABLE>
<eq             sleep_potion 0 0 1 BUYABLE>
<eq             kaboom_potion 0 0 1 BUYABLE>
<eq             sulfurous_ash_reagent 0 0 1 BUYABLE>
<eq             mandrake_root 0 0 1 BUYABLE>
<eq             nightshade_reagent 0 0 1 BUYABLE>
<eq             garlic_reagent 0 0 1 BUYABLE>
<eq             ginseng_reagent 0 0 1 BUYABLE>
<eq             blood_moss_reagent 0 0 1 BUYABLE>
<eq             black_pearl_reagent 0 0 1 BUYABLE>
<eq             mortar_pestle 0 0 1 BUYABLE>
<resource     food         5  1    FOOD>
<resource     food         5  1    EGGS>
<resource     food         5  1    FRUIT>
<resource     food         5  1    FISH>
<resource     shelter      1  1    HOME>
<resource     shelter     16  0    HOUSES>
<resource     production   8  0    MEAT>
<resource     desire       1 -3    DANGER>
<resource     desire       1 -3    SPOOKINESS>
<resource     desire      10  2    GOLD>
<resource     desire      10  1    MAGIC>
<@@@ END @@@>
<28>
# Glassblower 
<type         SHOPKEEPER 400>
<frequency    100>
<region       GLASSBLOWER>
<regionlimit  { GLASSBLOWER 1 } >
<job          glassblower>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_GLASSBLOWER>
<convfrag     BRITANNIA_SHOPKEEPER>
<convfrag     BRITANNIA_MERCHANT_GREETING>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+50>
<dexterity    1d15+60>
<intelligence 1d15+50>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+325>
<sk           skill_magic_defense  25d10+325>
<sk           skill_battle_defense 25d10+325>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           plain_shirt all_colors 1>
<eq           plain_pants all_colors 1>
<eq           plain_shoes neutral_colors 1>
<eq           random_coin_purse 0 0 1>
<eq             empty_vial 0 0 1 SELLABLE>
<eq             empty_jar 0 0 1 SELLABLE>
<eq             glass_pitcher 0 0 1 SELLABLE>
<eq             empty_vial 0 0 1 BUYABLE>
<eq             empty_jar 0 0 1 BUYABLE>
<eq             glass_pitcher 0 0 1 BUYABLE>
<eq             glass_pitcher_2 0 0 1 BUYABLE>
<eq             glass_pitcher_3 0 0 1 BUYABLE>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<29>
# Bard 
<type         NORMAL 400>
<frequency    100>
<region       { TAVERN 0 CITY 0 BARDSMALL 0 BARDMEDIUM 0 BARDLARGE 0 BARD 0 } >
<regionlimit  { TAVERN 1 CITY 2 BARDSMALL 2 BARDMEDIUM 4 BARDLARGE 6 BARD 1 } >
<job          bard>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 11>
<objvar       int hirelingWages 2>
<script       human>
<script       pet>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_BARD>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+15>
<dexterity    1d15+25>
<intelligence 1d15+25>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+125>
<sk           skill_magic_defense  25d10+125>
<sk           skill_battle_defense 25d10+125>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_play           25d10+525>
<sk           skill_incite         25d10+525>
<sk           skill_entice         25d10+525>
<sk           skill_calm           25d10+525>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           plain_shirt all_colors 1>
<eq           plain_pants all_colors 1>
<eq           plain_shoes neutral_colors 1>
<eq           random_instrument 0 0 1 SELFCONTAINED>
<eq           random_coin_purse 0 0 1>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<30>
# Fisherman 
<type         SHOPKEEPER 400>
<frequency    100>
<region       { DOCKS 0 FISHING 0 FISHERMAN 0 FISHERMANSMALL 0 FISHERMANMEDIUM 0 FISHERMANLARGE 0 FISHER 0 } >
<regionlimit  { DOCKS 1 FISHING 1 FISHERMAN 1 FISHERMANSMALL 2 FISHERMANMEDIUM 4 FISHERMANLARGE 6 FISHER 1 } >
<job          fisher>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 10>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_SHOPKEEPER>
<convfrag     BRITANNIA_MERCHANT_GREETING>
<convfrag     BRITANNIA_FISHER>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+60>
<dexterity    1d15+60>
<intelligence 1d15+40>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+325>
<sk           skill_magic_defense  25d10+325>
<sk           skill_battle_defense 25d10+325>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_fishing        25d10+425>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           plain_shirt all_colors 1>
<eq           plain_pants all_colors 1>
<eq           plain_shoes neutral_colors 1>
<eq           random_coin_purse 0 0 1>
<eq             fish_steak 0 0 1 SELLABLE>
<eq             small_fish_1 0 0 1 SELLABLE>
<eq             small_fish_2 0 0 1 SELLABLE>
<eq             big_fish_1 0 0 1 SELLABLE>
<eq             big_fish_2 0 0 1 SELLABLE>
<eq             big_fish_3 0 0 1 SELLABLE>
<eq             big_fish_4 0 0 1 SELLABLE>
<eq             fishing_pole 0 0 1 SELLABLE>
<eq             small_fish_1 0 0 1 BUYABLE>
<eq             small_fish_2 0 0 1 BUYABLE>
<eq             big_fish_1 0 0 1 BUYABLE>
<eq             big_fish_2 0 0 1 BUYABLE>
<eq             big_fish_3 0 0 1 BUYABLE>
<eq             big_fish_4 0 0 1 BUYABLE>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<resource     desire     10  1    WATER>
<@@@ END @@@>
<31>
# Waiter 
<type         SHOPKEEPER 400>
<frequency    100>
<region       TAVERN>
<regionlimit  { TAVERN 1 } >
<job          waiter>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_WAITER>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+35>
<dexterity    1d15+35>
<intelligence 1d15+20>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+125>
<sk           skill_magic_defense  25d10+125>
<sk           skill_battle_defense 25d10+125>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           plain_shirt all_colors 1>
<eq           plain_pants all_colors 1>
<eq           plain_shoes neutral_colors 1>
<eq           apron white_colors 1>
<eq           random_coin_purse 0 0 1>
<eq             ale_bottle 0 0 1 SELLABLE>
<eq             wine_bottle 0 0 1 SELLABLE>
<eq             liquor_bottle 0 0 1 SELLABLE>
<eq             cider_jug 0 0 1 SELLABLE>
<eq             ale_pitcher 0 0 1 SELLABLE>
<eq             cider_pitcher 0 0 1 SELLABLE>
<eq             glass_pitcher 0 0 1 SELLABLE>
<eq             liquor_pitcher 0 0 1 SELLABLE>
<eq             milk_pitcher 0 0 1 SELLABLE>
<eq             wine_pitcher 0 0 1 SELLABLE>
<eq             water_pitcher 0 0 1 SELLABLE>
<eq             loaf_bread_1 0 0 1 SELLABLE>
<eq             cheese_1 0 0 1 SELLABLE>
<eq             cooked_bird 0 0 1 SELLABLE>
<eq             cooked_mutton 0 0 1 SELLABLE>
<eq             cooked_chicken 0 0 1 SELLABLE>
<eq             bowl_carrots_1 0 0 1 SELLABLE>
<eq             bowl_corn_1 0 0 1 SELLABLE>
<eq             bowl_lettuce_1 0 0 1 SELLABLE>
<eq             bowl_peas_1 0 0 1 SELLABLE>
<eq             bowl_carrots_2 0 0 1 SELLABLE>
<eq             bowl_corn_2 0 0 1 SELLABLE>
<eq             bowl_lettuce 0 0 1 SELLABLE>
<eq             bowl_peas_2 0 0 1 SELLABLE>
<eq             bowl_potatoes  0 0 1 SELLABLE>
<eq             bowl_stew_1 0 0 1 SELLABLE>
<eq             bowl_tomato_soup 0 0 1 SELLABLE>
<eq             baked_pie 0 0 1 SELLABLE>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<32>
# Animal Trainer 
<type         SHOPKEEPER 400>
<frequency    100>
<region       { STABLES 0 ANIMALTRAINER 0 } >
<regionlimit  { STABLES 1 ANIMALTRAINER 1 } >
<job          animal trainer>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 4>
<script       human>
<script       stables>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_SHOPKEEPER>
<convfrag     BRITANNIA_MERCHANT_GREETING>
<convfrag     BRITANNIA_ANIMALTRAINER>
<convfrag     BRITANNIA_HORSE_TRADER>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     9000>
<dexterity    9000>
<intelligence 9000>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           925>
<sk           skill_magic_defense   925>
<sk           skill_battle_defense  925>
<sk           skill_weapon_slashing 925>
<sk           skill_weapon_bashing  925>
<sk           skill_weapon_piercing 925>
<sk           skill_weapon_hand     925>
<sk           skill_vet             925>
<sk           skill_animal_lore     925>
<sk           skill_tame_animal     925>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           plain_shirt all_colors 1>
<eq           plain_pants all_colors 1>
<eq           random_boots 0 0 1>
<eq           quarter_staff 0 0 1>
<eq           random_coin_purse 0 0 1>
<eq           pet_cat 0 0 1 SELLABLE pet>
<eq           pet_dog 0 0 1 SELLABLE pet>
<eq           pet_horse 0 0 1 SELLABLE pet>
<eq           pet_packhorse 0 0 1 SELLABLE pet>
<eq           pet_packllama 0 0 1 SELLABLE pet>
<eq           pet_raven 0 0 1 SELLABLE pet>
<eq           pet_rat 0 0 1 SELLABLE pet>
<eq           pet_rabbit 0 0 1 SELLABLE pet>
<eq           pet_timber_wolf 0 0 1 SELLABLE pet>
<eq           pet_black_bear 0 0 1 SELLABLE pet>
<eq           pet_brown_bear 0 0 1 SELLABLE pet>
<eq           pet_eagle 0 0 1 SELLABLE pet>
<eq           pet_panther 0 0 1 SELLABLE pet>
<eq           bundle_of_grain 0 0 1 BUYABLE>
<eq           apple 0 0 1 BUYABLE>
<eq           carrot_obj 0 0 1 BUYABLE>
<eq           head_of_lettuce 0 0 1 BUYABLE>
<eq           raw_ribs 0 0 1 BUYABLE>
<eq           raw_bird 0 0 1 BUYABLE>
<eq           beef_carcass 0 0 1 BUYABLE>
<eq           beef_carcass_2 0 0 1 BUYABLE>
<eq           other_carcass 0 0 1 BUYABLE>
<eq           other_carcass_2 0 0 1 BUYABLE>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<33>
# Rancher 
<type         SHOPKEEPER 400>
<frequency    100>
<region       FARM>
<region       { FARM 0 CITY 0 } >
<regionlimit  { FARM 1 CITY 1 } >
<job          rancher>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_RANCHER>
<convfrag     BRITANNIA_HORSE_TRADER>
<convfrag     BRITANNIA_SHOPKEEPER>
<convfrag     BRITANNIA_MERCHANT_GREETING>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+35>
<dexterity    1d15+33>
<intelligence 1d15+27>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           25d10+125>
<sk           skill_magic_defense   25d10+125>
<sk           skill_battle_defense  25d10+125>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_vet             25d10+525>
<sk           skill_animal_lore     25d10+525>
<sk           skill_tame_animal     25d10+325>
<sk           skill_herding         25d10+325>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           plain_shirt all_colors 1>
<eq           plain_pants all_colors 1>
<eq           black_boots neutral_colors 1>
<eq           random_coin_purse 0 0 1>
<eq           { pet_horse_1 1 pet_horse_2 1 pet_horse_3 1 } 0 0 1 SELLABLE pet>
<eq           pet_packhorse 0 0 1 SELLABLE pet>
<eq           bundle_of_grain 0 0 1 BUYABLE>
<eq           apple 0 0 1 BUYABLE>
<eq           carrot_obj 0 0 1 BUYABLE>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<34>
# Cobbler 
<type         SHOPKEEPER 400>
<frequency    100>
<region       { COBBLER 0 PROVISIONER 0 } >
<regionlimit  { COBBLER 1 PROVISIONER 1 } >
<job          cobbler>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_SHOPKEEPER>
<convfrag     BRITANNIA_MERCHANT_GREETING>
<convfrag     BRITANNIA_COBBLER>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+35>
<dexterity    1d15+35>
<intelligence 1d15+25>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+125>
<sk           skill_magic_defense  25d10+125>
<sk           skill_battle_defense 25d10+125>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           plain_shirt all_colors 1>
<eq           plain_pants all_colors 1>
<eq           random_footwear 0 0 1>
<eq           random_coin_purse 0 0 1>
<eq             thigh_boots neutral_colors 1 SELLABLE>
<eq             plain_shoes neutral_colors 1 SELLABLE>
<eq             black_boots neutral_colors 1 SELLABLE>
<eq             sandals 0 0 1 SELLABLE>
<eq             cut_hides 0 0 1 BUYABLE>
<eq             cut_hides_2 0 0 1 BUYABLE>
<eq             cut_hides_3 0 0 1 BUYABLE>
<eq             cut_hides_4 0 0 1 BUYABLE>
<eq             pile_hides 0 0 1 BUYABLE>
<eq             pile_hides_2 0 0 1 BUYABLE>
<eq             llama_hides 0 0 1 BUYABLE>
<eq             llama_hides_2 0 0 1 BUYABLE>
<eq             thigh_boots 0 0 1 BUYABLE>
<eq             thigh_boots_2 0 0 1 BUYABLE>
<eq             plain_shoes 0 0 1 BUYABLE>
<eq             plain_shoes_2 0 0 1 BUYABLE>
<eq             black_boots 0 0 1 BUYABLE>
<eq             black_boots_2 0 0 1 BUYABLE>
<eq             sandals 0 0 1 BUYABLE>
<eq             sandals_2 0 0 1 BUYABLE>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<resource     desire     10  1    LEATHER>
<@@@ END @@@>
<35>
# Beggar  
<type         NORMAL 400>
<frequency    100>
<region       { CITY 0 BEGGARSMALL 0 BEGGARMEDIUM 0 BEGGARLARGE 0 BEGGAR 0 } >
<regionlimit  { CITY 2 BEGGARSMALL 2 BEGGARMEDIUM 4 BEGGARLARGE 6 BEGGAR 1 } >
<job          beggar>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 3>
<objvar       int hirelingWages 1>
<script       human>
<script       pet>
<script       beggar>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_BEGGAR>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     50>
<notoriety    !1d10+5>
<strength     1d15+25>
<dexterity    1d15+20>
<intelligence 1d15+35>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+125>
<sk           skill_magic_defense  25d10+125>
<sk           skill_battle_defense 25d10+125>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_begging        25d10+525>
<sk           skill_peek           25d10+225>
<sk           skill_steal          25d10+125>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           poor_shirt all_colors 1>
<eq           poor_pants all_colors 1>
<eq           { sandals 1 0 1 } 0 0 1>
<eq           poor_backpack 0 0 1>
<resource     food         5  1    FOOD>
<resource     food         5  1    EGGS>
<resource     food         5  1    FRUIT>
<resource     food         5  1    FISH>
<resource     shelter      1  1    GUARDPOST>
<resource     shelter     16  0    HOUSES>
<resource     production   8  0    MEAT>
<resource     desire       1 -3    DANGER>
<resource     desire       1 -3    SPOOKINESS>
<resource     desire       1 -2    GUARD>
<resource     desire       1  3    GOLD>
<@@@ END @@@>
<36>
# Scribe 
<type         SHOPKEEPER 400>
<frequency    100>
<region       { ABBEY 0 LIBRARY 0 SCRIBESMALL 0 SCRIBEMEDIUM 0 SCRIBELARGE 0 SCRIBE 0 } >
<regionlimit  { ABBEY 4 LIBRARY 2 SCRIBESMALL 2 SCRIBEMEDIUM 4 SCRIBELARGE 6 SCRIBE 1 } >
<job          scribe>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_SCRIBE>
<convfrag     BRITANNIA_SHOPKEEPER>
<convfrag     BRITANNIA_MERCHANT_GREETING>
<convfrag     BRITANNIA_SCHOLAR>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+15>
<dexterity    1d15+25>
<intelligence 1d15+30>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+125>
<sk           skill_magic_defense  25d10+125>
<sk           skill_battle_defense 25d10+125>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_evaluate       25d10+425>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           robe neutral_colors 1>
<eq           sandals 0 0 1>
<eq           poor_backpack 0 0 1>
<eq             scroll_blank 0 0 1 SELLABLE>
<eq             pen_and_ink 0 0 1 SELLABLE>
<eq             sm_blank_book 0 0 1 SELLABLE>
<eq             lg_blank_book 0 0 1 SELLABLE>
<eq             scroll_blank 0 0 1 BUYABLE>
<eq             pen_and_ink 0 0 1 BUYABLE>
<eq             sm_blank_book 0 0 1 BUYABLE>
<eq             lg_blank_book 0 0 1 BUYABLE>
<eq             sm_pub_book 0 0 1 BUYABLE>
<eq             lg_pub_book 0 0 1 BUYABLE>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<37>
# Miner
<type         NORMAL 400>
<frequency    100>
<region       { CITY 0 MINERSGUILD 0 } >
<regionlimit  { CITY 1 MINERSGUILD 1 } >
<job          miner>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 6>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_MINER>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+65>
<dexterity    1d15+50>
<intelligence 1d15+40>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_mining          25d10+425>
<sk           skill_melee           25d10+325>
<sk           skill_magic_defense   25d10+325>
<sk           skill_battle_defense  25d10+325>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           plain_shirt grey_colors 1>
<eq           plain_pants blue_colors 1>
<eq           random_boots brown_colors 1>
<eq           pickaxe 0 0 1>
<eq           meager_backpack 0 0 1>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<resource     desire     10  1    STONE>
<@@@ END @@@>
<38>
# Mayor 
<type         NORMAL 400>
<frequency    100>
<region       TOWNHALL>
<regionlimit  { TOWNHALL 1 } >
<job          mayor>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_MAYOR>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+55>
<strength     1d15+35>
<dexterity    1d15+35>
<intelligence 1d15+50>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+225>
<sk           skill_magic_defense  25d10+225>
<sk           skill_battle_defense 25d10+225>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           fancy_shirt all_colors 1>
<eq           fancy_pants all_colors 1>
<eq           random_boots 0 0 1>
<eq           sash red_colors 1>
<eq           rich_backpack 0 0 1>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<resource     desire     50  1    NOTORIETY>
<@@@ END @@@>
<39>
# Gambler 
<type         NORMAL 400>
<frequency    100>
<region       { CASINO 0 } >
<regionlimit  { CASINO 5 } >
<job          gambler>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int hirelingWages 4>
<script       human>
<script       pet>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_GAMBLER>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+30>
<dexterity    1d15+50>
<intelligence 1d15+55>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+225>
<sk           skill_magic_defense  25d10+225>
<sk           skill_battle_defense 25d10+225>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_appraise       25d10+325>
<sk           skill_peek           25d10+525>
<sk           skill_steal          25d10+325>
<sk           skill_evaluate       25d10+425>
<resistances  piercing>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           plain_shirt all_colors 1>
<eq           plain_pants all_colors 1>
<eq           random_footwear 0 0 1>
<eq           random_dagger 0 0 1>
<eq           random_coin_purse 0 0 1>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<resource     desire      1  1    GAMBLING>
<@@@ END @@@>
<40>
#  Brigand 
<type         NORMAL 400>
<frequency    100>
<region       { BRIGANDSMALL 0 BRIGANDMEDIUM 0 BRIGANDLARGE 0 BRIGAND 0 } >
<regionlimit  { BRIGANDSMALL 2 BRIGANDMEDIUM 4 BRIGANDLARGE 6 BRIGAND 1 } >
<job          brigand>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int hirelingWages 6>
<script       human>
<script       pet>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_BRIGAND>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    2d15-77>
<strength     1d15+65>
<dexterity    1d15+80>
<intelligence 1d15+60>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           25d10+525>
<sk           skill_magic_defense   25d10+525>
<sk           skill_battle_defense  25d10+525>
<sk           skill_weapon_slashing 25d10+325>
<sk           skill_weapon_bashing  25d10+225>
<sk           skill_weapon_piercing 25d10+425>
<sk           skill_weapon_hand     25d10+325>
<sk           skill_poisoning       25d10+325>
<sk           skill_locksmith       25d10+325>
<sk           skill_hide            25d10+425>
<sk           skill_peek            25d10+325>
<sk           skill_steal           25d10+425>
<sk           skill_remove_trap     25d10+325>
<sk           skill_camping         25d10+425>
<resistances  piercing>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           poor_shirt all_colors 1>
<eq           poor_pants all_colors 1>
<eq           random_footwear 0 0 1>
<eq           random_weapon 0 0 1>
<eq           random_coin_purse 0 0 1>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<41>
# Architecht 
<type         SHOPKEEPER 400>
<frequency    200>
<region       { ARCHITECT 0 TOWNHALL 0 WOODWORKER 0 CARPENTER 0 } >
<regionlimit  { ARCHITECT 1 TOWNHALL 1 WOODWORKER 1 CARPENTER 1 } >
<job          architect>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_SHOPKEEPER>
<convfrag     BRITANNIA_MERCHANT_GREETING>
<convfrag     BRITANNIA_ARCHITECT>
<convfrag     BRITANNIA_REALTOR>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+20>
<dexterity    1d15+35>
<intelligence 1d15+35>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+125>
<sk           skill_magic_defense  25d10+125>
<sk           skill_battle_defense 25d10+125>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           plain_shirt all_colors 1>
<eq           plain_pants all_colors 1>
<eq           plain_shoes neutral_colors 1>
<eq           random_coin_purse 0 0 1>
<eq             house_deed_template_0 0 0 1 SELLABLE>
<eq             house_deed_template_1 0 0 1 SELLABLE>
<eq             house_deed_template_2 0 0 1 SELLABLE>
<eq             house_deed_template_3 0 0 1 SELLABLE>
<eq             house_deed_template_4 0 0 1 SELLABLE>
<eq             house_deed_template_5 0 0 1 SELLABLE>
<eq             house_deed_template_6 0 0 1 SELLABLE>
<eq             house_deed_template_7 0 0 1 SELLABLE>
<eq             house_deed_template_8 0 0 1 SELLABLE>
<eq             house_deed_template_9 0 0 1 SELLABLE>
<eq             house_deed_template_10 0 0 1 SELLABLE>
<eq             house_deed_template_11 0 0 1 SELLABLE>
<eq             house_deed_template_12 0 0 1 SELLABLE>
<eq             house_deed_template_13 0 0 1 SELLABLE>
<eq             house_deed_smithy 0 0 1 SELLABLE>
<eq             house_deed_large_smithy 0 0 1 SELLABLE>
<eq             house_deed_bakery 0 0 1 SELLABLE>
<eq             house_deed_tailor 0 0 1 SELLABLE>
<eq             house_deed_weap_train 0 0 1 SELLABLE>
<eq             house_deed_thief_train 0 0 1 SELLABLE>
<eq             house_deed_template_0 0 0 1 BUYABLE>
<eq             house_deed_template_1 0 0 1 BUYABLE>
<eq             house_deed_template_2 0 0 1 BUYABLE>
<eq             house_deed_template_3 0 0 1 BUYABLE>
<eq             house_deed_template_4 0 0 1 BUYABLE>
<eq             house_deed_template_5 0 0 1 BUYABLE>
<eq             house_deed_template_6 0 0 1 BUYABLE>
<eq             house_deed_template_7 0 0 1 BUYABLE>
<eq             house_deed_template_8 0 0 1 BUYABLE>
<eq             house_deed_template_9 0 0 1 BUYABLE>
<eq             house_deed_template_10 0 0 1 BUYABLE>
<eq             house_deed_template_11 0 0 1 BUYABLE>
<eq             house_deed_template_12 0 0 1 BUYABLE>
<eq             house_deed_template_13 0 0 1 BUYABLE>
<eq             house_deed_smithy 0 0 1 BUYABLE>
<eq             house_deed_large_smithy 0 0 1 BUYABLE>
<eq             house_deed_bakery 0 0 1 BUYABLE>
<eq             house_deed_tailor 0 0 1 BUYABLE>
<eq             house_deed_weap_train 0 0 1 BUYABLE>
<eq             house_deed_thief_train 0 0 1 BUYABLE>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<42>
#  Mapmaker 
<type         SHOPKEEPER 400>
<frequency    100>
<region       { MAPMAKER 0 SHIPWRIGHT 0 } >
<regionlimit  { MAPMAKER 1 SHIPWRIGHT 1 } >
<job          mapmaker>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 10>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_MAPMAKER>
<convfrag     BRITANNIA_SHOPKEEPER>
<convfrag     BRITANNIA_MERCHANT_GREETING>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+20>
<dexterity    1d15+35>
<intelligence 1d15+35>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+125>
<sk           skill_magic_defense  25d10+125>
<sk           skill_battle_defense 25d10+125>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_mapmaking      25d10+625>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           plain_shirt all_colors 1>
<eq           plain_pants all_colors 1>
<eq           plain_shoes neutral_colors 1>
<eq           random_coin_purse 0 0 1>
<eq             open_map 0 0 1 SELLABLE>
<eq             map_stock_1 0 0 1 SELLABLE>
<eq             map_stock_2 0 0 1 SELLABLE>
<eq             map_stock_3 0 0 1 SELLABLE>
<eq             map_stock_4 0 0 1 SELLABLE>
<eq             map_stock_5 0 0 1 SELLABLE>
<eq             map_stock_6 0 0 1 SELLABLE>
<eq             map_stock_7 0 0 1 SELLABLE>
<eq             map_stock_8 0 0 1 SELLABLE>
<eq             map_stock_9 0 0 1 SELLABLE>
<eq             map_stock_10 0 0 1 SELLABLE>
<eq             map_stock_11 0 0 1 SELLABLE>
<eq             map_stock_12 0 0 1 SELLABLE>
<eq             map_stock_13 0 0 1 SELLABLE>
<eq             map_stock_14 0 0 1 SELLABLE>
<eq             map_stock_15 0 0 1 SELLABLE>
<eq             map_stock_16 0 0 1 SELLABLE>
<eq             map_stock_17 0 0 1 SELLABLE>
<eq             map_stock_18 0 0 1 SELLABLE>
<eq             map_stock_19 0 0 1 SELLABLE>
<eq             map_stock_20 0 0 1 SELLABLE>
<eq             map_stock_21 0 0 1 SELLABLE>
<eq             map_stock_22 0 0 1 SELLABLE>
<eq             map_stock_23 0 0 1 SELLABLE>
<eq             map_stock_24 0 0 1 SELLABLE>
<eq             map_stock_25 0 0 1 SELLABLE>
<eq             map_stock_26 0 0 1 SELLABLE>
<eq             map_stock_27 0 0 1 SELLABLE>
<eq             map_stock_28 0 0 1 SELLABLE>
<eq             open_map 0 0 1 BUYABLE>
<eq             blank_scroll 0 0 1 BUYABLE>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<43>
# Gypsy   
<type         NORMAL 400>
<frequency    100>
<region       { CITY 0 GYPSYSMALL 0 GYPSYMEDIUM 0 GYPSYLARGE 0 GYPSY 0 } >
<regionlimit  { CITY 1 GYPSYSMALL 2 GYPSYMEDIUM 4 GYPSYLARGE 6 GYPSY 1 } >
<job          gypsy>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_GYPSY>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+40>
<dexterity    1d15+50>
<intelligence 1d15+60>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+325>
<sk           skill_magic_defense  25d10+325>
<sk           skill_battle_defense 25d10+325>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_appraise       25d10+425>
<sk           skill_hide           25d10+425>
<sk           skill_steal          25d10+425>
<sk           skill_peek           25d10+425>
<sk           skill_locksmith      25d10+425>
<sk           skill_camping        25d10+425>
<sk           skill_begging        25d10+425>
<resistances  magic>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           poor_shirt all_colors 1>
<eq           poor_pants all_colors 1>
<eq           bandana blue_colors 1>
<eq           random_footwear 0 0 1>
<eq           random_coin_purse 0 0 1>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<44>
#  Herbalist 
<type         SHOPKEEPER 400>
<frequency    100>
<region       { HERBALIST 0 MAGIC 0 MAGE 0 } >
<regionlimit  { HERBALIST 1 MAGIC 1 MAGE 1 } >
<job          herbalist>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_HERBALIST>
<convfrag     BRITANNIA_SHOPKEEPER>
<convfrag     BRITANNIA_MERCHANT_GREETING>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+20>
<dexterity    1d15+35>
<intelligence 1d15+35>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+125>
<sk           skill_magic_defense  25d10+125>
<sk           skill_battle_defense 25d10+125>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_taste          25d10+325>
<sk           skill_alchemy        25d10+325>
<sk           skill_cooking        25d10+325>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           plain_shirt all_colors 1>
<eq           plain_pants all_colors 1>
<eq           sandals 0 0 1>
<eq           random_coin_purse 0 0 1>
<eq             ginseng_reagent 0 0 1 SELLABLE>
<eq             garlic_reagent 0 0 1 SELLABLE>
<eq             mandrake_root 0 0 1 SELLABLE>
<eq             nightshade_reagent 0 0 1 SELLABLE>
<eq             blood_moss_reagent 0 0 1 SELLABLE>
<eq             mortar_pestle 0 0 1 SELLABLE>
<eq             empty_vial 0 0 1 SELLABLE>
<eq             empty_vial 0 0 1 BUYABLE>
<eq             ginseng_reagent 0 0 1 BUYABLE>
<eq             garlic_reagent 0 0 1 BUYABLE>
<eq             mandrake_root 0 0 1 BUYABLE>
<eq             nightshade_reagent 0 0 1 BUYABLE>
<eq             blood_moss_reagent 0 0 1 BUYABLE>
<eq             mortar_pestle 0 0 1 BUYABLE>
<resource     food         5  1    FOOD>
<resource     food         5  1    EGGS>
<resource     food         5  1    FRUIT>
<resource     food         5  1    FISH>
<resource     shelter      1  1    HOME>
<resource     shelter     16  0    HOUSES>
<resource     production   8  0    MEAT>
<resource     desire       1 -3    DANGER>
<resource     desire       1 -3    SPOOKINESS>
<resource     desire      10  2    GOLD>
<resource     desire       1  1    HERBS>
<@@@ END @@@>
<45>
# Judge 
<type         NORMAL 400>
<frequency    100>
<region       COURT>
<regionlimit  { COURT 1 } >
<job          judge>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_JUDGE>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+35>
<strength     1d15+65>
<dexterity    1d15+60>
<intelligence 1d15+75>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           25d10+525>
<sk           skill_magic_defense   25d10+525>
<sk           skill_battle_defense  25d10+525>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_evaluate        25d10+625>
<sk           skill_forensics       25d10+425>
<eq           hair grey_colors 1>
<eq           facial_hair match_hair 1>
<eq           robe black_colors 1>
<eq           plain_shoes neutral_colors 1>
<eq           random_coin_purse 0 0 1>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<46>
# Cook 
<type         SHOPKEEPER 400>
<frequency    100>
<region       TAVERN>
<regionlimit  { TAVERN 1 } >
<job          cook>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_COOK>
<convfrag     BRITANNIA_SHOPKEEPER>
<convfrag     BRITANNIA_MERCHANT_GREETING>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+40>
<dexterity    1d15+55>
<intelligence 1d15+55>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+325>
<sk           skill_magic_defense  25d10+325>
<sk           skill_battle_defense 25d10+325>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_taste          25d10+325>
<sk           skill_cooking        25d10+525>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           plain_shirt all_colors 1>
<eq           plain_pants all_colors 1>
<eq           apron white_colors 1>
<eq           random_shoes neutral_colors 1>
<eq           random_coin_purse 0 0 1>
<eq             loaf_bread_2 0 0 1 SELLABLE>
<eq             loaf_bread_1 0 0 1 SELLABLE>
<eq             baked_pie 0 0 1 SELLABLE>
<eq             cake 0 0 1 SELLABLE>
<eq             muffin 0 0 1 SELLABLE>
<eq             cheese 0 0 1 SELLABLE>
<eq             cooked_bird 0 0 1 SELLABLE>
<eq             cooked_mutton 0 0 1 SELLABLE>
<eq             cooked_chick_leg 0 0 1 SELLABLE>
<eq             bowl_carrots_1 0 0 1 SELLABLE>
<eq             bowl_corn_1 0 0 1 SELLABLE>
<eq             bowl_lettuce_1 0 0 1 SELLABLE>
<eq             bowl_peas_1 0 0 1 SELLABLE>
<eq             bowl_carrots_2 0 0 1 SELLABLE>
<eq             bowl_corn_2 0 0 1 SELLABLE>
<eq             bowl_lettuce_2 0 0 1 SELLABLE>
<eq             bowl_peas_2 0 0 1 SELLABLE>
<eq             bowl_potatoes  0 0 1 SELLABLE>
<eq             bowl_stew 0 0 1 SELLABLE>
<eq             bowl_tomato_soup 0 0 1 SELLABLE>
<eq             roast_pig 0 0 1 SELLABLE>
<eq             sack_flour 0 0 1 SELLABLE>
<eq             honey_obj 0 0 1 SELLABLE>
<eq             kindling 0 0 1 BUYABLE>
<eq             sack_flour 0 0 1 BUYABLE>
<eq             honey_obj 0 0 1 BUYABLE>
<eq             fish_steak 0 0 1 BUYABLE>
<eq             small_fish_1 0 0 1 BUYABLE>
<eq             small_fish_2 0 0 1 BUYABLE>
<eq             big_fish_1 0 0 1 BUYABLE>
<eq             big_fish_2 0 0 1 BUYABLE>
<eq             big_fish_3 0 0 1 BUYABLE>
<eq             big_fish_4 0 0 1 BUYABLE>
<eq             raw_ribs 0 0 1 BUYABLE>
<eq             raw_bird 0 0 1 BUYABLE>
<eq             loaf_bread_1 0 0 1 BUYABLE>
<eq             cheese 0 0 1 BUYABLE>
<eq             head_of_cabbage 0 0 1 BUYABLE>
<eq             cantelope 0 0 1 BUYABLE>
<eq             carrot_obj 0 0 1 BUYABLE>
<eq             melon 0 0 1 BUYABLE>
<eq             squash 0 0 1 BUYABLE>
<eq             head_of_lettuce 0 0 1 BUYABLE>
<eq             onion_obj 0 0 1 BUYABLE>
<eq             pumpkin 0 0 1 BUYABLE>
<eq             gourd_1 0 0 1 BUYABLE>
<eq             gourd_2 0 0 1 BUYABLE>
<eq             turnip_1 0 0 1 BUYABLE>
<eq             turnip_2 0 0 1 BUYABLE>
<eq             watermelon 0 0 1 BUYABLE>
<eq             corn 0 0 1 BUYABLE>
<eq             fresh_eggs 0 0 1 BUYABLE>
<eq             milk_pitcher 0 0 1 BUYABLE>
<eq             peach 0 0 1 BUYABLE>
<eq             pear 0 0 1 BUYABLE>
<eq             lemon 0 0 1 BUYABLE>
<eq             lime 0 0 1 BUYABLE>
<eq             grapes 0 0 1 BUYABLE>
<eq             apple 0 0 1 BUYABLE>
<eq             peach 0 0 1 BUYABLE>
<eq             pear 0 0 1 BUYABLE>
<eq             grapes 0 0 1 BUYABLE>
<eq             apple 0 0 1 BUYABLE>
<eq             banana 0 0 1 BUYABLE>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<47>
# Monk 
<type         NORMAL 400>
<frequency    75>
<region       { TEMPLE 0 ABBEY 0 LIBRARY 0 } >
<regionlimit  { TEMPLE 2 ABBEY 3 LIBRARY 1 } >
<job          monk>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_SCHOLAR>
<convfrag     BRITANNIA_MONK>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+20>
<dexterity    1d15+35>
<intelligence 1d15+40>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+125>
<sk           skill_magic_defense  25d10+125>
<sk           skill_battle_defense 25d10+125>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_evaluate       25d10+525>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           robe neutral_colors 1>
<eq           sandals 0 0 1>
<eq           poor_backpack 0 0 1>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<48>
# Miller 
<type         SHOPKEEPER 400>
<frequency    100>
<region       MILL>
<regionlimit  { MILL 2 } >
<job          miller>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_MILLER>
<convfrag     BRITANNIA_SHOPKEEPER>
<convfrag     BRITANNIA_MERCHANT_GREETING>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+40>
<dexterity    1d15+35>
<intelligence 1d15+25>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+125>
<sk           skill_magic_defense  25d10+125>
<sk           skill_battle_defense 25d10+125>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           plain_shirt all_colors 1>
<eq           plain_pants all_colors 1>
<eq           plain_shoes neutral_colors 1>
<eq           random_coin_purse 0 0 1>
<eq           flour_sack 0 0 1 SELLABLE>
<eq           bundle_of_grain 0 0 1 SELLABLE>
<eq           flour_sack 0 0 1 BUYABLE>
<eq           bundle_of_grain 0 0 1 BUYABLE>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<49>
# Minter 
<type         NORMAL 400>
<frequency    100>
<region       BANK>
<regionlimit  { BANK 1 } >
<job          minter>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<script       banker>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_MINTER>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+70>
<dexterity    1d15+65>
<intelligence 1d15+65>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+425>
<sk           skill_magic_defense  25d10+425>
<sk           skill_battle_defense 25d10+425>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           plain_shirt all_colors 1>
<eq           plain_pants all_colors 1>
<eq           plain_shoes neutral_colors 1>
<eq           random_coin_purse 0 0 1>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<50>
# Farmer 
<type         SHOPKEEPER 400>
<frequency    100>
<region       FARM>
<regionlimit  { FARM 1 } >
<job          farmer>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_SHOPKEEPER>
<convfrag     BRITANNIA_MERCHANT_GREETING>
<convfrag     BRITANNIA_FARMER>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     10>
<dexterity    10>
<intelligence 10>
<hp           STR>
<mana         INT>
<stamina      30>
<sk           skill_melee           10>
<sk           skill_magic_defense   300>
<sk           skill_battle_defense  300>
<sk           skill_weapon_slashing 10>
<sk           skill_weapon_bashing  10>
<sk           skill_weapon_piercing 10>
<sk           skill_weapon_hand     10>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           poor_shirt all_colors 1>
<eq           poor_pants all_colors 1>
<eq           bumpkin_straw_hat neutral_colors 1>
<eq           random_boots 0 0 1>
<eq             head_of_cabbage 0 0 1 SELLABLE>
<eq             cantelope 0 0 1 SELLABLE>
<eq             carrot_obj 0 0 1 SELLABLE>
<eq             melon 0 0 1 SELLABLE>
<eq             squash 0 0 1 SELLABLE>
<eq             head_of_lettuce 0 0 1 SELLABLE>
<eq             onion_obj 0 0 1 SELLABLE>
<eq             pumpkin 0 0 1 SELLABLE>
<eq             gourd_1 0 0 1 SELLABLE>
<eq             gourd_2 0 0 1 SELLABLE>
<eq             turnip_1 0 0 1 SELLABLE>
<eq             watermelon 0 0 1 SELLABLE>
<eq             corn 0 0 1 SELLABLE>
<eq             fresh_eggs 0 0 1 SELLABLE>
<eq             milk_pitcher 0 0 1 SELLABLE>
<eq             peach 0 0 1 SELLABLE>
<eq             pear 0 0 1 SELLABLE>
<eq             lemon 0 0 1 SELLABLE>
<eq             lime 0 0 1 SELLABLE>
<eq             grapes 0 0 1 SELLABLE>
<eq             apple 0 0 1 SELLABLE>
<eq             bundle_of_grain 0 0 1 SELLABLE>
<eq             kindling 0 0 1 BUYABLE>
<eq             flour_sack 0 0 1 BUYABLE>
<eq             bundle_of_grain 0 0 1 BUYABLE>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<51>
# Veterinarian 
<type         SHOPKEEPER 400>
<frequency    100>
<region       VET>
<regionlimit  { VET 1 } >
<job          vet>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_VET>
<convfrag     BRITANNIA_HORSE_TRADER>
<convfrag     BRITANNIA_SHOPKEEPER>
<convfrag     BRITANNIA_MERCHANT_GREETING>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+55>
<dexterity    1d15+55>
<intelligence 1d15+55>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+325>
<sk           skill_magic_defense  25d10+325>
<sk           skill_battle_defense 25d10+325>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_animal_lore    25d10+525>
<sk           skill_vet            25d10+525>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           plain_shirt all_colors 1>
<eq           plain_pants all_colors 1>
<eq           random_boots 0 0 1>
<eq           random_coin_purse 0 0 1>
<eq             bandage 0 0 1 SELLABLE>
<eq             { pet_horse_1 1 pet_horse_2 1 pet_horse_3 1 } 0 0 1 SELLABLE pet>
<eq             pet_packhorse 0 0 1 SELLABLE pet>
<eq             pet_packllama 0 0 1 SELLABLE pet>
<eq             pet_dog 0 0 1 SELLABLE pet>
<eq             pet_cat 0 0 1 SELLABLE pet>
<eq             folded_cloth_1 0 0 1 BUYABLE>
<eq             folded_cloth_2 0 0 1 BUYABLE>
<eq             folded_cloth_3 0 0 1 BUYABLE>
<eq             folded_cloth_4 0 0 1 BUYABLE>
<eq             bandage 0 0 1 BUYABLE>
<eq             bandage_2 0 0 1 BUYABLE>
<eq             bundle_of_grain 0 0 1 BUYABLE>
<eq             apple 0 0 1 BUYABLE>
<eq             carrot_obj 0 0 1 BUYABLE>
<eq             head_of_lettuce 0 0 1 BUYABLE>
<eq             raw_ribs 0 0 1 BUYABLE>
<eq             raw_bird 0 0 1 BUYABLE>
<eq             beef_carcass 0 0 1 BUYABLE>
<eq             beef_carcass_2 0 0 1 BUYABLE>
<eq             other_carcass 0 0 1 BUYABLE>
<eq             other_carcass_2 0 0 1 BUYABLE>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<52>
# Bard GuildMaster 
<type         NORMAL 400>
<frequency    100>
<region       BARDGUILD>
<regionlimit  { BARDGUILD 1 } >
<job          bardic guildmaster>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 11>
<script       human>
<script       gm>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_BARD>
<convfrag     BRITANNIA_GUILDMASTER>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !10d5+25>
<strength     1d15+85>
<dexterity    1d15+70>
<intelligence 1d15+60>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+625>
<sk           skill_magic_defense  25d10+625>
<sk           skill_battle_defense 25d10+625>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_play           25d10+525>
<sk           skill_incite         25d10+525>
<sk           skill_entice         25d10+525>
<sk           skill_calm           25d10+525>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           plain_shirt all_colors 1>
<eq           plain_pants all_colors 1>
<eq           plain_shoes neutral_colors 1>
<eq           random_instrument 0 0 1 SELFCONTAINED>
<eq           random_coin_purse 0 0 1>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<53>
# Blacksmith 
<type         SHOPKEEPER 400>
<frequency    100>
<region       BLACKSMITH>
<regionlimit  { BLACKSMITH 1 } >
<job          blacksmith>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_BLACKSMITH>
<convfrag     BRITANNIA_WEAPONSMITH>
<convfrag     BRITANNIA_ARMOURER>
<convfrag     BRITANNIA_SHOPKEEPER>
<convfrag     BRITANNIA_MERCHANT_GREETING>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+85>
<dexterity    1d15+65>
<intelligence 1d15+60>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           25d10+525>
<sk           skill_magic_defense   25d10+525>
<sk           skill_battle_defense  25d10+525>
<sk           skill_weapon_slashing 25d10+425>
<sk           skill_weapon_bashing  25d10+425>
<sk           skill_weapon_piercing 25d10+425>
<sk           skill_weapon_hand     25d10+425>
<sk           skill_armslore        25d10+425>
<sk           skill_blacksmith      25d10+625>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           plain_shirt all_colors 1>
<eq           plain_pants all_colors 1>
<eq           full_apron black_colors 1>
<eq           random_weapon 0 0 1>
<eq           random_coin_purse 0 0 1>
<eq             all_shields 0 0 1 NONE>
<eq             metal_goods 0 0 1 NONE>
<eq             bladed_weapons 0 0 1 NONE>
<eq             blunt_weapons 0 0 1 NONE>
<eq             iron_ingot 0 0 1 SELLABLE>
<eq             tongs 0 0 1 SELLABLE>
<eq             armorer_purchases 0 0 1 NONE>
<eq             kindling 0 0 1 BUYABLE>
<eq             lumber 0 0 1 BUYABLE>
<eq             iron_ingot 0 0 1 BUYABLE>
<eq             lumber 0 0 1 BUYABLE>
<eq             tongs 0 0 1 BUYABLE>
<eq             tongs_2 0 0 1 BUYABLE>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<resource     desire      1  2    METAL>
<@@@ END @@@>
<54>
# Warrior 
<type         NORMAL 400>
<frequency    100>
<region       { FIGHTER 0 CITY 0 DUELPIT 0 } >
<regionlimit  { FIGHTER 1 CITY 2 DUELPIT 5 } >
<job          fighter>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 2>
<objvar       int hirelingWages 7>
<script       human>
<script       pet>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_FIGHTER>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     10d8+8>
<dexterity    10d8+8>
<intelligence 6d7+7>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           25d10+425>
<sk           skill_magic_defense   25d10+425>
<sk           skill_battle_defense  25d10+425>
<sk           skill_weapon_slashing 25d10+425>
<sk           skill_weapon_bashing  25d10+425>
<sk           skill_weapon_piercing 25d10+425>
<sk           skill_weapon_hand     25d10+425>
<sk           skill_armslore        25d10+400>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           ring_chest 0 0 1>
<eq           ring_legs 0 0 1>
<eq           ring_arms 0 0 1>
<eq           ring_gloves 0 0 1>
<eq           chain_coif 0 0 1>
<eq           gorget 0 0 1>
<eq           wooden_shield 0 0 1>
<eq           broad_sword 0 0 1>
<eq           random_coin_purse 0 0 1>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<55>
# Mercenary 
<type         NORMAL 400>
<frequency    100>
<region       { MERCENARY 0 FIGHTER 0 CITY 0 DUELPIT 0 } >
<regionlimit  { MERCENARY 1 FIGHTER 2 CITY 1 DUELPIT 5 } >
<job          fighter>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int hirelingWages 8>
<script       human>
<script       pet>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_FIGHTER>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     9d8+16>
<dexterity    9d8+16>
<intelligence 2d7+35>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           25d10+425>
<sk           skill_magic_defense   25d10+425>
<sk           skill_battle_defense  25d10+425>
<sk           skill_weapon_slashing 25d10+425>
<sk           skill_weapon_bashing  25d10+425>
<sk           skill_weapon_piercing 25d10+425>
<sk           skill_weapon_hand     25d10+425>
<sk           skill_armslore        25d10+400>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           random_chest_armor 0 0 1>
<eq           random_leg_armor 0 0 1>
<eq           random_arm_armor 0 0 1>
<eq           random_gloves 0 0 1>
<eq           random_head_armor 0 0 1>
<eq           random_shield 0 0 1>
<eq           random_gorget 0 0 1>
<eq           random_weapon 0 0 1>
<eq           random_coin_purse 0 0 1>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<56>
# Fighter 
<type         NORMAL 400>
<frequency    100>
<region       { CITY 0 DUELPIT 0 FIGHTERSMALL 0 FIGHTERMEDIUM 0 FIGHTERLARGE 0 FIGHTER 0 } >
<regionlimit  { CITY 2 DUELPIT 5 FIGHTERSMALL 2 FIGHTERMEDIUM 4 FIGHTERLARGE 6 FIGHTER 1 } >
<job          fighter>
<sex          MALE>
<name         000>
<objvar       int guildMember 2>
<objvar       int hirelingWages 6>
<script       human>
<script       pet>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_FIGHTER>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     11d8>
<dexterity    11d8>
<intelligence 7d7>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           25d10+425>
<sk           skill_magic_defense   25d10+425>
<sk           skill_battle_defense  25d10+425>
<sk           skill_weapon_slashing 25d10+425>
<sk           skill_weapon_bashing  25d10+425>
<sk           skill_weapon_piercing 25d10+425>
<sk           skill_weapon_hand     25d10+425>
<sk           skill_armslore        25d10+400>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           studded_chest 0 0 1>
<eq           studded_legs 0 0 1>
<eq           studded_arms 0 0 1>
<eq           studded_gloves 0 0 1>
<eq           random_head_armor 0 0 1>
<eq           wooden_shield 0 0 1>
<eq           studded_gorget 0 0 1>
<eq           random_axe 0 0 1>
<eq           random_coin_purse 0 0 1>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<57>
# Actor 
<type         NORMAL 400>
<frequency    100>
<region       { THEATER 0 CITY 0 } >
<regionlimit  { THEATER 3 CITY 1 } >
<job          actor>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_ACTOR>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+20>
<dexterity    1d15+25>
<intelligence 1d15+25>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+125>
<sk           skill_magic_defense  25d10+125>
<sk           skill_battle_defense 25d10+125>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           plain_shirt all_colors 1>
<eq           plain_pants all_colors 1>
<eq           random_shoes neutral_colors 1>
<eq           random_coin_purse 0 0 1>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<58>
# Mage GuildMaster  
<type         NORMAL 400>
<frequency    100>
<region       MAGEGUILD>
<regionlimit  { MAGEGUILD 1 } >
<job          mage guildmaster>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 1>
<objvar       int spellCastersLevel 8>
<script       human>
<script       gm>
<script       spellai>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_GUILDMASTER>
<convfrag     BRITANNIA_MAGE>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !10d5+25>
<strength     1d15+90>
<dexterity    1d15+100>
<intelligence 1d15+115>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+625>
<sk           skill_magic_defense  25d10+725>
<sk           skill_battle_defense 25d10+625>
<sk           skill_weapon_slashing 25d10+725>
<sk           skill_weapon_bashing  25d10+725>
<sk           skill_weapon_piercing 25d10+725>
<sk           skill_weapon_hand     25d10+725>
<sk           skill_evaluate       25d10+525>
<sk           skill_magic          1d150+850>
<sk           skill_inscribe       1d150+750>
<immunities   magic>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           robe blue_colors 1>
<eq           sandals 0 0 1>
<eq           random_coin_purse 0 0 1>
<eq           random_upper_scroll 0 0 1 SELFCONTAINED>
<eq           random_upper_scroll 0 0 1 SELFCONTAINED>
<resource     food         5  1    FOOD>
<resource     food         5  1    EGGS>
<resource     food         5  1    FRUIT>
<resource     food         5  1    FISH>
<resource     shelter      1  1    HOME>
<resource     shelter     16  0    HOUSES>
<resource     production   8  0    MEAT>
<resource     desire       1 -3    DANGER>
<resource     desire       1 -3    SPOOKINESS>
<resource     desire      10  2    GOLD>
<resource     desire       1  1    MAGIC>
<resource     desire      10  2    BONE>
<resource     desire      10  2    DAEMON_BONE>
<resource     desire      10  2    DIRT>
<resource     desire      10  2    DRAGON_BLOOD>
<resource     desire      10  2    MANDRAKE>
<resource     desire      10  2    INK>
<resource     desire      10  2    SERPENT_SCALES>
<resource     desire      10  2    SILK>
<resource     desire      10  2    SPIDER_SILK>
<resource     desire      10  2    SULPHEROUS ASH>
<resource     desire      10  2    BLACK_PEARL>
<resource     desire      10  2    BLOOD_MOSS>
<resource     desire      10  2    GARLIC>
<resource     desire      10  2    GINSENG>
<resource     desire      10  2    NIGHTSHADE>
<resource     desire      10  2    VOLCANIC ASH>
<@@@ END @@@>
<59>
# Warrior GuildMaster 
<type         NORMAL 400>
<frequency    100>
<region       FIGHTERGUILD>
<regionlimit  { FIGHTERGUILD 1 } >
<job          warrior's guildmaster>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 2>
<script       human>
<script       gm>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_GUILDMASTER>
<convfrag     BRITANNIA_FIGHTER>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !10d5+25>
<strength     1d15+95>
<dexterity    1d15+90>
<intelligence 1d15+80>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           25d10+725>
<sk           skill_magic_defense   25d10+625>
<sk           skill_battle_defense  25d10+725>
<sk           skill_weapon_slashing 25d10+625>
<sk           skill_weapon_bashing  25d10+625>
<sk           skill_weapon_piercing 25d10+525>
<sk           skill_weapon_hand     25d10+525>
<sk           skill_armslore        25d10+525>
<immunities   slashing>
<immunities   piercing>
<immunities   bashing>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           plate_chest 0 0 1>
<eq           plate_legs 0 0 1>
<eq           plate_arms 0 0 1>
<eq           plate_gloves 0 0 1>
<eq           random_head_armor 0 0 1>
<eq           random_over_armor all_colors 1>
<eq           gorget 0 0 1>
<eq           double_new_axe 0 0 1>
<eq           random_coin_purse 0 0 1>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<60>
# Thief GuildMaster 
<type         NORMAL 400>
<frequency    100>
<region       THIEVESGUILD >
<regionlimit  { THIEVESGUILD 1 } >
<job          thief guildmaster>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 3>
<script       human>
<script       thief>
<script       gm>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_THIEF>
<convfrag     BRITANNIA_GUILDMASTER>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !10d5+25>
<strength     1d15+90>
<dexterity    1d15+90>
<intelligence 1d15+90>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           25d10+725>
<sk           skill_magic_defense   25d10+625>
<sk           skill_battle_defense  25d10+725>
<sk           skill_weapon_slashing 25d10+525>
<sk           skill_weapon_bashing  25d10+425>
<sk           skill_weapon_piercing 25d10+725>
<sk           skill_weapon_hand     25d10+525>
<sk           skill_poisoning       25d10+625>
<sk           skill_locksmith       25d10+625>
<sk           skill_hide            25d10+625>
<sk           skill_detect_hidden   25d10+525>
<sk           skill_peek            25d10+625>
<sk           skill_steal           25d10+625>
<sk           skill_remove_trap     25d10+625>
<immunities   poison>
<immunities   piercing>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           fancy_shirt all_colors 1>
<eq           fancy_pants all_colors 1>
<eq           dagger_1 0 0 1>
<eq           random_coin_purse 0 0 1>
<eq           lockpick 0 0 1 SELFCONTAINED>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<61>
# Ranger GuildMaster 
<type         NORMAL 400>
<frequency   100>
<region       RANGERGUILD>
<regionlimit  { RANGERGUILD 1 } >
<job          ranger guildmaster>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 4>
<script       human>
<script       gm>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_RANGER>
<convfrag     BRITANNIA_GUILDMASTER>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !10d5+25>
<strength     1d15+90>
<dexterity    1d15+95>
<intelligence 1d15+80>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           25d10+725>
<sk           skill_magic_defense   25d10+725>
<sk           skill_battle_defense  25d10+725>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_ranged_weapons  25d10+725>
<sk           skill_hide            25d10+625>
<sk           skill_camping         25d10+625>
<sk           skill_animal_lore     25d10+625>
<sk           skill_herding         25d10+525>
<sk           skill_tracking        25d10+625>
<immunities   ranged>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           fancy_shirt green_colors 1>
<eq           fancy_pants brown_colors 1>
<eq           random_coin_purse 0 0 1>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter    64  1    FOREST>
<resource     shelter     1   1    HOME>
<resource     shelter    16  0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<62>
# Healer GuildMaster 
<type         NORMAL 400>
<frequency    100>
<region       HEALER>
<regionlimit  { HEALER 1 } >
<job          healer guildmaster>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 5>
<script       human>
<script       gm>
<script       healer>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_HEALER>
<convfrag     BRITANNIA_GUILDMASTER>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !10d5+25>
<strength     1d15+80>
<dexterity    1d15+95>
<intelligence 1d15+95>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           25d10+625>
<sk           skill_magic_defense   25d10+625>
<sk           skill_battle_defense  25d10+625>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_first_aid       25d10+625>
<sk           skill_anatomy         25d10+625>
<sk           skill_seance          25d10+625>
<sk           skill_forensics       25d10+425>
<resistances  slashing>
<resistances  piercing>
<resistances  bashing>
<resistances  ranged>
<resistances  poison>
<resistances  magic>
<resistances  fire>
<resistances  lightning>
<resistances  ice>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           robe yellow_colors 1>
<eq           sandals 0 0 1>
<eq           random_coin_purse 0 0 1>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<63>
# Miner GuildMaster 
<type         NORMAL 400>
<frequency    100>
<region       { MINERSGUILD 0 MINEGUILD 0 } >
<regionlimit  { MINERSGUILD 1 MINEGUILD 1 } >
<job          miner guildmaster>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 6>
<script       human>
<script       gm>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_MINER>
<convfrag     BRITANNIA_GUILDMASTER>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !10d5+25>
<strength     1d15+85>
<dexterity    1d15+60>
<intelligence 1d15+70>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_mining          25d10+725>
<sk           skill_melee           25d10+625>
<sk           skill_magic_defense   25d10+625>
<sk           skill_battle_defense  25d10+625>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_appraise        25d10+625>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           fancy_shirt grey_colors 1>
<eq           fancy_pants brown_colors 1>
<eq           black_boots neutral_colors 1>
<eq           random_coin_purse 0 0 1>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<64>
# Merchant GuildMaster 
<type         NORMAL 400>
<frequency    100>
<region       MERCHANTGUILD>
<regionlimit  { MERCHANTGUILD 1 } >
<job          merchant guildmaster>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 7>
<script       human>
<script       gm>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_PROVISIONER>
<convfrag     BRITANNIA_GUILDMASTER>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !10d5+25>
<strength     1d15+70>
<dexterity    1d15+85>
<intelligence 1d15+85>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+250>
<sk           skill_magic_defense  25d10+250>
<sk           skill_battle_defense 25d10+250>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_appraise       25d10+525>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           fancy_shirt all_colors 1>
<eq           fancy_pants all_colors 1>
<eq           plain_shoes neutral_colors 1>
<eq           random_coin_purse 0 0 1>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<65>
# Tinker GuildMaster 
<type         NORMAL 400>
<frequency    100>
<region       TINKERGUILD>
<regionlimit  { TINKERGUILD 1 } >
<job          tinker guildmaster>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 8>
<script       human>
<script       gm>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_TINKER>
<convfrag     BRITANNIA_GUILDMASTER>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !10d5+25>
<strength     1d15+70>
<dexterity    1d15+85>
<intelligence 1d15+85>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+625>
<sk           skill_magic_defense  25d10+525>
<sk           skill_battle_defense 25d10+625>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_tinker         25d10+625>
<sk           skill_locksmith      25d10+625>
<sk           skill_remove_trap    25d10+625>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           fancy_shirt orange_colors 1>
<eq           fancy_pants black_colors 1>
<eq           plain_shoes neutral_colors 1>
<eq           random_coin_purse 0 0 1>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<67>
# Fishing GuildMaster 
<type         NORMAL 400>
<frequency    100>
<region       FISHERGUILD>
<regionlimit  { FISHERGUILD 1 } >
<job          fisher guildmaster>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 10>
<script       human>
<script       gm>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_FISHER>
<convfrag     BRITANNIA_GUILDMASTER>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !10d5+25>
<strength     1d15+80>
<dexterity    1d15+85>
<intelligence 1d15+80>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+625>
<sk           skill_magic_defense  25d10+625>
<sk           skill_battle_defense 25d10+525>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_fishing        25d10+625>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           fancy_shirt blue_colors 1>
<eq           fancy_pants green_colors 1>
<eq           black_boots neutral_colors 1>
<eq           random_coin_purse 0 0 1>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<68>
# Magincia Council Member 
<type         NORMAL 400>
<frequency    100>
<region       CITY_MAGINCIA>
<regionlimit  { CITY_MAGINCIA 9 } >
<job          councilmember>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_M_PARLIAMENT>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !20d4+20>
<strength     1d15+40>
<dexterity    1d15+40>
<intelligence 1d15+40>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+225>
<sk           skill_magic_defense  25d10+225>
<sk           skill_battle_defense 25d10+225>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           fancy_shirt all_colors 1>
<eq           fancy_pants all_colors 1>
<eq           sash_1 red_colors 1>
<eq           long_sword 0 0 1>
<eq           filthy_rich_backpack 0 0 1>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      3 -6    MEAT>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<resource     desire     10  1    NOTORIETY>
<@@@ END @@@>
<69>
# Magincia Servant 
<type         NORMAL 400>
<frequency    100>
<region       CITY_MAGINCIA>
<regionlimit  { CITY_MAGINCIA 12 } >
<job          servant>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int hirelingWages 2>
<script       human>
<script       pet>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_M_SERVANT>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+15>
<dexterity    1d15+20>
<intelligence 1d15+25>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+125>
<sk           skill_magic_defense  25d10+125>
<sk           skill_battle_defense 25d10+125>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           plain_shirt all_colors 1>
<eq           plain_pants all_colors 1>
<eq           random_coin_purse 0 0 1>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      3 -6    MEAT>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<70>
# Ocllo Cashual 
<type         SHOPKEEPER 400>
<frequency    100>
<region       MAGEGUILD_OCLLO>
<regionlimit  { MAGEGUILD_OCLLO 1 } >
<job          cashual>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int spellCastersLevel 1d2+6>
<script       human>
<script       spellai>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_CASHUAL>
<convfrag     BRITANNIA_SHOPKEEPER>
<convfrag     BRITANNIA_MERCHANT_GREETING>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+60>
<dexterity    1d15+70>
<intelligence 1d15+85>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+525>
<sk           skill_magic_defense  25d10+625>
<sk           skill_battle_defense 25d10+525>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_alchemy        25d10+525>
<sk           skill_taste          25d10+525>
<sk           skill_magic          1d150+850>
<sk           skill_inscribe       1d150+500>
<resistances  magic>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           robe red_colors 1>
<eq           sandals 0 0 1>
<eq           random_coin_purse 0 0 1>
<eq           random_upper_scroll 0 0 1 SELFCONTAINED>
<eq           random_upper_scroll 0 0 1 SELFCONTAINED>
<eq           { basic_mage 18 second_circle 13 third_circle 8 fourth_circle 3 } 0 0 1 NONE>
<resource     food         5  1    FOOD>
<resource     food         5  1    EGGS>
<resource     food         5  1    FRUIT>
<resource     food         5  1    FISH>
<resource     shelter      1  1    HOME>
<resource     shelter     16  0    HOUSES>
<resource     production   8  0    MEAT>
<resource     desire       1 -3    DANGER>
<resource     desire       1 -3    SPOOKINESS>
<resource     desire      10  2    GOLD>
<resource     desire       1  1    MAGIC>
<resource     desire      10  2    BONE>
<resource     desire      10  2    DAEMON_BONE>
<resource     desire      10  2    DIRT>
<resource     desire      10  2    DRAGON_BLOOD>
<resource     desire      10  2    MANDRAKE>
<resource     desire      10  2    INK>
<resource     desire      10  2    SERPENT_SCALES>
<resource     desire      10  2    SILK>
<resource     desire      10  2    SPIDER_SILK>
<resource     desire      10  2    SULPHEROUS ASH>
<resource     desire      10  2    BLACK_PEARL>
<resource     desire      10  2    BLOOD_MOSS>
<resource     desire      10  2    GARLIC>
<resource     desire      10  2    GINSENG>
<resource     desire      10  2    NIGHTSHADE>
<resource     desire      10  2    VOLCANIC ASH>
<@@@ END @@@>
<71>
# Ocllo Priest 
<type         NORMAL 400>
<frequency    100>
<region       CITY_OCLLO>
<regionlimit  { CITY_OCLLO 5 } >
<job          priest>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_O_PRIEST>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+40>
<dexterity    1d15+50>
<intelligence 1d15+60>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+325>
<sk           skill_magic_defense  25d10+325>
<sk           skill_battle_defense 25d10+325>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           robe grey_colors 1>
<eq           sandals 0 0 1>
<eq           random_coin_purse 0 0 1>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<72>
# Ocllo Runner  
<type         NORMAL 400>
<frequency    100>
<region       CITY_OCLLO>
<regionlimit  { CITY_OCLLO 3 } >
<job          runner>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_O_RUNNER>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+25>
<dexterity    1d15+30>
<intelligence 1d15+15>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+125>
<sk           skill_magic_defense  25d10+125>
<sk           skill_battle_defense 25d10+125>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           poor_shirt all_colors 1>
<eq           poor_pants all_colors 1>
<eq           sandals 0 0 1>
<eq           poor_backpack 0 0 1>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<73>
# Prisoner 
<type         NORMAL 400>
<frequency    100>
<region       CELL>
<regionlimit  { CELL 1 } >
<job          prisoner>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_PRISONER>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+10>
<dexterity    1d15+10>
<intelligence 1d15+30>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+125>
<sk           skill_magic_defense  25d10+125>
<sk           skill_battle_defense 25d10+125>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           poor_pants all_colors 1>
<eq           poor_backpack 0 0 1>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<74>
# Paladin 
<type         NORMAL 400>
<frequency    100>
<region       { PALADIN 0 CITY_TRINSIC 0 } >
<regionlimit  { PALADIN 6 CITY_TRINSIC 23 } >
<job          paladin>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 2>
<objvar       int hirelingWages 8>
<script       human>
<script       pet>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_PALADIN>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+35>
<strength     4d8+60>
<dexterity    6d8+40>
<intelligence 2d7+35>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           25d10+525>
<sk           skill_magic_defense   25d10+525>
<sk           skill_battle_defense  25d10+525>
<sk           skill_weapon_slashing 25d10+525>
<sk           skill_weapon_bashing  25d10+525>
<sk           skill_weapon_piercing 25d10+525>
<sk           skill_weapon_hand     25d10+525>
<sk           skill_armslore        25d10+500>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           plate_chest 0 0 1>
<eq           plate_legs 0 0 1>
<eq           plate_arms 0 0 1>
<eq           plate_gloves 0 0 1>
<eq           gorget 0 0 1>
<eq           random_helmet 0 0 1>
<eq           random_over_armor all_colors 1>
<eq           heater_shield_1 all_colors 1>
<eq           viking_sword 0 0 1>
<eq           random_boots 0 0 1>
<eq           random_coin_purse 0 0 1>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<75>
# Ranger  
<type         NORMAL 400>
<frequency    100>
<region       { RANGER 0 } >
<regionlimit  { RANGER 3 } >
<job          ranger>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 4>
<objvar       int hirelingWages 7>
<script       human>
<script       pet>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_RANGER>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+70>
<dexterity    1d15+75>
<intelligence 1d15+60>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           25d10+625>
<sk           skill_magic_defense   25d10+625>
<sk           skill_battle_defense  25d10+625>
<sk           skill_weapon_slashing 25d10+325>
<sk           skill_weapon_bashing  25d10+325>
<sk           skill_weapon_piercing 25d10+325>
<sk           skill_weapon_hand     25d10+325>
<sk           skill_ranged_weapons  25d10+525>
<sk           skill_hide            25d10+425>
<sk           skill_camping         25d10+525>
<sk           skill_animal_lore     25d10+525>
<sk           skill_herding         25d10+425>
<sk           skill_tracking        25d10+425>
<resistances  ranged>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           plain_shirt green_colors 1>
<eq           plain_pants brown_colors 1>
<eq           random_coin_purse 0 0 1>
<eq           bow 0 0 1>
<eq           arrows 0 0 40 SELFCONTAINED>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter    64  1    FOREST>
<resource     shelter     1  1    FOLIAGE>
<resource     shelter    16  0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<76>
# Mage (non-shopkeeper)
<type         NORMAL 400>
<frequency    100>
<region       { CITY 0 WANDER_MAGE 0 WINDFOREST 0 } >
<regionlimit  { CITY 3 WANDER_MAGE 4 WINDFOREST 5 } >
<job          mage>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 1>
<objvar       int hirelingWages 6>
<objvar       int spellCastersLevel 1d2+6>
<script       human>
<script       spellai>
<script       pet>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_MAGE>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+60>
<dexterity    1d15+70>
<intelligence 1d15+85>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+525>
<sk           skill_magic_defense  25d10+625>
<sk           skill_battle_defense 25d10+525>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_magic          1d150+850>
<sk           skill_inscribe       1d150+500>
<resistances  magic>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           robe all_colors 1>
<eq           random_coin_purse 0 0 1>
<resource     food         5  1    FOOD>
<resource     food         5  1    EGGS>
<resource     food         5  1    FRUIT>
<resource     food         5  1    FISH>
<resource     shelter      1  1    HOME>
<resource     shelter     16  0    HOUSES>
<resource     production   8  0    MEAT>
<resource     desire       1 -3    DANGER>
<resource     desire       1 -3    SPOOKINESS>
<resource     desire      10  2    GOLD>
<resource     desire       1  1    MAGIC>
<resource     desire      10  2    MANDRAKE>
<resource     desire      10  2    SPIDER_SILK>
<resource     desire      10  2    SULPHEROUS ASH>
<resource     desire      10  2    BLACK_PEARL>
<resource     desire      10  2    BLOOD_MOSS>
<resource     desire      10  2    GARLIC>
<resource     desire      10  2    GINSENG>
<resource     desire      10  2    NIGHTSHADE>
<@@@ END @@@>
<77>
#  Beekeeper 
<type         SHOPKEEPER 400>
<frequency    100>
<region       BEEKEEPER>
<regionlimit  { BEEKEEPER 1 } >
<job          beekeeper>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_BEEKEEPER>
<convfrag     BRITANNIA_SHOPKEEPER>
<convfrag     BRITANNIA_MERCHANT_GREETING>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+20>
<dexterity    1d15+35>
<intelligence 1d15+35>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+125>
<sk           skill_magic_defense  25d10+125>
<sk           skill_battle_defense 25d10+125>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           plain_shirt all_colors 1>
<eq           plain_pants all_colors 1>
<eq           black_boots neutral_colors 1>
<eq           random_coin_purse 0 0 1>
<eq             honey_obj 0 0 1 SELLABLE>
<eq             honey_obj 0 0 1 BUYABLE>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<resource     desire      1  1    BEEHIVES>
<resource     desire      1  1    HONEY>
<@@@ END @@@>
<78>
# Shepherd 
<type         SHOPKEEPER 400>
<frequency    100>
<region       SHEEP>
<regionlimit  { SHEEP 1 } >
<job          shepherd>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_SHEPHERD>
<convfrag     BRITANNIA_MERCHANT_GREETING>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+50>
<dexterity    1d15+40>
<intelligence 1d15+30>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           25d10+225>
<sk           skill_magic_defense   25d10+225>
<sk           skill_battle_defense  25d10+225>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_camping         25d10+525>
<sk           skill_herding         25d10+525>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           poor_shirt all_colors 1>
<eq           poor_pants all_colors 1>
<eq           bumpkin_straw_hat neutral_colors 1>
<eq           random_boots 0 0 1>
<eq           shepherd_crook 0 0 1>
<eq           random_coin_purse 0 0 1>
<eq             raw_wool 0 0 1 SELLABLE>
<eq             sheperds_crook 0 0 1 SELLABLE>
<eq             hay 0 0 1 BUYABLE>
<eq             loaf_bread_1 0 0 1 BUYABLE>
<eq             loaf_bread_2 0 0 1 BUYABLE>
<eq             french_bread 0 0 1 BUYABLE>
<eq             cookie_plate 0 0 1 BUYABLE>
<eq             baked_pie 0 0 1 BUYABLE>
<eq             cake 0 0 1 BUYABLE>
<eq             muffin 0 0 1 BUYABLE>
<eq             cheese 0 0 1 BUYABLE>
<eq             cooked_bird 0 0 1 BUYABLE>
<eq             cooked_ribs 0 0 1 BUYABLE>
<eq             cooked_mutton 0 0 1 BUYABLE>
<eq             cooked_chick_leg 0 0 1 BUYABLE>
<eq             bowl_carrots 0 0 1 BUYABLE>
<eq             bowl_corn 0 0 1 BUYABLE>
<eq             bowl_lettuce 0 0 1 BUYABLE>
<eq             bowl_peas 0 0 1 BUYABLE>
<eq             bowl_potatoes 0 0 1 BUYABLE>
<eq             bowl_stew 0 0 1 BUYABLE>
<eq             bowl_tomato_soup 0 0 1 BUYABLE>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter    16  1    GRASS>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    SHEEP>
<@@@ END @@@>
<79>
# Fur Trader 
<type         SHOPKEEPER 400>
<frequency    100>
<region       { FURRIER 0 FURTRADER 0 TANNER 0 } >
<regionlimit  { FURRIER 1 FURTRADER 1 TANNER 1 } >
<job          furtrader>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_FUR_TRADER>
<convfrag     BRITANNIA_SHOPKEEPER>
<convfrag     BRITANNIA_MERCHANT_GREETING>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+65>
<dexterity    1d15+50>
<intelligence 1d15+40>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+525>
<sk           skill_magic_defense  25d10+525>
<sk           skill_battle_defense 25d10+425>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_animal_lore    25d10+625>
<sk           skill_camping        25d10+525>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           plain_shirt brown_colors 1>
<eq           plain_pants black_colors 1>
<eq           random_boots 0 0 1>
<eq           skinning_knife 0 0 1>
<eq           random_coin_purse 0 0 1>
<eq             pile_hides 0 0 1 SELLABLE>
<eq             skinning_knife 0 0 1>
<eq             pile_hides 0 0 1 BUYABLE>
<eq             pile_hides_2 0 0 1 BUYABLE>
<eq             llama_hides 0 0 1 BUYABLE>
<eq             llama_hides_2 0 0 1 BUYABLE>
<eq             llama_hides_3 0 0 1 BUYABLE>
<eq             llama_hides_4 0 0 1 BUYABLE>
<eq             llama_hides_5 0 0 1 BUYABLE>
<eq             llama_hides_6 0 0 1 BUYABLE>
<eq             llama_hides_7 0 0 1 BUYABLE>
<eq             llama_hides_8 0 0 1 BUYABLE>
<eq             llama_hides_9 0 0 1 BUYABLE>
<eq             loaf_bread_1 0 0 1 BUYABLE>
<eq             loaf_bread_2 0 0 1 BUYABLE>
<eq             french_bread 0 0 1 BUYABLE>
<eq             cookie_plate 0 0 1 BUYABLE>
<eq             baked_pie 0 0 1 BUYABLE>
<eq             cake 0 0 1 BUYABLE>
<eq             muffin 0 0 1 BUYABLE>
<eq             cheese 0 0 1 BUYABLE>
<eq             cooked_bird 0 0 1 BUYABLE>
<eq             cooked_ribs 0 0 1 BUYABLE>
<eq             cooked_mutton 0 0 1 BUYABLE>
<eq             cooked_chick_leg 0 0 1 BUYABLE>
<eq             bowl_carrots 0 0 1 BUYABLE>
<eq             bowl_corn 0 0 1 BUYABLE>
<eq             bowl_lettuce 0 0 1 BUYABLE>
<eq             bowl_peas 0 0 1 BUYABLE>
<eq             bowl_potatoes 0 0 1 BUYABLE>
<eq             bowl_stew 0 0 1 BUYABLE>
<eq             bowl_tomato_soup 0 0 1 BUYABLE>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter    16  1    FOLIAGE>
<resource     shelter    32  1    FOREST>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<resource     desire      1  1    FUR>
<@@@ END @@@>
<80>
# Banker 
<type         NORMAL 400>
<frequency    100>
<region       BANK>
<regionlimit  { BANK 1 } >
<job          banker>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<script       banker>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_BANKER>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+70>
<dexterity    1d15+65>
<intelligence 1d15+65>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+425>
<sk           skill_magic_defense  25d10+425>
<sk           skill_battle_defense 25d10+425>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           plain_shirt all_colors 1>
<eq           plain_pants all_colors 1>
<eq           plain_shoes neutral_colors 1>
<eq           random_coin_purse 0 0 1>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<81>
# Healer (non-shopkeeper)
<type         NORMAL 400>
<frequency    100>
<region       { CITY 0 WANDHEAL 0 FORESTNOTNEARTOWN 0 DARKFOREST 0 DARKERFOREST 0 NEWBIE 0 } >
<regionlimit  { CITY 1 WANDHEAL 5 FORESTNOTNEARTOWN 5 DARKFOREST 1 DARKERFOREST 1 NEWBIE 5 } >
<job          wandering healer>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 5>
<script       human>
<script       healer>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_WANDERHEALER>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !127d1>
<strength     1d15+70>
<dexterity    1d15+80>
<intelligence 1d15+85>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           25d10+625>
<sk           skill_magic_defense   25d10+625>
<sk           skill_battle_defense  25d10+625>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_first_aid       25d10+525>
<sk           skill_anatomy         25d10+525>
<sk           skill_seance          25d10+525>
<sk           skill_forensics       25d10+325>
<sk           skill_camping         25d10+325>
<sk           skill_fishing         25d10+325>
<resistances  slashing>
<resistances  piercing>
<resistances  bashing>
<resistances  ranged>
<resistances  poison>
<resistances  magic>
<resistances  fire>
<resistances  lightning>
<resistances  ice>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           robe yellow_colors 1>
<eq           sandals 0 0 1>
<eq           random_coin_purse 0 0 1>
<resource     food         5  1    FOOD>
<resource     food         5  1    EGGS>
<resource     food         5  1    FRUIT>
<resource     food         5  1    FISH>
<resource     shelter      1  1    FOLIAGE>
<resource     shelter     16  0    HOUSES>
<resource     production   8  0    MEAT>
<resource     desire       1 -3    DANGER>
<resource     desire      10  2    GOLD>
<@@@ END @@@>
<82>
# Veggie Seller 
<type         SHOPKEEPER 400>
<frequency    100>
<region       VEGGIESTALL>
<regionlimit  { VEGGIESTALL 1 } >
<job          farmer>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_SHOPKEEPER>
<convfrag     BRITANNIA_MERCHANT_GREETING>
<convfrag     BRITANNIA_FARMER>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+50>
<dexterity    1d15+40>
<intelligence 1d15+30>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           25d10+225>
<sk           skill_magic_defense   25d10+225>
<sk           skill_battle_defense  25d10+225>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_animal_lore     25d10+325>
<sk           skill_vet             25d10+325>
<sk           skill_herding         25d10+325>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           poor_shirt all_colors 1>
<eq           poor_pants all_colors 1>
<eq           bumpkin_straw_hat neutral_colors 1>
<eq           random_boots 0 0 1>
<eq           random_coin_purse 0 0 1>
<eq             head_of_cabbage 0 0 1 SELLABLE>
<eq             cantelope 0 0 1 SELLABLE>
<eq             carrot_obj 0 0 1 SELLABLE>
<eq             melon 0 0 1 SELLABLE>
<eq             squash 0 0 1 SELLABLE>
<eq             head_of_lettuce 0 0 1 SELLABLE>
<eq             onion_obj 0 0 1 SELLABLE>
<eq             pumpkin 0 0 1 SELLABLE>
<eq             gourd_1 0 0 1 SELLABLE>
<eq             gourd_2 0 0 1 SELLABLE>
<eq             turnip_1 0 0 1 SELLABLE>
<eq             watermelon 0 0 1 SELLABLE>
<eq             corn 0 0 1 SELLABLE>
<eq             fresh_eggs 0 0 1 SELLABLE>
<eq             milk_pitcher 0 0 1 SELLABLE>
<eq             peach 0 0 1 SELLABLE>
<eq             pear 0 0 1 SELLABLE>
<eq             lemon 0 0 1 SELLABLE>
<eq             lime 0 0 1 SELLABLE>
<eq             grapes 0 0 1 SELLABLE>
<eq             apple 0 0 1 SELLABLE>
<eq             bundle_of_grain 0 0 1 SELLABLE>
<eq             head_of_cabbage 0 0 1 BUYABLE>
<eq             cantelope 0 0 1 BUYABLE>
<eq             carrot_obj 0 0 1 BUYABLE>
<eq             melon 0 0 1 BUYABLE>
<eq             squash 0 0 1 BUYABLE>
<eq             head_of_lettuce 0 0 1 BUYABLE>
<eq             onion_obj 0 0 1 BUYABLE>
<eq             pumpkin 0 0 1 BUYABLE>
<eq             gourd_1 0 0 1 BUYABLE>
<eq             gourd_2 0 0 1 BUYABLE>
<eq             turnip_1 0 0 1 BUYABLE>
<eq             watermelon 0 0 1 BUYABLE>
<eq             corn 0 0 1 BUYABLE>
<eq             fresh_eggs 0 0 1 BUYABLE>
<eq             milk_pitcher 0 0 1 BUYABLE>
<eq             peach 0 0 1 BUYABLE>
<eq             pear 0 0 1 BUYABLE>
<eq             lemon 0 0 1 BUYABLE>
<eq             lime 0 0 1 BUYABLE>
<eq             grapes 0 0 1 BUYABLE>
<eq             apple 0 0 1 BUYABLE>
<eq             bundle_of_grain 0 0 1 BUYABLE>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<83>
# Blackthorn Guard
<type         GUARD 400>
<frequency    100>
<region       { BLACKTHORN 0 BLACKTHORNGUARD 0 } >
<regionlimit  { BLACKTHORN 3 BLACKTHORNGUARD 1 } >
<job          guard>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<script       cityguard>
<script       btguard>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_GUARD>
<strength     9000>
<dexterity    9000>
<intelligence 9000>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    GOOD>
<attitude     1d41-21>
<notoriety    100d1>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           1d100+900>
<sk           skill_magic_defense   1d100+900>
<sk           skill_battle_defense  1d100+900>
<sk           skill_weapon_slashing 1d100+900>
<sk           skill_weapon_bashing  1d100+900>
<sk           skill_weapon_piercing 1d100+900>
<sk           skill_weapon_hand     1d100+900>
<sk           skill_detect_hidden   1d100+900>
<sk           skill_forensics       1d100+900>
<immunities   slashing>
<immunities   piercing>
<immunities   bashing>
<immunities   ranged>
<immunities   poison>
<immunities   magic>
<immunities   fire>
<immunities   lightning>
<immunities   ice>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           plain_shirt all_colors 1>
<eq           plain_pants all_colors 1>
<eq           plate_chest 0 0 1>
<eq           plate_legs 0 0 1>
<eq           plate_arms 0 0 1>
<eq           random_over_armor red_colors 1>
<eq           viking_sword 0 0 1>
<eq           chaos_shield 0 0 1>
<eq           random_coin_purse 0 0 1>
<resource     shelter      5   1    GUARDPOST>
<resource     production   8   0    MEAT>
<resource     production   1   1    GUARD>
<resource     desire     -50  -1    NOTORIETY>
<resource     desire       5   1    GUARDPOST>
<@@@ END @@@>
<84>
# LB Guard
<type         GUARD 400>
<frequency    100>
<region       { CITY_BRITAIN 0 LBCASTLEGUARD 0 LBCASTLE 0 } >
<regionlimit  { CITY_BRITAIN 4 LBCASTLEGUARD 2 LBCASTLE 2 } >
<job          guard>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<script       cityguard>
<script       lbguard>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_GUARD>
<strength     9000>
<dexterity    9000>
<intelligence 9000>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    GOOD>
<attitude     1d41-21>
<notoriety    100d1>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           1d100+900>
<sk           skill_magic_defense   1d100+900>
<sk           skill_battle_defense  1d100+900>
<sk           skill_weapon_slashing 1d100+900>
<sk           skill_weapon_bashing  1d100+900>
<sk           skill_weapon_piercing 1d100+900>
<sk           skill_weapon_hand     1d100+900>
<sk           skill_detect_hidden   1d100+900>
<sk           skill_forensics       1d100+900>
<immunities   slashing>
<immunities   piercing>
<immunities   bashing>
<immunities   ranged>
<immunities   poison>
<immunities   magic>
<immunities   fire>
<immunities   lightning>
<immunities   ice>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           plain_shirt all_colors 1>
<eq           plain_pants all_colors 1>
<eq           plate_chest 0 0 1>
<eq           plate_legs 0 0 1>
<eq           plate_arms 0 0 1>
<eq           random_over_armor blue_colors 1>
<eq           viking_sword 0 0 1>
<eq           lb_shield 0 0 1>
<eq           random_coin_purse 0 0 1>
<resource     shelter      5   1    GUARDPOST>
<resource     production   8   0    MEAT>
<resource     production   1   1    GUARD>
<resource     production   1   1    HUMANS>
<resource     desire     -50  -1    NOTORIETY>
<resource     desire       5   1    GUARDPOST>
<@@@ END @@@>
<85>
# Harbor Master
<type         NORMAL 400>
<frequency    100>
<region       { DOCKS 0 } >
<regionlimit  { DOCKS 1 } >
<job          harbor master>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 10>
<script       human>
<script       gm>
<script       harbormaster>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+85>
<dexterity    1d15+65>
<intelligence 1d15+70>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+425>
<sk           skill_magic_defense  25d10+525>
<sk           skill_battle_defense 25d10+525>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           plain_shirt all_colors 1>
<eq           plain_pants all_colors 1>
<eq           random_boots 0 0 1>
<eq           quarter_staff 0 0 1>
<eq           random_coin_purse 0 0 1>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<86>
#  Brigand 
<type         NORMAL 400>
<frequency    100>
<region       { BRIGANDSMALL 0 BRIGANDMEDIUM 0 BRIGANDLARGE 0 BRIGAND 0 } >
<regionlimit  { BRIGANDSMALL 2 BRIGANDMEDIUM 4 BRIGANDLARGE 6 BRIGAND 1 } >
<job          brigand>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_BRIGAND>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    2d15-77>
<strength     1d15+65>
<dexterity    1d15+80>
<intelligence 1d15+60>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           25d10+525>
<sk           skill_magic_defense   25d10+525>
<sk           skill_battle_defense  25d10+525>
<sk           skill_weapon_slashing 25d10+325>
<sk           skill_weapon_bashing  25d10+225>
<sk           skill_weapon_piercing 25d10+425>
<sk           skill_weapon_hand     25d10+325>
<sk           skill_poisoning       25d10+325>
<sk           skill_locksmith       25d10+325>
<sk           skill_hide            25d10+425>
<sk           skill_peek            25d10+325>
<sk           skill_steal           25d10+425>
<sk           skill_remove_trap     25d10+325>
<sk           skill_camping         25d10+425>
<resistances  piercing>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           poor_shirt all_colors 1>
<eq           poor_pants all_colors 1>
<eq           random_footwear 0 0 1>
<eq           random_weapon 0 0 1>
<eq           random_coin_purse 0 0 1>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<87>
# Mage (non-shopkeeper)
<type         NORMAL 400>
<frequency    100>
<region       { WANDER_MAGE 0 WINDFOREST 0 } >
<regionlimit  { WANDER_MAGE 4 WINDFOREST 5 } >
<job          mage>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 1>
<objvar       int hirelingWages 6>
<objvar       int spellCastersLevel 1d2+6>
<script       human>
<script       spellai>
<script       pet>
<convfrag     BRITANNIA_WIND>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_MAGE>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+60>
<dexterity    1d15+70>
<intelligence 1d15+85>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+525>
<sk           skill_magic_defense  25d10+625>
<sk           skill_battle_defense 25d10+525>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_magic          1d150+850>
<sk           skill_inscribe       1d150+500>
<resistances  magic>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           robe all_colors 1>
<eq           random_coin_purse 0 0 1>
<eq           sash all_colors 1>
<resource     food         5  1    FOOD>
<resource     food         5  1    EGGS>
<resource     food         5  1    FRUIT>
<resource     food         5  1    FISH>
<resource     shelter      1  1    HOME>
<resource     shelter     16  0    HOUSES>
<resource     production   8  0    MEAT>
<resource     desire       1 -3    DANGER>
<resource     desire       1 -3    SPOOKINESS>
<resource     desire      10  2    GOLD>
<resource     desire       1  1    MAGIC>
<resource     desire      10  2    MANDRAKE>
<resource     desire      10  2    SPIDER_SILK>
<resource     desire      10  2    SULPHEROUS ASH>
<resource     desire      10  2    BLACK_PEARL>
<resource     desire      10  2    BLOOD_MOSS>
<resource     desire      10  2    GARLIC>
<resource     desire      10  2    GINSENG>
<resource     desire      10  2    NIGHTSHADE>
<@@@ END @@@>
<88>
#  Town Crier 
<type         NORMAL 400>
<frequency    100>
<region       CITY 0>
<regionlimit  CITY 1>
<job          town crier>
<sex          MALE>
<name         0>
<partialhue   all_skin_colors>
<script       towncrier>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<strength     9000>
<dexterity    9000>
<intelligence 9000>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     80d1>
<notoriety    127d1>
<hp           STR>
<mana         INT>
<stamina      0>
<movetype     MT_NONMOVER>
<sk           skill_melee           1d100+900>
<sk           skill_magic_defense   1d100+900>
<sk           skill_battle_defense  1d100+900>
<sk           skill_weapon_slashing 1d100+900>
<sk           skill_weapon_bashing  1d100+900>
<sk           skill_weapon_piercing 1d100+900>
<sk           skill_weapon_ranged   1d100+900>
<sk           skill_weapon_hand     1d100+900>
<sk           skill_detect_hidden   1d100+900>
<immunities   slashing>
<immunities   piercing>
<immunities   bashing>
<immunities   ranged>
<immunities   poison>
<immunities   magic>
<immunities   fire>
<immunities   lightning>
<immunities   ice>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           fancy_shirt blue_colors 1>
<eq           fancy_pants green_colors 1>
<eq           turban green_colors 1>
<eq           random_boots 0 0 1>
<resource     shelter      5   1    GUARDPOST>
<resource     production   8   0    MEAT>
<resource     production   1   1    HUMANS>
<resource     desire       5   1    GUARDPOST>
<@@@ END @@@>
<500>
# alligator     Difficulty 4
<type           NORMAL ALLIGATORS>
<frequency      100>
<region         { SWAMP 0 ZOO_SWAMP 0 JUNGLE 0 ALLIGATORSMALL 0 ALLIGATORMEDIUM 0 ALLIGATORLARGE 0 ALLIGATOR 0 } >
<regionlimit    { SWAMP 60 ZOO_SWAMP 1 JUNGLE 20 ALLIGATORSMALL 15 ALLIGATORMEDIUM 25 ALLIGATORLARGE 38 ALLIGATOR 5 } >
<sex            OTHER>
<name           500>
<corpsename     alligator>
<alignment      EVIL>
<notoriety      -125>
<hue            0 0>
<objvar         int petCanTame   60>
<objvar         int petAckSfx    animals_aligatr1>
<objvar         int petRefuseSfx animals_aligatr4>
<script         monster>
<sfxnotice      animals_aligatr1>
<sfxidle        animals_aligatr2>
<sfxhit         animals_aligatr3>
<sfxwashit      animals_aligatr4>
<sfxdie         animals_aligatr5>
<strength       1d25+75>
<intelligence   1d10+10>
<dexterity      1d20+5>
<hp             1d25+75>
<mana           0>
<stamina        1d20+45>
<sk             skill_magic_defense  1d150+250>
<sk             skill_weapon_hand    1d200+400>
<sk             skill_melee          1d200+400>
<sk             skill_battle_defense 1d350+375>
<naturalwc      2d9>
<naturalac      15>
<resource       food         5  1    MEAT>
<resource       shelter    576  1    SWAMP>
<resource       shelter    576  0    WATER>
<resource       shelter    288  0    CAVES>
<resource       production   6  0    CARNIVOREMEAT>
<resource       production  12  0    LEATHER>
<resource       desire       1 -3    DANGER>
<resource       desire       1 -3    HOUSES>
<@@@ END @@@>
<501>
# forest bird   Difficulty 1
<type           NORMAL FOREST_BIRDS>
<frequency      75>
<region         { FORESTNEARTOWN 0 CITY 0 ZOO_FOREST 0 FORESTNOTNEARTOWN 0 DARKFOREST 0 DARKERFOREST 0 NEWBIE 0 WINDFOREST 0 } >
<regionlimit    { FORESTNEARTOWN 2 CITY 6 ZOO_FOREST 1 FORESTNOTNEARTOWN 10 DARKFOREST 10 DARKERFOREST 5 NEWBIE 15 WINDFOREST 2 } >
<sex            OTHER>
<name           501>
<corpsename     bird>
<hue            bird_colors>
<alignment      NEUTRAL>
<objvar         int petCanTame   10>
<objvar         int petAckSfx    animals_frstbrd1>
<objvar         int petRefuseSfx animals_frstbrd4>
<script         monster>
<sfxnotice      animals_frstbrd1>
<sfxidle        animals_frstbrd2>
<sfxhit         animals_frstbrd3>
<sfxwashit      animals_frstbrd4>
<sfxdie         animals_frstbrd5>
<strength       1d4>
<intelligence   1d4>
<dexterity      1d10+25>
<hp             3d2>
<mana           0>
<stamina        25d3+25>
<movetype       MT_FLYING>
<sk             skill_melee          1d50+50>
<sk             skill_weapon_hand    1d50+50>
<sk             skill_magic_defense  1d50+50>
<sk             skill_battle_defense 1d100+150>
<naturalwc      1d1>
<naturalac      1>
<resource       food         3   1    CROPS>
<resource       food         6   1    FRUIT>
<resource       food         3   1    GRAIN>
<resource       food         6   1    INSECTS>
<resource       food         6   1    MUSHROOMS>
<resource       shelter     55   1    FOLIAGE>
<resource       shelter    576   0    GRASS>
<resource       production   2   0    MEAT>
<resource       production  25   0    FEATHERS>
<resource       desire       1  -3    DANGER>
<resource       desire       1  -6    MEAT>
<resource       desire       1  -3    HUMANS>
<resource       desire       1  -3    HOUSES>
<resource       desire       1  -3    WATER>
<resource       desire       1  -3    MOUNTAINS>
<resource       desire       5   1    FOREST>
<resource       desire       7   1    SELF>
<@@@ END @@@>
<502>
# black bear    Difficulty 3
<type           NORMAL BLACK_BEAR>
<frequency      120>
<region         { ZOO_FOREST 0 BEARSMALL 0 BEARMEDIUM 0 BEARLARGE 0 FORESTNEARTOWN 0 FORESTNOTNEARTOWN 0 DARKFOREST 0 DARKERFOREST 0 DARKESTFOREST 0 WINDFOREST 0 } >
<regionlimit    { FORESTNEARTOWN 5 FORESTNOTNEARTOWN 30 DARKFOREST 35 DARKERFOREST 45 DARKESTFOREST 25 ZOO_FOREST 1 BEARSMALL 5 BEARMEDIUM 10 BEARLARGE 18 WINDFOREST 5 } >
<sex            OTHER>
<name           502>
<corpsename     bear>
<alignment      NEUTRAL>
<hue            no_colors>
<objvar         int petCanTame   50>
<objvar         int petAckSfx    animals_bear1>
<objvar         int petRefuseSfx animals_bear4>
<script         monster>
<sfxnotice      animals_bear1>
<sfxidle        animals_bear2>
<sfxhit         animals_bear3>
<sfxwashit      animals_bear4>
<sfxdie         animals_bear5>
<strength       1d25+75>
<intelligence   1d4+10>
<dexterity      1d20+55>
<hp             1d25+75>
<mana           0>
<stamina        1d20+55>
<sk             skill_melee          1d200+400>
<sk				      skill_weapon_hand    1d200+400>
<sk             skill_battle_defense 1d200+250>
<sk             skill_magic_defense  1d200+200>
<naturalwc      2d6>
<naturalac      8>
<resource       food         5  1    FISH>
<resource       food         5  1    FRUIT>
<resource       food        15  3    MEAT>
<resource       shelter    576  1    FOREST>
<resource       shelter    288  1    CAVES>
<resource       production   9  0    CARNIVOREMEAT>
<resource       production  12  0    FUR>
<resource       desire       1 -3    DANGER>
<resource       desire       1 -3    HOUSES>
<resource       desire       5  1    HONEY>
<@@@ END @@@>
<503>
# sewer rat     Difficulty 2
<type           NORMAL SEWER_RAT>
<frequency      100>
<region         { FORESTNOTNEARTOWN 0 DUNGN 0 ZOO_DUNGN 0 SEWERRATSMALL 0 SEWERRATMEDIUM 0 SEWERRATLARGE 0 } >
<regionlimit    { FORESTNOTNEARTOWN 20 DUNGN 20 ZOO_DUNGN 1 SEWERRATSMALL 10 SEWERRATMEDIUM 20 SEWERRATLARGE 50 } >
<sex            OTHER>
<name           503>
<corpsename     "sewer rat">
<alignment      EVIL>
<notoriety      -125>
<hue            brown_colors>
<objvar         int petCanTame   20>
<objvar         int petAckSfx    animals_rat1>
<objvar         int petRefuseSfx animals_rat4>
<script         monster>
<sfxnotice      animals_rat1>
<sfxidle        animals_rat2>
<sfxhit         animals_rat3>
<sfxwashit      animals_rat4>
<sfxdie         animals_rat5>
<strength       2d5+9>
<intelligence   1d5+5>
<dexterity      1d10+35>
<hp             2d5+9>
<mana           0>
<stamina        1d10+35>
<sk             skill_melee          1d50+50>
<sk             skill_magic_defense  1d50+50>
<sk             skill_weapon_hand    1d50+50>
<sk             skill_battle_defense 1d100+350>
<naturalwc      1d3>
<naturalac      1d3>
<resource       shelter    288  1    CAVES>
<resource       shelter    288  1    DUNGEONS>
<resource       shelter    288  1    SPOOKINESS>
<resource       production   3  0    MEAT>
<resource       desire       1 -3    DANGER>
<resource       desire       1 -3    LIGHT>
<resource       desire       1 -3    HOUSES>
<resource       desire       8  1    SELF>
<@@@ END @@@>
<504>
# brown bear    Difficulty 3
<type           NORMAL BROWN_BEAR>
<frequency      120>
<region         { ZOO_FOREST 0 BROWNBEARSMALL 0 BROWNBEARMEDIUM 0 BROWNBEARLARGE 0 FORESTNEARTOWN 0 FORESTNOTNEARTOWN 0 DARKFOREST 0 DARKERFOREST 0 WINDFOREST 0 } >
<regionlimit    { ZOO_FOREST 1 BROWNBEARSMALL 5 BROWNBEARMEDIUM 15 BROWNBEARLARGE 20 FORESTNEARTOWN 3 FORESTNOTNEARTOWN 20 DARKFOREST 25 DARKERFOREST 25 WINDFOREST 3 } >
<sex            OTHER>
<name           504>
<corpsename     bear>
<alignment      NEUTRAL>
<hue            brown_colors>
<objvar         int petCanTame   55>
<objvar         int petAckSfx    animals_bear1>
<objvar         int petRefuseSfx animals_bear4>
<script         monster>
<sfxnotice      animals_bear1>
<sfxidle        animals_bear2>
<sfxhit         animals_bear3>
<sfxwashit      animals_bear4>
<sfxdie         animals_bear5>
<strength       1d25+75>
<intelligence   1d25+22>
<dexterity      1d20+25>
<hp             1d25+75>
<mana           0>
<stamina        1d20+55>
<sk             skill_melee          1d200+400>
<sk             skill_weapon_hand    1d200+400>
<sk             skill_battle_defense 1d175+375>
<sk             skill_magic_defense  1d100+250>
<naturalwc      2d5+3>
<naturalac      12>
<resource       food         5  1    FISH>
<resource       food         5  1    FRUIT>
<resource       food        15  3    MEAT>
<resource       shelter    576  1    FOREST>
<resource       shelter    288  1    CAVES>
<resource       production   9  0    CARNIVOREMEAT>
<resource       production  12  0    FUR>
<resource       desire       1 -3    DANGER>
<resource       desire       1 -3    HOUSES>
<@@@ END @@@>
<505>
# timber wolf   Difficulty 3
<type           NORMAL TIMBER_WOLF>
<frequency      120>
<region         { ZOO_FOREST 0 TIMBERWOLFSMALL 0 TIMBERWOLFMEDIUM 0 TIMBERWOLFLARGE 0 FORESTNEARTOWN 0 FORESTNOTNEARTOWN 0 DARKFOREST 0 DARKERFOREST 0 WINDFOREST 0 } >
<regionlimit    { ZOO_FOREST 1 TIMBERWOLFSMALL 5 TIMBERWOLFMEDIUM 10 TIMBERWOLFLARGE 15 FORESTNEARTOWN 15 FORESTNOTNEARTOWN 35 DARKFOREST 35 DARKERFOREST 35 WINDFOREST 5 } >
<sex            OTHER>
<name           505>
<corpsename     "timber wolf">
<alignment      NEUTRAL>
<hue            no_colors>
<objvar         int petCanTame   40>
<objvar         int petAckSfx    animals_wolf1>
<objvar         int petRefuseSfx animals_wolf4>
<script         monster>
<sfxnotice      animals_wolf1>
<sfxidle        animals_wolf2>
<sfxhit         animals_wolf3>
<sfxwashit      animals_wolf4>
<sfxdie         animals_wolf5>
<strength       1d25+55>
<intelligence   1d15+10>
<dexterity      1d20+55>
<hp             1d25+55>
<mana           0>
<stamina        1d20+55>
<sk             skill_melee          1d200+300>
<sk             skill_weapon_hand    1d200+400>
<sk             skill_magic_defense  1d175+275>
<sk             skill_battle_defense 1d125+425>
<naturalwc      2d4+2>
<naturalac      9>
<resource       food        15  3    MEAT>
<resource       shelter    576  1    FOREST>
<resource       shelter    288  1    CAVES>
<resource       production   3  0    CARNIVOREMEAT>
<resource       production   5  0    FUR>
<resource       desire       1 -3    DANGER>
<resource       desire       1 -3    HOUSES>
<resource       desire       5  1    SELF>
<@@@ END @@@>
<506>
# cat           Difficulty 1
<type           NORMAL CATS>
<frequency      80>
<region         { FARM 0 CITY 0 CATSMALL 0 CATMEDIUM 0 CATLARGE 0 FORESTNEARTOWN 0 NEWBIE 0 WINDFOREST 0 } >
<regionlimit    { FARM 5 CITY 30 CATSMALL 5 CATMEDIUM 15 CATLARGE 30 FORESTNEARTOWN 10 NEWBIE 10 WINDFOREST 3 } >
<sex            OTHER>
<name           506>
<corpsename     cat>
<alignment      NEUTRAL>
<hue            animal_colors>
<objvar         int petCanTame   20>
<objvar         int petAckSfx    animals_cat1>
<objvar         int petRefuseSfx animals_cat4>
<sfxnotice      animals_cat1>
<sfxidle        animals_cat2>
<sfxhit         animals_cat3>
<sfxwashit      animals_cat4>
<sfxdie         animals_cat5>
<strength       1d9+9>
<intelligence   1d25+5>
<dexterity      1d20+25>
<hp             6d2+5>
<mana           0>
<stamina        15d3+25>
<sk             skill_melee          1d90+90>
<sk				      skill_weapon_hand    1d100+90>
<sk             skill_magic_defense  1d150+150>
<sk             skill_battle_defense 1d225+225>
<naturalwc      1d1>
<naturalac      4>
<resource       food         5  1    MEAT>
<resource       food         5  1    FISH>
<resource       shelter     16  1    HOUSES>
<resource       shelter      1  0    HUMANS>
<resource       production   2  0    CARNIVOREMEAT>
<resource       desire       1 -3    DANGER>
<resource       desire       1 -3    WATER>
<resource       desire       1  3    HUMANS>
<resource       desire       1  1    WINDOWS>
<@@@ END @@@>
<507>
# chicken       Difficulty 1
<type           NORMAL CHICKENS>
<frequency      150>
<region         { LIVESTK 0 CHICKENSMALL 0 CHICKENMEDIUM 0 CHICKENLARGE 0 FORESTNEARTOWN 0 FORESTNOTNEARTOWN 0 NEWBIE 0 WINDFOREST 0 } >
<regionlimit    { LIVESTK 15 CHICKENSMALL 19 CHICKENMEDIUM 29 CHICKENLARGE 39 FORESTNEARTOWN 20 FORESTNOTNEARTOWN 20 NEWBIE 15 WINDFOREST 7 } >
<sex            OTHER>
<name           507>
<corpsename     chicken>
<alignment      NEUTRAL>
<hue            no_colors>
<objvar         int petCanTame   20>
<objvar         int petAckSfx    animals_chicken1>
<objvar         int petRefuseSfx animals_chicken4>
<sfxnotice      animals_chicken1>
<sfxidle        animals_chicken2>
<sfxhit         animals_chicken3>
<sfxwashit      animals_chicken4>
<sfxdie         animals_chicken5>
<strength       1d5+5>
<intelligence   1d5>
<dexterity      1d10+15>
<hp             2d4>
<mana           0>
<stamina        15d3+15>
<sk             skill_melee          1d50+50>
<sk				      skill_weapon_hand    1d50+50>
<sk             skill_magic_defense  1d50+40>
<sk             skill_battle_defense 1d100+150>
<naturalwc      1d1>
<naturalac      1>
<resistances    slashing>
<resistances    piercing>
<resistances    bashing>
<resource       food         5  1    GRAIN>
<resource       shelter      1  1    CHICKEN_NESTS>
<resource       production   2  0    MEAT>
<resource       production  25  0    FEATHERS>
<resource       desire       1 -3    DANGER>
<resource       desire       2 -6    MEAT>
<resource       desire       5  1    SELF>
<@@@ END @@@>
<508>
# cow           Difficulty 2
<type           NORMAL COWS>
<frequency      125>
<region         { LIVESTK 0 COWSMALL 0 COWMEDIUM 0 COWLARGE 0 FORESTNEARTOWN 0 FORESTNOTNEARTOWN 0 NEWBIE 0 WINDFOREST 0 } >
<regionlimit    { LIVESTK 5 COWSMALL 9 COWMEDIUM 17 COWLARGE 25 FORESTNEARTOWN 20 FORESTNOTNEARTOWN 40 NEWBIE 10 WINDFOREST 7 } >
<sex            OTHER>
<name           508>
<corpsename     cow>
<alignment      NEUTRAL>
<hue            no_colors>
<objvar         int petCanTame   30>
<objvar         int petAckSfx    animals_cow1>
<objvar         int petRefuseSfx animals_cow4>
<sfxnotice      animals_cow1>
<sfxidle        animals_cow2>
<sfxhit         animals_cow3>
<sfxwashit      animals_cow4>
<sfxdie         animals_cow5>
<strength       2d18+40>
<intelligence   2d5>
<dexterity      1d20+25>
<hp             5d9+40>
<mana           0>
<stamina        2d13+30>
<sk             skill_melee          1d175+275>
<sk             skill_weapon_hand    1d175+275>
<sk             skill_magic_defense  1d75+175>
<sk             skill_battle_defense 1d125+225>
<naturalwc      2d4+4>
<naturalac      9>
<resource       food      588  64    GRASS>
<resource       food       25   5    GRAIN>
<resource       food       25   5    HAY>
<resource       shelter    32   1    GRASS>
<resource       shelter     1   1    STABLES>
<resource       production 40   0    MEAT>
<resource       production 12   0    LEATHER>
<resource       desire      1  -3    DANGER>
<resource       desire      3  -6    MEAT>
<resource       desire      5   1    SELF>
<script cow 100>
<@@@ END @@@>
<509>
# raven         Difficulty 1
<type           NORMAL RAVENS>
<frequency      80>
<region         { RUINS 0 ZOO_FOREST 0 RAVENSMALL 0 RAVENMEDIUM 0 RAVENLARGE 0 FORESTNEARTOWN 0 FORESTNOTNEARTOWN 0 DARKFOREST 0 DARKERFOREST 0 NEWBIE 0 WINDFOREST 0 } >
<regionlimit    { RUINS 1 ZOO_FOREST 1 RAVENSMALL 10 RAVENMEDIUM 20 RAVENLARGE 30 FORESTNEARTOWN 15 FORESTNOTNEARTOWN 15 DARKFOREST 15 DARKERFOREST 15 NEWBIE 20 WINDFOREST 5 } >
<sex            OTHER>
<name           509>
<corpsename     raven>
<alignment      NEUTRAL>
<hue            black_colors>
<objvar         int petCanTame   19>
<objvar         int petAckSfx    animals_raven1>
<objvar         int petRefuseSfx animals_raven4>
<script         monster>
<sfxnotice      animals_raven1>
<sfxidle        animals_raven2>
<sfxhit         animals_raven3>
<sfxwashit      animals_raven4>
<sfxdie         animals_raven5>
<strength       2d4+9>
<intelligence   1d5+5>
<dexterity      1d10+25>
<hp             5d3>
<mana           0>
<stamina        25d3+25>
<movetype       MT_FLYING>
<sk             skill_melee          1d85+85>
<sk				      skill_weapon_hand    1d85+85>
<sk             skill_magic_defense  1d50+50>
<sk             skill_battle_defense 1d250+101>
<naturalwc      1d1>
<naturalac      3>
<resistances    slashing>
<resistances    piercing>
<resistances    bashing>
<resource       food        15  3    GRAIN>
<resource       food        15  1    FRUIT>
<resource       food        15  1    CROPS>
<resource       shelter     56  1    SPOOKINESS>
<resource       production   2  0    MEAT>
<resource       production  25  0    FEATHERS>
<resource       desire       1 -3    DANGER>
<resource       desire       1 -6    MEAT>
<resource       desire       1 -3    HUMANS>
<resource       desire       1 -3    WATER>
<resource       desire       1 -3    MOUNTAINS>
<resource       desire       5  1    SELF>
<@@@ END @@@>
<510>
# doe           Difficulty 2
<type           NORMAL DOES>
<frequency      200>
<region         { ZOO_FOREST 0 ZOO_PLAINS 0 DOESMALL 0 DOEMEDIUM 0 DOELARGE 0 FORESTNEARTOWN 0 FORESTNOTNEARTOWN 0 DARKFOREST 0 DARKERFOREST 0 NEWBIE 0 WINDFOREST 0 } >
<regionlimit    { ZOO_FOREST 1 ZOO_PLAINS 1 DOESMALL 10 DOEMEDIUM 20 DOELARGE 30 FORESTNEARTOWN 40 FORESTNOTNEARTOWN 50 DARKFOREST 45 DARKERFOREST 40 NEWBIE 30 WINDFOREST 10 } >
<sex            OTHER>
<name           510>
<corpsename     deer>
<alignment      NEUTRAL>
<script         monster>
<objvar         int petCanTame   40>
<objvar         int petAckSfx    animals_deer3>
<objvar         int petRefuseSfx animals_deer4>
<sfxhit         animals_deer3>
<sfxwashit      animals_deer4>
<sfxdie         animals_deer5>
<strength       2d16+19>
<intelligence   2d16+15>
<dexterity      2d16+45>
<hp             6d4+25>
<mana           0>
<stamina        6d3+35>
<sk             skill_melee          2d60+190>
<sk				      skill_weapon_hand    2d60+260>
<sk             skill_magic_defense  2d60+150>
<sk             skill_battle_defense 2d60+225>
<naturalwc      1d8+3>
<naturalac      8>
<resource       food       576  64    GRASS>
<resource       food        25   1    CROPS>
<resource       food        25   1    FRUIT>
<resource       shelter    576   1    FOREST>
<resource       production  25   0    MEAT>
<resource       production   8   0    LEATHER>
<resource       desire       1  -3    DANGER>
<resource       desire       1  -3    HOUSES>
<resource       desire       3  -6    MEAT>
<resource       desire       5   1    SELF>
<@@@ END @@@>
<511>
# dog           Difficulty 1
<type           NORMAL DOGS>
<frequency      100>
<region         { FARM 0 CITY 0 DOGSMALL 0 DOGMEDIUM 0 DOGLARGE 0 FORESTNEARTOWN 0 NEWBIE 0 WINDFOREST 0 } >
<regionlimit    { FARM 1 CITY 10 DOGSMALL 10 DOGMEDIUM 15 DOGLARGE 20 FORESTNEARTOWN 10 NEWBIE 10 WINDFOREST 4 } >
<sex            OTHER>
<name           511>
<corpsename     dog>
<alignment      NEUTRAL>
<hue            animal_colors>
<objvar         int petCanTame   3>
<objvar         int petAckSfx    animals_dog1>
<objvar         int petRefuseSfx animals_dog4>
<sfxnotice      animals_dog1>
<sfxidle        animals_dog2>
<sfxhit         animals_dog3>
<sfxwashit      animals_dog4>
<sfxdie         animals_dog5>
<strength       2d6+25>
<intelligence   4d3+25>
<dexterity      3d6+25>
<hp             3d4+25>
<mana           0>
<stamina        6d4+25>
<sk             skill_melee          2d60+190>
<sk             skill_weapon_hand    2d60+190>
<sk             skill_magic_defense  1d250+220>
<sk             skill_battle_defense 1d250+280>
<naturalwc      1d4+3>
<naturalac      6>
<resource       food        5  1    MEAT>
<resource       shelter    32  1    HOUSES>
<resource       shelter     2  0    HUMANS>
<resource       production  3  0    CARNIVOREMEAT>
<resource       desire      1 -3    DANGER>
<resource       desire      5  3    HUMANS>
<resource       desire      3  1    SELF>
<@@@ END @@@>
<512>
# eagle         Difficulty 2
<type           NORMAL EAGLES>
<frequency      100>
<region         { ZOO_FOREST 0 EAGLESMALL 0 EAGLEMEDIUM 0 EAGLELARGE 0 FORESTNEARTOWN 0 FORESTNOTNEARTOWN 0 DARKFOREST 0 DARKERFOREST 0 DARKESTFOREST 0 WINDFOREST 0 } >
<regionlimit    { ZOO_FOREST 1 EAGLESMALL 10 EAGLEMEDIUM 20 EAGLELARGE 30 FORESTNEARTOWN 5 FORESTNOTNEARTOWN 30 DARKFOREST 20 DARKERFOREST 20 DARKESTFOREST 20 WINDFOREST 5 } >
<sex            OTHER>
<name           512>
<corpsename     eagle>
<alignment      NEUTRAL>
<hue            no_colors>
<objvar		int flying 1>
<objvar		int predator 1>
<objvar		int pack 1>
<objvar         int petCanTame   35>
<objvar         int petAckSfx    animals_eagle1>
<objvar         int petRefuseSfx animals_eagle4>
<script         monster>
<sfxnotice      animals_eagle1>
<sfxidle        animals_eagle2>
<sfxhit         animals_eagle3>
<sfxwashit      animals_eagle4>
<sfxdie         animals_eagle5>
<strength       2d9+29>
<intelligence   3d5+5>
<dexterity      1d25+35>
<hp             5d3+25>
<mana           0>
<stamina        25d3+35>
<movetype       MT_FLYING>
<sk             skill_melee          1d190+180>
<sk				      skill_weapon_hand    1d100+200>
<sk             skill_magic_defense  3d50+150>
<sk             skill_battle_defense 1d150+250>
<naturalwc      2d4+2>
<naturalac      11>
<resource       food         5  1    FRUIT>
<resource       food         5  1    MEAT>
<resource       food         5  1    FISH>
<resource       shelter    288  1    FOLIAGE>
<resource       shelter    576  1    MOUNTAINS>
<resource       production   2  0    CARNIVOREMEAT>
<resource       production  36  0    FEATHERS>
<resource       desire       1 -3    DANGER>
<resource       desire       1 -3    HOUSES>
<resource       desire       1 -3    WATER>
<resource       desire       2 -4    MEAT>
<resource       desire       1 -3    MOUNTAINS>
<@@@ END @@@>
<513>
# goat          Difficulty 1
<type           NORMAL GOATS>
<frequency      150>
<region         { LIVESTK 0 GOATSMALL 0 GOATMEDIUM 0 GOATLARGE 0 FORESTNEARTOWN 0 FORESTNOTNEARTOWN 0 GOAT 0 NEWBIE 0 WINDFOREST 0 } >
<regionlimit    { LIVESTK 10 GOATSMALL 15 GOATMEDIUM 25 GOATLARGE 35 FORESTNEARTOWN 25 FORESTNOTNEARTOWN 25 GOAT 1 NEWBIE 10 WINDFOREST 8 } >
<sex            OTHER>
<name           513>
<corpsename     goat>
<alignment      NEUTRAL>
<objvar         int petCanTame   30>
<objvar         int petAckSfx    animals_goat1>
<objvar         int petRefuseSfx animals_goat4>
<sfxnotice      animals_goat1>
<sfxidle        animals_goat2>
<sfxhit         animals_goat3>
<sfxwashit      animals_goat4>
<sfxdie         animals_goat5>
<strength       2d5+19>
<intelligence   2d5+5>
<dexterity      2d6+35>
<hp             STR>
<mana           0>
<stamina        5d3+35>
<sk             skill_melee          2d50+190>
<sk			       	skill_weapon_hand    1d100+200>
<sk             skill_magic_defense  2d50+150>
<sk             skill_battle_defense 2d60+250>
<naturalwc      1d3+2>
<naturalac      5>
<resource       food       576  64    GRASS>
<resource       food         5   1    FRUIT>
<resource       food         5   1    GARBAGE>
<resource       food         5   1    LEATHER>
<resource       shelter    576   1    GRASS>
<resource       shelter      1   1    STABLES>
<resource       production  14   0    MEAT>
<resource       production   8   0    LEATHER>
<resource       desire       3  -6    MEAT>
<resource       desire       1  -3    DANGER>
<resource       desire       1  -3    HOUSES>
<resource       desire       5   3    HUMANS>
<resource       desire       4   1    SELF>
<@@@ END @@@>
<514>
# rabbit        Difficulty 1
<type           NORMAL RABBITS>
<frequency      200>
<region         { LIVESTK 0 FORESTNOTNEARTOWN 0 FORESTNEARTOWN 0 FARM 0 ZOO_PLAINS 0 ZOO_FOREST 0 RABBITSMALL 0 RABBITMEDIUM 0 RABBITLARGE 0 DARKFOREST 0 DARKERFOREST 0 DARKESTFOREST 0 NEWBIE 0 WINDFOREST 0 } >
<regionlimit    { LIVESTK 3 FORESTNOTNEARTOWN 120 FORESTNEARTOWN 76 FARM 10 ZOO_PLAINS 1 ZOO_FOREST 1 RABBITSMALL 10 RABBITMEDIUM 40 RABBITLARGE 60 DARKFOREST 30 DARKERFOREST 30 DARKESTFOREST 20 NEWBIE 76 WINDFOREST 25 } >
<sex            OTHER>
<name           514>
<corpsename     hare>
<alignment      NEUTRAL>
<hue            { animal_colors 1 no_colors 1 } >
<objvar         int petCanTame   5>
<objvar         int petAckSfx    animals_rabbit3>
<objvar         int petRefuseSfx animals_rabbit4>
<script         monster>
<sfxhit         animals_rabit3>
<sfxwashit      animals_rabit4>
<sfxdie         animals_rabit5>
<strength       1d5+5>
<intelligence   1d9+5>
<dexterity      1d13+25>
<hp             4d2>
<mana           0>
<stamina        15d3+25>
<sk             skill_melee          1d50+50>
<sk             skill_weapon_hand    1d50+50>
<sk             skill_magic_defense  1d90+50>
<sk             skill_battle_defense 1d130+250>
<naturalwc      1d2>
<naturalac      1d6+1>
<resource       food       576  64    GRASS>
<resource       food        55   1    CROPS>
<resource       food        55   1    FOREST>
<resource       shelter    576   1    GRASS>
<resource       shelter     50   1    WOOD>
<resource       shelter     40   1    FOLIAGE>
<resource       production   2   0    MEAT>
<resource       production   4   0    FUR>
<resource       desire       2  -6    MEAT>
<resource       desire       1  -3    DANGER>
<resource       desire       1  -3    HOUSES>
<resource       desire       3   1    SELF>
<@@@ END @@@>
<515>
# horse         Difficulty 2
<type           NORMAL HORSES>
<frequency      100>
<region         { ZOO_PLAINS HORSESMALL 0 HORSEMEDIUM 0 HORSELARGE 0 FORESTNEARTOWN 0 FORESTNOTNEARTOWN 0 HORSE 0 NEWBIE 0 WINDFOREST 0 } >
<regionlimit    { ZOO_PLAINS 1 HORSESMALL 15 HORSEMEDIUM 25 HORSELARGE 35 FORESTNEARTOWN 25 FORESTNOTNEARTOWN 45 HORSE 1 NEWBIE 10 WINDFOREST 8 } >
<sex            OTHER>
<name           515>
<corpsename     horse>
<alignment      NEUTRAL>
<objvar         int petCanTame   45>
<objvar         int petAckSfx    animals_horse1>
<objvar         int petRefuseSfx animals_horse4>
<script         horse>
<script         monster>
<sfxnotice      animals_horse1>
<sfxidle        animals_horse2>
<sfxhit         animals_horse3>
<sfxwashit      animals_horse4>
<sfxdie         animals_horse5>
<strength       4d20+40>
<intelligence   1d5+5>
<dexterity      1d20+35>
<hp             4d20+40>
<mana           0>
<stamina        1d20+35>
<sk             skill_melee          3d50+290>
<sk             skill_weapon_hand    3d50+290>
<sk             skill_magic_defense  1d50+250>
<sk             skill_battle_defense 1d100+350>
<naturalwc      2d5+2>
<naturalac      9>
<resource       food         55   1    CROPS>
<resource       food         55   1    FRUIT>
<resource       food         55   1    GRAIN>
<resource       food         55   1    HAY>
<resource       food        576  64    GRASS>
<resource       shelter       1   1    STABLES>
<resource       shelter       1   1    HUMANS>
<resource       production   15   0    MEAT>
<resource       production   10   0    LEATHER>
<resource       production    8   0    RIDABLE>
<resource       desire        1  -3    DANGER>
<resource       desire        3  -6    MEAT>
<resource       desire        5   1    SELF>
<resource       desire        5   1    HUMANS>
<@@@ END @@@>
<516>
# big pig       Difficulty 2
<type           NORMAL BIGPIG>
<frequency      100>
<region         { LIVESTK 0 BIGPIGSMALL 0 BIGPIGMEDIUM 0 BIGPIGLARGE 0 FORESTNEARTOWN 0 NEWBIE 0 WINDFOREST 0 } >
<regionlimit    { LIVESTK 2 BIGPIGSMALL 5 BIGPIGMEDIUM 15 BIGPIGLARGE 25 FORESTNEARTOWN 25 NEWBIE 10 WINDFOREST 8 } >
<sex            OTHER>
<name           516>
<corpsename     pig>
<alignment      NEUTRAL>
<objvar         int petCanTame   45>
<objvar         int petAckSfx    animals_pig1>
<objvar         int petRefuseSfx animals_pig4>
<script         monster>
<sfxnotice      animals_pig1>
<sfxidle        animals_pig2>
<sfxhit         animals_pig3>
<sfxwashit      animals_pig4>
<sfxdie         animals_pig5>
<strength       2d16+29>
<intelligence   2d16+25>
<dexterity      2d16+45>
<hp             6d4+35>
<mana           0>
<stamina        6d3+45>
<sk             skill_melee          3d60+210>
<sk				      skill_weapon_hand    3d60+210>
<sk             skill_magic_defense  3d60+170>
<sk             skill_battle_defense 3d60+145>
<naturalwc      1d4+2>
<naturalac      7>
<resource       food        55  1    FRUIT>
<resource       food        55  1    CROPS>
<resource       food        55  1    GRAIN>
<resource       food        55  1    GARBAGE>
<resource       shelter     50  1    WOOD>
<resource       shelter     64  1    DIRT>
<resource       shelter      1  1    STABLES>
<resource       production  12  0    MEAT>
<resource       desire       1 -3    DANGER>
<resource       desire       5  1    SELF>
<@@@ END @@@>
<517>
# cougar        Difficulty 3
<type           NORMAL COUGARS>
<frequency      100>
<region         { ZOO_FOREST 0 COUGARSMALL 0 COUGARMEDIUM 0 COUGARLARGE 0 FORESTNEARTOWN 0 FORESTNOTNEARTOWN 0 DARKFOREST 0 DARKERFOREST 0 WINDFOREST 0 } >
<regionlimit    { ZOO_FOREST 1 COUGARSMALL 5 COUGARMEDIUM 10 COUGARLARGE 20 FORESTNEARTOWN 10 FORESTNOTNEARTOWN 20 DARKFOREST 20 DARKERFOREST 28 WINDFOREST 4 } >
<sex            OTHER>
<name           517>
<corpsename     cougar>
<alignment      NEUTRAL>
<objvar         int petCanTame   55>
<objvar         int petAckSfx    animals_cougar1>
<objvar         int petRefuseSfx animals_cougar4>
<script         monster>
<sfxnotice      animals_cougar1>
<sfxidle        animals_cougar2>
<sfxhit         animals_cougar3>
<sfxwashit      animals_cougar4>
<sfxdie         animals_cougar5>
<strength       1d25+55>
<intelligence   1d25+25>
<dexterity      1d20+65>
<hp             1d25+55>
<mana           0>
<stamina        1d20+65>
<sk             skill_melee          1d150+450>
<sk				      skill_weapon_hand    1d150+450>
<sk             skill_magic_defense  1d150+150>
<sk             skill_battle_defense 1d100+550>
<naturalwc      2d6>
<naturalac      8>
<resource       food        15  3    MEAT>
<resource       shelter    288  1    CAVES>
<resource       shelter    576  0    MOUNTAINS>
<resource       shelter    576  0    FOREST>
<resource       production   6  0    CARNIVOREMEAT>
<resource       production  10  0    FUR>
<resource       desire       1 -3    DANGER>
<resource       desire       1 -3    HOUSES>
<resource       desire       1 -3    WATER>
<resource       desire       5  1    SELF>
<resource       desire       1  1    FOLIAGE>
<@@@ END @@@>
<518>
# panther       Difficulty 3
<type           NORMAL PANTHERS>
<frequency      100>
<region         { ZOO_JUNGLE 0 PANTHERSMALL 0 PANTHERMEDIUM 0 PANTHERLARGE 0 JUNGLENEARTOWN 0 JUNGLENOTNEARTOWN 0 FORESTNEARTOWN 0 FORESTNOTNEARTOWN 0 DARKFOREST 0 WINDFOREST 0 } >
<regionlimit    { ZOO_JUNGLE 1 PANTHERSMALL 5 PANTHERMEDIUM 10 PANTHERLARGE 20 JUNGLENEARTOWN 5 JUNGLENOTNEARTOWN 15 FORESTNEARTOWN 10 FORESTNOTNEARTOWN 20 DARKFOREST 20 WINDFOREST 4 } >
<sex            OTHER>
<name           518>
<corpsename     panther>
<alignment      NEUTRAL>
<hue            black_colors>
<objvar         int petCanTame   65>
<objvar         int petAckSfx    animals_panther1>
<objvar         int petRefuseSfx animals_panther4>
<script         monster>
<sfxnotice      animals_panther1>
<sfxidle        animals_panther2>
<sfxhit         animals_panther3>
<sfxwashit      animals_panther4>
<sfxdie         animals_panther5>
<strength       1d25+60>
<intelligence   1d25+25>
<dexterity      1d20+85>
<hp             1d25+60>
<mana           0>
<stamina        1d20+85>
<sk             skill_melee          1d150+500>
<sk             skill_weapon_hand    1d150+500>
<sk             skill_magic_defense  1d150+150>
<sk             skill_battle_defense 1d100+550>
<naturalwc      2d7>
<naturalac      8>
<resource       food        15  3    MEAT>
<resource       shelter    288  1    CAVES>
<resource       shelter    576  0    JUNGLE>
<resource       shelter    576  0    GRASS>
<resource       production   6  0    CARNIVOREMEAT>
<resource       production  10  0    FUR>
<resource       desire       1 -3    WATER>
<resource       desire       1 -3    DANGER>
<resource       desire       1 -3    HOUSES>
<resource       desire       5  1    SELF>
<@@@ END @@@>
<519>
# pig           Difficulty 1
<type           NORMAL PIGS>
<frequency      200>
<region         { LIVESTK 0 PIGSMALL 0 PIGMEDIUM 0 PIGLARGE 0 FORESTNEARTOWN 0 FORESTNOTNEARTOWN 0 PIG 0 NEWBIE 0 WINDFOREST 0 } >
<regionlimit    { LIVESTK 10 PIGSMALL 10 PIGMEDIUM 15 PIGLARGE 20 FORESTNEARTOWN 15 FORESTNOTNEARTOWN 20 PIG 5 NEWBIE 10 WINDFOREST 5 } >
<sex            OTHER>
<name           519>
<corpsename     pig>
<alignment      NEUTRAL>
<objvar         int petCanTame   30>
<objvar         int petAckSfx    animals_pig1>
<objvar         int petRefuseSfx animals_pig4>
<sfxnotice      animals_pig1>
<sfxidle        animals_pig2>
<sfxhit         animals_pig3>
<sfxwashit      animals_pig4>
<sfxdie         animals_pig5>
<strength       3d15+19>
<intelligence   1d8+25>
<dexterity      3d15+19>
<hp             3d15+20>
<mana           0>
<stamina        3d15+20>
<sk             skill_melee          3d50+190>
<sk             skill_weapon_hand    3d50+190>
<sk             skill_magic_defense  1d80+250>
<sk             skill_battle_defense 3d50+190>
<naturalwc      2d3>
<naturalac      6>
<resource       food       55  1    FRUIT>
<resource       food       55  1    CROPS>
<resource       food       55  1    GRAIN>
<resource       food       55  1    GARBAGE>
<resource       shelter    50  1    WOOD>
<resource       shelter    64  1    DIRT>
<resource       shelter     1  1    STABLES>
<resource       production  6  0    MEAT>
<resource       desire      1 -3    DANGER>
<resource       desire      5  1    SELF>
<@@@ END @@@>
<520>
# town rat      Difficulty 1
<type           NORMAL TOWN_RAT>
<frequency      100>
<region         { RUINS 0 CITY 0 DOCKS 0 TOWNRATSMALL 0 TOWNRATMEDIUM 0 TOWNRATLARGE 0 FORESTNOTNEARTOWN 0 NEWBIE 0 } >
<regionlimit    { RUINS 8 CITY 12 DOCKS 4 TOWNRATSMALL 10 TOWNRATMEDIUM 20 TOWNRATLARGE 30 FORESTNOTNEARTOWN 20 NEWBIE 20 } >
<sex            OTHER>
<name           520>
<corpsename     rat>
<alignment      NEUTRAL>
<notoriety      -125>
<hue            brown_colors>
<objvar         int petCanTame   20>
<objvar         int petAckSfx    animals_rat1>
<objvar         int petRefuseSfx animals_rat4>
<sfxnotice      animals_rat1>
<sfxidle        animals_rat2>
<sfxhit         animals_rat3>
<sfxwashit      animals_rat4>
<sfxdie         animals_rat5>
<strength       2d4+9>
<intelligence   1d5+5>
<dexterity      1d10+15>
<hp             4d3+5>
<mana           0>
<stamina        15d3+25>
<sk             skill_melee          2d40+90>
<sk				skill_weapon_hand   2d40+90>
<sk             skill_magic_defense  1d50+50>
<sk             skill_battle_defense 1d100+150>
<naturalwc      1d4>
<naturalac      5>
<resource       food        5  1    FOOD>
<resource       food       25  1    GARBAGE>
<resource       shelter    16  0    DOCKS>
<resource       shelter    36  1    HOUSES>
<resource       shelter    16  1    GARBAGE>
<resource       shelter    16  1    SPOOKINESS>
<resource       production  2  0    MEAT>
<resource       desire      1 -3    DANGER>
<resource       desire      1 -6    MEAT>
<resource       desire      1 -3    HUMANS>
<resource       desire      1 -3    LIGHT>
<resource       desire      5  1    SELF>
<resource       desire      2  1    DARKNESS>
<@@@ END @@@>
<521>
# sea serpent   Difficulty 8
<type           NORMAL SEA_SERPENT>
<frequency      25>
<region         OCEAN>
<regionlimit    { OCEAN 1 } >
<sex            OTHER>
<name           521>
<corpsename     "sea serpent">
<alignment      NEUTRAL>
<notoriety      -125>
<hue            blue_colors>
<sfxnotice      monster_seaserp1>
<sfxidle        monster_seaserp2>
<sfxhit         monster_seaserp3>
<sfxwashit      monster_seaserp4>
<sfxdie         monster_seaserp5>
<strength       3d20+165>
<intelligence   3d15+50>
<dexterity      3d10+55>
<hp             3d20+165>
<mana           3d15+50>
<stamina        3d10+55>
<sk             skill_melee          1d100+600>
<sk             skill_magic_defense  1d150+600>
<sk				      skill_weapon_hand    1d100+600>
<sk             skill_battle_defense 1d100+650>
<naturalwc      2d6+3>
<naturalac      15>
<resource       food        25  1    MEAT>
<resource       food       576 64    WATER>
<resource       shelter    576  1    WATER>
<resource       production  50  0    CARNIVOREMEAT>
<resource       production   8  0    SERPENT_SCALES>
<resource       desire       1 -3    DANGER>
<resource       desire       1 -3    COASTLINE>
<resource       desire       5  1    SHIPS>
<@@@ END @@@>
<522>
# orc captain   Difficulty 6
<type           NORMAL ORC_CAP>
<frequency      95>
<region         { ORCCAPSMALL 0 ORCCAPMEDIUM 0 ORCCAPLARGE 0 FORESTNOTNEARTOWN 0 DARKFOREST 0 DARKERFOREST 0 ORCCAMP 0 ORC 0 } >
<regionlimit    { ORCCAPSMALL 3 ORCCAPMEDIUM 8 ORCCAPLARGE 18 FORESTNOTNEARTOWN 5 DARKFOREST 15  DARKERFOREST 25 ORCCAMP 15 ORC 2 } >
<sex            OTHER>
<name           538>
<corpsename     Orcish>
<alignment      EVIL>
<notoriety      -125>
<objvar         int spellCastersLevel 1d3+1>
<objvar         int nonHuman 0>
<script         nonhuman>
<script         nonhumaneq>
<script         loot>
<sfxnotice      monster_orc1>
<sfxidle        monster_orc2>
<sfxhit         monster_orc3>
<sfxwashit      monster_orc4>
<sfxdie         monster_orc5>
<strength       1d35+110>
<intelligence   1d25+85>
<dexterity      1d35+100>
<hp             1d35+110>
<mana           1d25+85>
<stamina        1d35+100>
<sk             skill_melee           1d150+850>
<sk             skill_magic_defense   1d150+700>
<sk             skill_battle_defense  1d250+700>
<sk             skill_magic           1d250+600>
<sk             skill_weapon_slashing 1d250+700>
<naturalwc      2d9>
<naturalac      17>
<eq             { rich_backpack 3 filthyrich_backpack 1 } 0 0 1>
<eq             thigh_boots 0 0 1 SELFCONTAINED>
<eq             { random_jewel 1 0 1 } 0 0 1 SELFCONTAINED>
<friends	{ 538 0 602 0 603 0 542 0 }>
<resource       food        15  3    MEAT>
<resource       shelter    576  1    CAVES>
<resource       shelter    576  1    DUNGEONS>
<resource       shelter     64  1    ORCCAMP>
<resource       production   9  0    CARNIVOREMEAT>
<resource       production  16  1    ORCCAMP>
<resource       desire       1 -3    DANGER>
<resource       desire       5  1    SELF>
<@@@ END @@@>
<523>
# dolphin       Difficulty 2
<type           NORMAL DOLPHINS>
<frequency      40>
<region         OCEAN>
<regionlimit    { OCEAN 2 } >
<sex            OTHER>
<name           523>
<corpsename     dolphin>
<alignment      NEUTRAL>
<hue            no_colors>
<sfxnotice      animals_dolphin1>
<sfxidle        animals_dolphin2>
<sfxhit         animals_dolphin3>
<sfxwashit      animals_dolphin4>
<sfxdie         animals_dolphin5>
<strength       2d15+19>
<intelligence   1d15+15>
<dexterity      1d20+65>
<hp             2d15+19>
<mana           0>
<stamina        25d3+65>
<sk             skill_melee          2d50+190>
<sk				      skill_weapon_hand    2d50+190>
<sk             skill_magic_defense  1d50+150>
<sk             skill_battle_defense 1d100+650>
<naturalwc      1d4+2>
<naturalac      8>
<resource       food        5   1    FISH>
<resource       food      576  64    WATER>
<resource       shelter    64   1    WATER>
<resource       production  4   0    MEAT>
<resource       desire      1  -3    COASTLINE>
<resource       desire      1  -3    DANGER>
<resource       desire      5   1    SHIPS>
<resource       desire      5   1    SELF>
<@@@ END @@@>
<524>
# sheep         Difficulty 2
<type           NORMAL WOOLLY_SHEEP>
<frequency      130>
<region         { LIVESTK 0 SHEEP 0 WSHEEPSMALL 0 WSHEEPMEDIUM 0 WSHEEPLARGE 0 FORESTNEARTOWN 0 FORESTNOTNEARTOWN 0 NEWBIE 0 WINDFOREST 0 } >
<regionlimit    { LIVESTK 8 SHEEP 18 WSHEEPSMALL 20 WSHEEPMEDIUM 35 WSHEEPLARGE 43 FORESTNEARTOWN 30 FORESTNOTNEARTOWN 30 NEWBIE 30 WINDFOREST 10 } >
<sex            OTHER>
<name           524>
<corpsename     sheep>
<alignment      NEUTRAL>
<hue            { no_colors 9 black_colors 1 } >
<objvar         int petCanTame   30>
<objvar         int petAckSfx    animals_sheep1>
<objvar         int petRefuseSfx animals_sheep4>
<script         sheep>
<sfxnotice      animals_sheep1>
<sfxidle        animals_sheep2>
<sfxhit         animals_sheep3>
<sfxwashit      animals_sheep4>
<sfxdie         animals_sheep5>
<strength       2d15+19>
<intelligence   1d5+15>
<dexterity      1d10+35>
<hp             2d15+19>
<mana           0>
<stamina        1d20+35>
<sk             skill_melee          2d50+90>
<sk             skill_weapon_hand    2d50+90>
<sk             skill_magic_defense  1d50+50>
<sk             skill_battle_defense 1d100+150>
<naturalwc      1d3>
<naturalac      1d3>
<resource       food       576   64    GRASS>
<resource       food         5    1    CROPS>
<resource       food         5    1    GRAIN>
<resource       food         5    1    HAY>
<resource       shelter    576    1    GRASS>
<resource       shelter     16    1    STABLES>
<resource       shelter      1    0    HUMANS>
<resource       production  15    0    MEAT>
<resource       production  30    5    CLOTH>
<resource       desire       1   -3    DANGER>
<resource       desire       3   -6    MEAT>
<resource       desire       5    1    SELF>
<resource       desire       5    3    HUMANS>
<@@@ END @@@>
<525>
# tropical bird Difficulty 1
<type           NORMAL TROPICAL_BIRD>
<frequency      100>
<region         { SWAMP 0 JUNGLE 0 ZOO_JUNGLE 0 } >
<regionlimit    { SWAMP 50 JUNGLE 50 ZOO_JUNGLE 1 } >
<sex            OTHER>
<name           525>
<corpsename     bird>
<hue            bird_colors>
<alignment      NEUTRAL>
<objvar         int petCanTame   10>
<objvar         int petAckSfx    animals_parrot1>
<objvar         int petRefuseSfx animals_parrot4>
<script         monster>
<sfxnotice      animals_parrot1>
<sfxidle        animals_parrot2>
<sfxhit         animals_parrot3>
<sfxwashit      animals_parrot4>
<sfxdie         animals_parrot5>
<strength       1d4>
<intelligence   1d4>
<dexterity      1d10+25>
<hp             3d2>
<mana           0>
<stamina        25d3+25>
<movetype       MT_FLYING>
<sk             skill_melee          1d50+50>
<sk             skill_weapon_hand    1d50+50>
<sk             skill_magic_defense  1d50+50>
<sk             skill_battle_defense 1d100+150>
<naturalwc      1d1>
<naturalac      1>
<resource       food         3   1    CROPS>
<resource       food         6   1    FRUIT>
<resource       food         3   1    GRAIN>
<resource       food         6   1    INSECTS>
<resource       food         6   1    MUSHROOMS>
<resource       shelter     55   1    FOLIAGE>
<resource       shelter    576   0    GRASS>
<resource       production   2   0    MEAT>
<resource       production  25   0    FEATHERS>
<resource       desire       1  -3    DANGER>
<resource       desire       1  -6    MEAT>
<resource       desire       1  -3    HUMANS>
<resource       desire       1  -3    HOUSES>
<resource       desire       1  -3    WATER>
<resource       desire       1  -3    MOUNTAINS>
<resource       desire       5   1    JUNGLE>
<resource       desire       7   1    SELF>
<@@@ END @@@>
<526>
# bull          Difficulty 4
<type           NORMAL BULLS>
<frequency      100>
<region         { COW 0 LIVESTK 0 BULLSMALL 0 BULLMEDIUM 0 BULLLARGE 0 FORESTNEARTOWN 0 FORESTNOTNEARTOWN 0 WINDFOREST 0 } >
<regionlimit    { COW 3 LIVESTK 3 BULLSMALL 2 BULLMEDIUM 4 BULLLARGE 8 FORESTNEARTOWN 10 FORESTNOTNEARTOWN 10 WINDFOREST 4 } >
<sex            OTHER>
<name           526>
<corpsename     bull>
<alignment      NEUTRAL>
<hue            { brown_colors 1 black_colors 1 white_colors 1 no_colors 1 } >
<objvar         int petCanTame   80>
<objvar         int petAckSfx    animals_cow1>
<objvar         int petRefuseSfx animals_cow4>
<sfxnotice      animals_cow1>
<sfxidle        animals_cow2>
<sfxhit         animals_cow3>
<sfxwashit      animals_cow4>
<sfxdie         animals_cow5>
<strength       2d18+75>
<intelligence   2d15+45>
<dexterity      1d20+55>
<hp             2d18+75>
<mana           0>
<stamina        1d20+55>
<sk             skill_melee          1d175+675>
<sk			       	skill_weapon_hand    1d175+400>
<sk             skill_magic_defense  1d75+175>
<sk             skill_battle_defense 1d125+425>
<naturalwc      1d6+3>
<naturalac      14>
<resource       food       576  64    GRASS>
<resource       food        25   1    GRAIN>
<resource       food        25   1    HAY>
<resource       shelter    576   1    GRASS>
<resource       shelter     16   1    STABLES>
<resource       production  50   0    MEAT>
<resource       production  15   0    LEATHER>
<resource       desire       1  -3    DANGER>
<resource       desire       3  -6    MEAT>
<resource       desire       5   1    SELF>
<script cow 100>
<@@@ END @@@>
<527>
# earth elemental Difficulty 7
<type           NORMAL EARTH_ELEMENTAL>
<frequency      100>
<region         { EARTHELEMENTALSMALL 0 EARTHELEMENTALMEDIUM 0 EARTHELEMENTALLARGE 0 DARKERFOREST 0 } >
<regionlimit    { EARTHELEMENTALSMALL 2 EARTHELEMENTALMEDIUM 4 EARTHELEMENTALLARGE 6 DARKERFOREST 3 } >
<sex            OTHER>
<name           527>
<corpsename     "earth elemental">
<alignment      EVIL>
<notoriety      -125>
<hue            no_colors>
<script         monster>
<sfxnotice      elementl_erthel1>
<sfxidle        elementl_erthel2>
<sfxhit         elementl_erthel3>
<sfxwashit      elementl_erthel4>
<sfxdie         elementl_erthel5>
<strength       1d30+125>
<intelligence   1d22+70>
<dexterity      1d20+65>
<hp             1d30+125>
<mana           1d25+70>
<stamina        1d20+65>
<sk             skill_melee          1d400+600>
<sk             skill_weapon_hand    1d400+600>
<sk             skill_magic_defense  1d450+500>
<sk             skill_battle_defense 2d125+400>
<naturalwc      3d6+2>
<naturalac      17>
<eq             { rich_backpack 3 filthyrich_backpack 1 } 0 0 1>
<eq             { rich_gold_pile 3 filthyrich_gold_pile 1 } 0 0 1 SELFCONTAINED>
<resource       food        64 64    DIRT>
<resource       food        64 64    CAVES>
<resource       shelter    288  1    CAVES>
<resource       shelter     64  1    DIRT>
<resource       shelter    576  1    MOUNTAINS>
<resource       production   8  0    MAGIC>
<resource       desire       1 -3    DANGER>
<resource       desire       5  1    CAVES>
<@@@ END @@@>
<528>
# ettin         Difficulty 6
<type           NORMAL ETTINS>
<frequency      150>
<region         { ZOO_FOREST 0 ETTINSMALL 0 ETTINMEDIUM 0 ETTINLARGE 0 FORESTNOTNEARTOWN 0 DARKFOREST 0 DARKERFOREST 0 } >
<regionlimit    { ZOO_FOREST 1 ETTINSMALL 4 ETTINMEDIUM 7 ETTINLARGE 10 FORESTNOTNEARTOWN 2 DARKFOREST 14 DARKERFOREST 25 } >
<sex            OTHER>
<name           528>
<corpsename     ettin>
<alignment      EVIL>
<notoriety      -125>
<hue            no_colors>
<script         monster>
<script         nonhumaneq>
<script         loot>
<sfxnotice      monster_ettin1>
<sfxidle        monster_ettin2>
<sfxhit         monster_ettin3>
<sfxwashit      monster_ettin4>
<sfxdie         monster_ettin5>
<strength       1d30+135>
<intelligence   1d25+30>
<dexterity      1d20+55>
<hp             1d30+135>
<mana           0>
<stamina        1d20+55>
<sk             skill_melee          1d200+500>
<sk             skill_magic_defense  1d150+400>
<sk             skill_battle_defense 1d100+500>
<sk             skill_weapon_hand    1d100+500>
<naturalwc      2d9+2>
<naturalac      19>
<eq             { rich_backpack 3 filthyrich_backpack 1 } 0 0 1>
<eq             { rich_gold_pile 3 filthyrich_gold_pile 1 } 0 0 1 SELFCONTAINED>
<resistances    bashing>
<resource       food        15  3   MEAT>
<resource       shelter    576  1    FOREST>
<resource       shelter    576  1    MOUNTAINS>
<resource       production  20  0    CARNIVOREMEAT>
<resource       desire       1 -3    DANGER>
<resource       desire       1  -3    HOUSES>
<resource       desire       5  1    SELF>
<resource       desire       5  1    GOLD>
<friends 528>
<friends 538>
<friends 522>
<friends 603>
<friends 602>
<@@@ END @@@>
<529>
# gargoyle      Difficulty 7
<type           NORMAL GARGOYLES>
<frequency      50>
<region         { GARGOYLESMALL 0 GARGOYLEMEDIUM 0 GARGOYLELARGE 0 DARKFOREST 0 DARKERFOREST 0 } >
<regionlimit    { GARGOYLESMALL 2 GARGOYLEMEDIUM 4 GARGOYLELARGE 6 DARKFOREST 4 DARKERFOREST 9 } >
<sex            OTHER>
<name           529>
<corpsename     gargoyle>
<alignment      EVIL>
<notoriety      -125>
<hue            no_colors>
<objvar         int spellCastersLevel 2d3+2>
<script         spellai>
<script         monster>
<sfxnotice      monster_gargyl1>
<sfxidle        monster_gargyl2>
<sfxhit         monster_gargyl3>
<sfxwashit      monster_gargyl4>
<sfxdie         monster_gargyl5>
<strength       1d30+145>
<intelligence   1d25+80>
<dexterity      1d20+75>
<hp             1d30+145>
<mana           1d25+80>
<stamina        1d20+75>
<movetype       MT_FLYING>
<sk             skill_melee          1d200+500>
<sk             skill_magic_defense  1d150+700>
<sk             skill_battle_defense 1d100+350>
<sk             skill_magic	         1d150+700>
<sk             skill_weapon_hand    1d400+400>
<naturalwc      3d6>
<naturalac      16>
<eq             { rich_backpack 1 filthyrich_backpack 3 } 0 0 1>
<eq             random_upper_scroll 0 0 1 SELFCONTAINED>
<eq             random_upper_scroll 0 0 1 SELFCONTAINED>
<eq             random_jewel 0 0 1 SELFCONTAINED>
<resource       food        15  3    MEAT>
<resource       shelter    288  1    CAVES>
<resource       shelter    288  1    DUNGEONS>
<resource       production   8  0    CARNIVOREMEAT>
<resource       desire       1 -3    DANGER>
<resource       desire       1 -3    HOUSES>
<resource       desire       1 -3    WATER>
<resource       desire       1 -3    MOUNTAINS>
<resource       desire       5  1    SELF>
<resource       desire       5  1    GOLD>
<@@@ END @@@>
<530>
# ghost         Difficulty 6
<type           NORMAL GHOSTS>
<frequency      100>
<region         { RUINS 0 CEMETERYEASY 0 CEMETERYHARD 0 GHOSTSMALL 0 GHOSTMEDIUM 0 GHOSTLARGE 0 DARKERFOREST 0 FORESTNOTNEARTOWN 0 GHOST 0 CEMETERY 0 } >
<regionlimit    { RUINS 2 CEMETERYEASY 1 CEMETERYHARD 5 GHOSTSMALL 4 GHOSTMEDIUM 8 GHOSTLARGE 16 DARKERFOREST 18 FORESNOTNEARTOWN 10 GHOST 1 CEMETERY 4 } >
<sex            OTHER>
<name           530>
<corpsename     ghoulish>
<alignment      EVIL>
<notoriety      -125>
<hue            no_colors>
<script         monster>
<sfxnotice      monster_ghost1>
<sfxidle        monster_ghost2>
<sfxhit         monster_ghost3>
<sfxwashit      monster_ghost4>
<sfxdie         monster_ghost5>
<strength       1d25+75>
<intelligence   1d25+35>
<dexterity      1d20+75>
<hp             1d25+75>
<mana           1d25+35>
<stamina        1d20+75>
<sk             skill_melee          1d150+450>
<sk             skill_magic_defense  1d150+350>
<sk             skill_battle_defense 1d100+450>
<sk             skill_weapon_hand    1d100+450>
<naturalwc      2d4+4>
<naturalac      14>
<eq             undead_backpack 0 0 1>
<resource       food        1  1    SPOOKINESS>
<resource       shelter    64  1    SPOOKINESS>
<resource       shelter   288  1    DUNGEONS>
<resource       desire      1 -3    DANGER>
<@@@ END @@@>
<531>
# giant rat     Difficulty 3
<type           NORMAL GIANT_RATS>
<frequency      100>
<region         { DUNGN 0 ZOO_DUNGN 0 GIANTRATSMALL 0 GIANTRATMEDIUM 0 GIANTRATLARGE 0 } >
<regionlimit    { DUNGN 30 ZOO_DUNGN 1 GIANTRATSMALL 8 GIANTRATMEDIUM 16 GIANTRATLARGE 25 } >
<sex            OTHER>
<name           531>
<corpsename     "giant rat">
<alignment      EVIL>
<notoriety      -125>
<objvar         int petCanTame   45>
<objvar         int petAckSfx    animals_grat1>
<objvar         int petRefuseSfx animals_grat4>
<script         monster>
<sfxnotice      monster_grat1>
<sfxidle        monster_grat2>
<sfxhit         monster_grat3>
<sfxwashit      monster_grat1>
<sfxdie         monster_grat2>
<strength       3d15+29>
<intelligence   1d15+15>
<dexterity      1d20+45>
<hp             3d15+19>
<mana           0>
<stamina        1d20+45>
<sk             skill_melee          3d50+290>
<sk				      skill_weapon_hand    3d50+290>
<sk             skill_magic_defense  1d50+250>
<sk             skill_battle_defense 1d100+450>
<naturalwc      2d4+1>
<naturalac      9>
<resource       food         9  3    MEAT>
<resource       shelter    288  0    DUNGEONS>
<resource       shelter     16  1    DARKNESS>
<resource       shelter    288  1    SPOOKINESS>
<resource       production   3  0    CARNIVOREMEAT>
<resource       production   6  0    FUR>
<resource       desire       1 -3    DANGER>
<resource       desire       5  1    SELF>
<@@@ END @@@>
<532>
# giant spider  Difficulty 4
<type           NORMAL GIANT_SPIDERS>
<frequency      100>
<region         { DESPISE 0 ZOO_DUNGN 0 GIANTSPIDERSMALL 0 GIANTSPIDERMEDIUM 0 GIANTSPIDERLARGE 0 FORESTNOTNEARTOWN 0 GIANTSPIDER 0 } >
<regionlimit    { DESPISE 10 ZOO_DUNGN 1 GIANTSPIDERSMALL 4 GIANTSPIDERMEDIUM 10 GIANTSPIDERLARGE 16 FORESTNOTNEARTOWN 4 GIANTSPIDER 1 } >
<sex            OTHER>
<name           532>
<corpsename     "giant spider">
<alignment      EVIL>
<notoriety      -125>
<objvar         int petCanTame   70>
<objvar         int petAckSfx    animals_gispidr1>
<objvar         int petRefuseSfx animals_gispidr4>
<script         monster>
<sfxnotice      monster_gispidr1>
<sfxidle        monster_gispidr2>
<sfxhit         monster_gispidr3>
<sfxwashit      monster_gispidr4>
<sfxdie         monster_gispidr5>
<strength       1d25+75>
<intelligence   1d25+35>
<dexterity      1d20+75>
<hp             1d25+75>
<mana           1d25+35>
<stamina        1d20+75>
<sk             skill_melee          1d150+350>
<sk				      skill_weapon_hand    1d150+500>
<sk             skill_magic_defense  1d150+250>
<sk             skill_battle_defense 1d100+350>
<naturalwc      2d7+1>
<naturalac      8>
<eq             spider_silk_reagent 0 0 3 SELFCONTAINED>
<resource       food       15  3    MEAT>
<resource       shelter     1  1    WEB>
<resource       shelter   288  1    CAVES>
<resource       shelter   288  1    DUNGEONS>
<resource       production  8  0    SPIDER_SILK>
<resource       production  1  0    SPOOKINESS>
<resource       desire      1 -3    DANGER>
<friends        532>
<@@@ END @@@>
<533>
# headless      Difficulty 3
<type           NORMAL HEADLESS_ONES>
<frequency      100>
<region         { DESPISE 0 MOUNTAIN 0 ZOO_DUNGN 0 HEADLESSSMALL 0 HEADLESSMEDIUM 0 HEADLESSLARGE 0 DARKERFOREST 0 FORESTNOTNEARTOWN 0 HEADLESS 0 } >
<regionlimit    { DESPISE 6 MOUNTAIN 8 ZOO_DUNGN 1 HEADLESSMALL 5 HEADLESSMEDIUM 14 HEADLESSLARGE 20 DARKERFOREST 10 FORESTNOTNEARTOWN 5 HEADLESS 1 } >
<sex            OTHER>
<name           533>
<corpsename     headless>
<alignment      EVIL>
<notoriety      -125>
<hue            all_skin_colors>
<script         monster>
<script         loot>
<sfxnotice      monster_headls1>
<sfxidle        monster_headls2>
<sfxhit         monster_headls3>
<sfxwashit      monster_headls4>
<sfxdie         monster_headls5>
<strength       1d25+25>
<intelligence   1d15+15>
<dexterity      1d20+35>
<hp             1d25+25>
<mana           1d15+15>
<stamina        1d20+35>
<sk             skill_melee          1d150+250>
<sk				      skill_weapon_hand    1d150+250>
<sk             skill_magic_defense  1d50+150>
<sk             skill_battle_defense 1d100+350>
<naturalwc      3d4>
<naturalac      9>
<eq             average_backpack 0 0 1>
<eq             { meager_gold_pile 3 average_gold_pile 1 } 0 0 1 SELFCONTAINED>
<resource       shelter    576  1    MOUNTAINS>
<resource       shelter    288  1    DUNGEONS>
<resource       production   8  0    MEAT>
<resource       desire       1 -3    DANGER>
<resource       desire       1 -3    HOUSES>
<resource       desire       5  1    GOLD>
<resource       desire       5  1    SELF>
<friends        533>
<@@@ END @@@>
<534>
# liche         Difficulty 7
<type           NORMAL LICHES>
<frequency      100>
<region         { LICHSMALL 0 LICHMEDIUM 0 LICHLARGE 0 LICH 0 } >
<regionlimit    { LICHSMALL 2 LICHMEDIUM 3 LICHLARGE 6 LICH 1 } >
<sex            OTHER>
<name           534>
<corpsename     liche's>
<alignment      EVIL>
<notoriety      -125>
<fleeval        255>
<objvar         int spellCastersLevel 1d2+6>
<script         spellai>
<script         monster>
<script         loot>
<sfxnotice      monster_liche1>
<sfxidle        monster_liche2>
<sfxhit         monster_liche3>
<sfxwashit      monster_liche4>
<sfxdie         monster_liche5>
<strength       1d30+105>
<intelligence   1d30+175>
<dexterity      1d20+65>
<hp             1d30+105>
<mana           1d30+275>
<stamina        1d20+65>
<sk             skill_melee          1d200+700>
<sk             skill_magic_defense  1d200+700>
<sk             skill_battle_defense 1d100+550>
<sk             skill_magic          1d100+700>
<naturalwc      5d3+10>
<naturalac      25>
<eq             undead_backpack 0 0 1>
<eq             targetables magic 100 1 200 0 0 1 SELFCONTAINED>
<eq             activators magic 50 1 100 0 0 1 SELFCONTAINED>
<eq             reagents magic 50 1 100 0 0 1 SELFCONTAINED>
<eq             random_upper_scroll 0 0 1 SELFCONTAINED>
<eq             random_upper_scroll 0 0 1 SELFCONTAINED>
<immunities     slashing>
<immunities     piercing>
<immunities     bashing>
<immunities     ranged>
<immunities     poison>
<resource       shelter     32  1    SPOOKINESS>
<resource       shelter    288  1    DUNGEONS>
<resource       shelter    288  1    CAVES>
<resource       production   1  0    SPOOKINESS>
<resource       desire       1 -3    DANGER>
<resource       desire       5  1    GOLD>
<@@@ END @@@>
<535>
# lizardman     Difficulty 5
<type           NORMAL LIZARD_MAN>
<frequency      100>
<region         { SWAMP 0 ZOO_SWAMP 0 LIZARDMANSMALL 0 LIZARDMANMEDIUM 0 LIZARDMANLARGE 0 FORESTNEARTOWN 0 FORESTNOTNEARTOWN 0 DARKFOREST 0 LIZARDMAN 0 WINDFOREST 0 } >
<regionlimit    { SWAMP 8 ZOO_SWAMP 1 LIZARDMANSMALL 4 LIZARDMANMEDIUM 8 LIZARDMANLARGE 14 FORESTNEARTOWN 1 FORESTNOTNEARTOWN 4 DARKFOREST 8 LIZARDMAN 1 WINDFOREST 1 } >
<sex            OTHER>
<name           535>
<corpsename     lizardman>
<alignment      EVIL>
<notoriety      -125>
<objvar         int nonHuman 2>
<script         nonhuman>
<script         nonhumaneq>
<script         monster>
<script         loot>
<sfxnotice      monster_lzrdmn1>
<sfxidle        monster_lzrdmn2>
<sfxhit         monster_lzrdmn3>
<sfxwashit      monster_lzrdmn4>
<sfxdie         monster_lzrdmn5>
<strength       1d25+95>
<intelligence   1d25+35>
<dexterity      1d20+85>
<hp             1d25+85>
<mana           0>
<stamina        1d20+75>
<sk             skill_melee          1d250+550>
<sk             skill_magic_defense  1d250+350>
<sk             skill_battle_defense 1d200+550>
<sk				      skill_weapon_hand    1d200+500>
<eq             random_coin_purse 0 0 1>
<eq             average_gold_pile 0 0 1 SELF_CONTAINED>
<naturalwc      3d3>
<naturalac      14>
<resource       food        15  3    MEAT>
<resource       shelter    576  1    DUNGEONS>
<resource       shelter    576  1    SWAMP>
<resource       production   6  0    CARNIVOREMEAT>
<resource       production  12  0    LEATHER>
<resource       desire       1 -3    DANGER>
<resource       desire       3 -6    MEAT>
<resource       desire       4  1    SELF>
<@@@ END @@@>
<536>
# mongbat       Difficulty 4
<type           NORMAL MONGBATS>
<frequency      100>
<region         { DESPISE 0 ZOO_DUNGN 0 MONGBATSMALL 0 MONGBATMEDIUM 0 MONGBATLARGE 0 DARKFOREST 0 DARKERFOREST 0 FORESTNOTNEARTOWN 0 MONGBAT 0 } >
<regionlimit    { DESPISE 9 ZOO_DUNGN 1 MONGBATSMALL 5 MONGBATMEDIUM 10 MONGBATLARGE 15 DARKFOREST 10 DARKERFOREST 10 FORESTNOTNEARTOWN 6 MONGBAT 3 } >
<sex            OTHER>
<name           536>
<corpsename     mongbat>
<alignment      EVIL>
<notoriety      -125>
<objvar         int petCanTame   80>
<objvar         int petAckSfx    monster_mngbat1>
<objvar         int petRefuseSfx monster_mngbat4>
<script         monster>
<sfxnotice      monster_mngbat1>
<sfxidle        monster_mngbat2>
<sfxhit         monster_mngbat3>
<sfxwashit      monster_mngbat4>
<sfxdie         monster_mngbat5>
<strength       1d25+55>
<intelligence   1d25+25>
<dexterity      1d20+60>
<hp             1d25+55>
<mana           1d25+25>
<stamina        1d20+60>
<movetype       MT_FLYING>
<sk             skill_melee          1d150+350>
<sk             skill_magic_defense  1d150+150>
<sk             skill_battle_defense 1d100+500>
<sk				      skill_weapon_hand    1d150+200>
<naturalwc      3d3>
<naturalac      10>
<resource       food         9  3    MEAT>
<resource       shelter     16  1    SPOOKINESS>
<resource       shelter    288  1    CAVES>
<resource       shelter    576  1    DUNGEONS>
<resource       production   3  0    CARNIVOREMEAT>
<resource       production   6  0    LEATHER>
<resource       desire       1 -3    DANGER>
<resource       desire       1 -3    HOUSES>
<resource       desire       1 -3    WATER>
<resource       desire       1 -3    MOUNTAINS>
<resource       desire       1  2    SELF>
<friends        536>
<friends        558>
<@@@ END @@@>
<537>
# ogre          Difficulty 6
<type           NORMAL OGRES>
<frequency      100>
<region         { ZOO_FOREST 0 OGRESMALL 0 OGREMEDIUM 0 OGRELARGE 0 DARKFOREST 0 DARKERFOREST 0 FORESTNOTNEARTOWN 0 FORESTNEARTOWN 0 WINDFOREST 0 } >
<regionlimit    { ZOO_FOREST 1 OGRESMALL 3 OGREMEDIUM 7 OGRELARGE 12 DARKFOREST 8 DARKERFOREST 12 FORESTNOTNEARTOWN 1 FORESTNEARTOWN 1 WINDFOREST 1 } >
<sex            OTHER>
<name           537>
<corpsename     ogre>
<alignment      EVIL>
<notoriety      -125>
<script         monster>
<sfxnotice      monster_ogre1>
<sfxidle        monster_ogre2>
<sfxhit         monster_ogre3>
<sfxwashit      monster_ogre4>
<sfxdie         monster_ogre5>
<strength       1d30+165>
<intelligence   1d25+45>
<dexterity      1d20+45>
<hp             1d30+165>
<mana           0>
<stamina        1d20+45>
<sk             skill_melee          1d100+600>
<sk             skill_magic_defense  1d150+450>
<sk             skill_battle_defense 1d100+450>
<sk				      skill_weapon_hand    1d100+700>
<eq             { rich_backpack 3 filthyrich_backpack 1 } 0 0 1>
<eq             club 0 0 1>
<naturalac      5d3>
<naturalwc      16>
<resource       food        15  3    MEAT>
<resource       shelter    576  1    FOREST>
<resource       shelter    576  1    MOUNTAINS>
<resource       production  10  0    CARNIVOREMEAT>
<resource       desire       1 -3    DANGER>
<resource       desire       1 -3    HOUSES>
<resource       desire       5  1    SELF>
<@@@ END @@@>
<538>
# orc           Difficulty 5
<type           NORMAL ORCS>
<frequency      100>
<region         { ZOO_FOREST 0 ORCSMALL 0 ORCMEDIUM 0 ORCLARGE 0 DARKFOREST 0 DARKERFOREST 0 FORESTNOTNEARTOWN 0 FORESTNEARTOWN 0 WINDFOREST 0 ORCCAMP 0 ORC 0 } >
<regionlimit    { ZOO_FOREST 1 ORCSMALL 8 ORCMEDIUM 16 ORCLARGE 20 DARKFOREST 29 DARKERFOREST 39 FORESTNOTNEARTOWN 15 FORESTNEARTOWN 18 WINDFOREST 9 ORCCAMP 20 ORC 20 } >
<sex            OTHER>
<name           538>
<corpsename     orcish>
<alignment      EVIL>
<notoriety      -125>
<objvar         int spellCastersLevel 1d2+1>
<objvar         int nonHuman 0>
<script         nonhuman>
<script         nonhumaneq>
<script         monster>
<script         loot>
<sfxnotice      monster_orc1>
<sfxidle        monster_orc2>
<sfxhit         monster_orc3>
<sfxwashit      monster_orc4>
<sfxdie         monster_orc5>
<strength       1d25+95>
<intelligence   1d25+35>
<dexterity      1d25+80>
<hp             1d25+95>
<mana           1d25+70>
<stamina        1d25+90>
<sk             skill_melee          1d250+550>
<sk             skill_magic_defense  1d250+500>
<sk             skill_battle_defense 1d250+500>
<sk             skill_magic          1d250+500>
<sk             skill_weapon_hand    1d200+500>
<naturalwc      3d3>
<naturalac      14>
<eq             random_coin_purse 0 0 1>
<eq             thigh_boots 0 0 1>
<eq             average_gold_pile 0 0 1 SELFCONTAINED>
<friends	{ 522 0 542 0 602 0 603 0 }>
<resource       food        15  3    MEAT>
<resource       shelter     64  1    ORCCAMP>
<resource       shelter    576  1    CAVES>
<resource       shelter    576  1    DUNGEONS>
<resource       production   9  0    CARNIVOREMEAT>
<resource       desire       1 -3    DANGER>
<resource       desire       5  1    GOLD>
<resource       desire       5  1    SELF>
<@@@ END @@@>
<539>
# reaper        Difficulty 6
<type           NORMAL REAPERS>
<frequency      100>
<region         { ZOO_FOREST 0 REAPERSMALL 0 REAPERMEDIUM 0 REAPERLARGE 0 DARKFOREST 0 DARKERFOREST 0 } >
<regionlimit    { ZOO_FOREST 1 REAPERSMALL 3 REAPERMEDIUM 6 REAPERLARGER 9 DARKFOREST 6 DARKERFOREST 9 } >
<sex            OTHER>
<name           539>
<corpsename     reaper>
<alignment      CHAOTIC>
<notoriety      -125>
<objvar         int spellCastersLevel 1d2>
<script         spellai>
<script         monster>
<sfxnotice      monster_reaper>
<sfxidle        monster_reaper>
<sfxhit         monster_reaper>
<sfxwashit      monster_reaper>
<sfxdie         monster_reapre>
<strength       1d15+65>
<intelligence   1d15+35>
<dexterity      1d10+65>
<hp             1d15+145>
<mana           0>
<stamina        0>
<movetype       MT_NONMOVER>
<sk             skill_melee          1d150+450>
<sk             skill_magic_defense  1d150+350>
<sk             skill_battle_defense 1d100+550>
<sk             skill_magic          1d100+400>
<sk				      skill_weapon_hand    1d100+500>
<eq             log 0 0 10 SELFCONTAINED>
<naturalwc      5d3>
<naturalac      16>
<resource       food        15   3    MEAT>
<resource       food       576  64    JUNGLE>
<resource       shelter    576   1    JUNGLE>
<resource       shelter    576   1    SWAMP>
<resource       shelter    576   1    FOREST>
<resource       production   9   0    SPOOKINESS>
<resource       desire       1  -3    DANGER>
<resource       desire       5   1    FOLIAGE>
<@@@ END @@@>
<540>
# silver serpent Difficulty 2
<type           NORMAL SILVER_SERPENT>
<frequency      10>
<region         { JUNGLE 0 SSERPENTSMALL 0 SSERPENTMEDIUM 0 SSERPENTLARGE 0 } >
<regionlimit    { JUNGLE 5 SSERPENTSMALL 5 SSERPENTMEDIUM 7 SSERPENTLARGE 9 } >
<sex            OTHER>
<name           540>
<corpsename     "silver serpent">
<alignment      NEUTRAL>
<hue            no_colors>
<objvar         int petCanTame   60>
<objvar         int petAckSfx    animals_snake1>
<objvar         int petRefuseSfx animals_snake4>
<sfxnotice      animals_snake1>
<sfxidle        animals_snake2>
<sfxhit         animals_snake3>
<sfxwashit      animals_snake4>
<sfxdie         animals_snake5>
<strength       1d20+60>
<intelligence   1d10+10>
<dexterity      1d15+50>
<hp             1d20+25>
<mana           1d15+25>
<stamina        1d10+45>
<sk             skill_melee          1d50+400>
<sk             skill_magic_defense  1d150+250>
<sk             skill_battle_defense 1d150+450>
<sk             skill_weapon_hand    1d150+400>
<naturalwc      1d8>
<naturalac      9>
<resource       shelter    576  1    FOREST>
<resource       shelter    576  1    JUNGLE>
<resource       production   8  0    SERPENT_SCALES>
<resource       production   1  0    CARNIVOREMEAT>
<resource       desire       1 -3    DANGER>
<resource       desire       1 -3    HOUSES>
<@@@ END @@@>
<541>
# skeleton      Difficulty 4
<type           NORMAL SKELETONS>
<frequency      100>
<region         { RUINS 0 CEMETERY 0 SKELETONSMALL 0 SKELETONMEDIUM 0 SKELETONLARGE 0 FORESTNOTNEARTOWN 0 DARKERFOREST 0 DARKFOREST 0 } >
<regionlimit    { RUINS 4 CEMETERY 9 SKELETONSMALL 4 SKELETONMEDIUM 6 SKELETONLARGE 12 FORESTNOTNEARTOWN 1 DARKERFOREST 10 DARKFOREST 6 } >
<sex            OTHER>
<name           541>
<corpsename     skeletal>
<alignment      EVIL>
<notoriety      -125>
<fleeval        255>
<objvar         int petAckSfx    monster_skletn1>
<objvar         int petRefuseSfx monster_skletn4>
<script         nonhumaneq>
<script         monster>
<sfxnotice      monster_skletn1>
<sfxidle        monster_skletn2>
<sfxhit         monster_skletn3>
<sfxwashit      monster_skletn4>
<sfxdie         monster_skletn5>
<strength       1d25+55>
<intelligence   1d25+15>
<dexterity      1d20+55>
<hp             1d25+55>
<mana           0>
<stamina        1d20+55>
<sk             skill_melee          1d150+450>
<sk             skill_magic_defense  1d150+450>
<sk             skill_battle_defense 1d100+450>
<sk             skill_weapon_hand    1d100+450>
<naturalwc      2d4>
<naturalac      8>
<eq             { BONE_CHEST 1 BONE_LEGS 1 BONE_ARMS 1 BONE_GAUNTLETS 1 BONE_HELM 1 0 5 } 0 0 1 SELFCONTAINED>
<resource       shelter    64  1    SPOOKINESS>
<resource       production  1  0    SPOOKINESS>
<resource       production  8  0    BONE>
<resource       desire      1 -3    DANGER>
<@@@ END @@@>
<542>
# troll         Difficulty 6
<type           NORMAL TROLLS>
<frequency      150>
<region         { ZOO_FOREST 0 TROLLSMALL 0 TROLLMEDIUM 0 TROLLLARGE 0 DARKFOREST 0 DARKERFOREST 0 DARKESTFOREST 0 FORESTNOTNEARTOWN 0 } >
<regionlimit    { ZOO_FOREST 1 TROLLSMALL 3 TROLLMEDIUM 6 TROLLLARGE 9 DARKFOREST 8 DARKERFOREST 12 DARKESTFOREST 24 FORESTNOTNEARTOWN 3 } >
<sex            OTHER>
<name           542>
<corpsename     troll>
<alignment      EVIL>
<notoriety      -125>
<script         nonhumaneq>
<script         monster>
<script         loot>
<sfxnotice      monster_troll1>
<sfxidle        monster_troll2>
<sfxhit         monster_troll3>
<sfxwashit      monster_troll4>
<sfxdie         monster_troll5>
<strength       1d30+175>
<intelligence   1d25+45>
<dexterity      1d20+45>
<hp             1d30+175>
<mana           0>
<stamina        1d20+45>
<sk             skill_melee          1d200+500>
<sk             skill_magic_defense  1d150+450>
<sk             skill_battle_defense 1d150+450>
<sk             skill_weapon_hand    1d200+500>
<naturalwc      3d5+2>
<naturalac      20>
<eq             { rich_backpack 3 filthyrich_backpack 1 } 0 0 1>
<eq             { rich_gold_pile 3 filthyrich_gold_pile 1 } 0 0 1 SELFCONTAINED>
<friends	522 538 602 603>
<resource       food        15  3    MEAT>
<resource       shelter    576  1    FOREST>
<resource       shelter    576  1    MOUNTAINS>
<resource       production  10  0    CARNIVOREMEAT>
<resource       desire       1 -3    DANGER>
<resource       desire       1 -3    HOUSES>
<resource	desire	     5  1    SELF>
<@@@ END @@@>
<543>
# wisp          Difficulty 8
<type           NORMAL WISPS>
<frequency      5>
<region         { FORESTNOTNEARTOWN 0 JUNGLE 0 SWAMP 0 WISPSMALL 0 WISPMEDIUM 0 WISPLARGE 0 WISP 0 } >
<regionlimit    { FORESTNOTNEARTOWN 5 JUNGLE 5 SWAMP 5 WISPSMALL 3 WISPMEDIUM 6 WISPLARGE 9 WISP 1 } >
<sex            OTHER>
<name           543>
<corpsename     wisp>
<alignment      NEUTRAL>
<objvar         int spellCastersLevel 8>
<objvar         int nonHuman 1>
<script         spellai>
<script         nonhuman>
<sfxnotice      monster_wisp1>
<sfxidle        monster_wisp2>
<sfxhit         monster_wisp3>
<sfxwashit      monster_wisp4>
<sfxdie         monster_wisp5>
<strength       1d30+195>
<intelligence   1d30+195>
<dexterity      1d30+195>
<hp             1d30+195>
<mana           1d30+195>
<stamina        1d30+95>
<sk             skill_melee          800>
<sk             skill_magic_defense  800>
<sk             skill_battle_defense 800>
<sk             skill_magic	         800>
<sk             skill_weapon_hand    800>
<eq             litesrc 0 0 1>
<naturalwc      5d2+10>
<naturalac      20>
<resource       food       576 64    SWAMP>
<resource       food       576 64    FOREST>
<resource       food       576 64    JUNGLE>
<resource       shelter    576  1    SWAMP>
<resource       shelter    576  1    FOREST>
<resource       shelter    576  1    JUNGLE>
<resource       production   8  1    LIGHT>
<resource       desire       1 -3    DANGER>
<resource       desire       1 -3    HOUSES>
<@@@ END @@@>
<544>
# zombie        Difficulty 4
<type           NORMAL ZOMBIES>
<frequency      75>
<region         { CEMETERYEASY 0 CEMETERYHARD 0 CEMETERY 0 ZOO_DUNGN 0 ZOMBIESMALL 0 ZOMBIEMEDIUM 0 ZOMBIELARGE 0 FORESTNOTNEARTOWN 0 ZOMBIE 0 } >
<regionlimit    { CEMETERYEASY 1 CEMETERYHARD 5 CEMETERY 3 ZOO_DUNGN 1 ZOMBIESMALL 3 ZOMBIEMEDIUM 7 ZOMBIELARGE 12 FORESTNOTNEARTOWN 3 ZOMBIE 1 } >
<sex            OTHER>
<name           544>
<corpsename     rotting>
<alignment      EVIL>
<notoriety      -125>
<fleeval        255>
<objvar         int petAckSfx    monster_zombie1>
<objvar         int petRefuseSfx monster_zombie4>
<script         monster>
<sfxnotice      monster_zombie1>
<sfxidle        monster_zombie2>
<sfxhit         monster_zombie3>
<sfxwashit      monster_zombie4>
<sfxdie         monster_zombie5>
<strength       1d25+45>
<intelligence   1d15+25>
<dexterity      1d20+30>
<hp             1d25+45>
<mana           1d15+25>
<stamina        1d20+30>
<sk             skill_melee          1d150+350>
<sk             skill_magic_defense  1d250+150>
<sk             skill_battle_defense 1d100+200>
<sk				      skill_weapon_hand    1d150+350>
<naturalwc      2d4>
<naturalac      9>
<eq             undead_backpack 0 0 1>
<eq             { BONE_CHEST 1 BONE_LEGS 1 BONE_ARMS 1 BONE_GAUNTLETS 1 BONE_HELM 1 0 10 } 0 0 1 SELFCONTAINED>
<resource       shelter     32  1    SPOOKINESS>
<resource       shelter    288  1    DUNGEONS>
<resource       production   1  0    SPOOKINESS>
<resource       desire       1 -3    DANGER>
<resource       desire       5  1    GOLD>
<@@@ END @@@>
<545>
# dragon        Difficulty 8
<type           NORMAL DRAGONS>
<frequency      15>
<region         { DRAGON 0 NORMALDRAGON 0 DARKESTFOREST 0 } >
<regionlimit    { DRAGON 1 NORMALDRAGON 1 DARKESTFOREST 1 } >
<sex            OTHER>
<name           545>
<corpsename     dragon>
<alignment      NEUTRAL>
<notoriety      -125>
<objvar         int spellCastersLevel 7>
<script         dragonai>
<script         monster>
<objvar         int petCanTame   99>
<objvar         int petAckSfx    monster_dragon1>
<objvar         int petRefuseSfx monster_dragon4>
<sfxnotice      monster_dragon1>
<sfxidle        monster_dragon2>
<sfxhit         monster_dragon3>
<sfxwashit      monster_dragon4>
<sfxdie         monster_dragon5>
<strength       1d30+295>
<intelligence   1d40+135>
<dexterity      1d20+85>
<hp             1d400+700>
<mana           1d100+250>
<stamina        1d10+85>
<movetype       MT_FLYING>
<sk             skill_melee          1d25+975>
<sk             skill_magic_defense  1d10+990>
<sk             skill_battle_defense 1d400+550>
<sk				      skill_weapon_hand    1d25+900>
<naturalwc      4d6+5>
<naturalac      30>
<eq             { rich_backpack 3 filthyrich_backpack 1 } 0 0 1 SELFCONTAINED>
<eq             { rich_backpack 3 filthyrich_backpack 1 } 0 0 1 SELFCONTAINED>
<eq             { 101515 1 101520 1 101525 1 101530 1 101535 1 } 0 0 1 SELFCONTAINED>
<eq             { 101515 1 101520 1 101525 1 101530 1 101535 1 } 0 0 1 SELFCONTAINED>
<eq             { random_jewel 1 0 1 } 0 0 1 SELFCONTAINED>
<eq             { random_jewel 1 0 1 } 0 0 1 SELFCONTAINED>
<eq             { random_jewel 1 0 1 } 0 0 1 SELFCONTAINED>
<eq             { random_jewel 1 0 1 } 0 0 1 SELFCONTAINED>
<eq             { random_jewel 1 0 1 } 0 0 1 SELFCONTAINED>
<eq             { random_jewel 1 0 1 } 0 0 1 SELFCONTAINED>
<resource       food         80 3    MEAT>
<resource       shelter     576 1    CAVES>
<resource       shelter     288 1    DUNGEONS>
<resource       production   99 0    CARNIVOREMEAT>
<resource       production   8  0    DRAGON_BLOOD>
<resource       production   20 1    LEATHER>
<resource       desire       1 -3    DANGER>
<resource       desire       1 -3    HOUSES>
<resource       desire       1 -3    WATER>
<resource       desire       1 -3    MOUNTAINS>
<resource       desire       1  1    GOLD>
<friends 545>
<friends 578>
<friends 579>
<friends 580>
<@@@ END @@@>
<546>
# grizzly bear  Difficulty 5
<type           NORMAL GRIZZLY>
<frequency      120>
<region         { FORESTNEARTOWN 0 FORESTNOTNEARTOWN 0 DARKFOREST 0 DARKERFOREST 0 ZOO_FOREST 0 GRIZZLYSMALL 0 GRIZZLYMEDIUM 0 GRIZZLYLARGE 0 WINDFOREST 0 } >
<regionlimit    { FORESTNEARTOWN 5 FORESTNOTNEARTOWN 20 DARKFOREST 25 DARKERFOREST 30 ZOO_FOREST 1 GRIZZLYSMALL 3 GRIZZLYMEDIUM 8 GRIZZLYLARGE 15 WINDFOREST 5 } >
<sex            OTHER>
<name           546>
<corpsename     "grizzly bear">
<alignment      NEUTRAL>
<notoriety      -125>
<objvar         int petCanTame   70>
<objvar         int petAckSfx    animals_grizzly1>
<objvar         int petRefuseSfx animals_grizzly4>
<script         monster>
<sfxnotice      animals_grizzly1>
<sfxidle        animals_grizzly2>
<sfxhit         animals_grizzly3>
<sfxwashit      animals_grizzly4>
<sfxdie         animals_grizzly5>
<strength       1d30+125>
<intelligence   1d25+15>
<dexterity      1d25+80>
<hp             1d30+125>
<mana           0>
<stamina        1d25+80>
<sk             skill_melee          1d300+700>
<sk             skill_magic_defense  1d150+450>
<sk             skill_battle_defense 1d150+700>
<sk				      skill_weapon_hand    1d150+500>
<naturalwc      3d4+3>
<naturalac      12>
<resource       food         6  1    FISH>
<resource       food         5  1    FRUIT>
<resource       food        15  3    MEAT>
<resource       shelter    576  1    FOREST>
<resource       shelter    576  1    MOUNTAINS>
<resource       shelter    576  1    CAVES>
<resource       production  10  0    CARNIVOREMEAT>
<resource       production  16  0    FUR>
<resource       desire       1 -3    DANGER>
<resource       desire       1  -3    HOUSES>
<@@@ END @@@>
<547>
# polar bear    Difficulty 5
<type           NORMAL POLAR_BEAR>
<frequency      110>
<region         { ARCTIC 0 ZOO_ARCTIC 0 PBEARSMALL 0 PBEARMEDIUM 0 PBEARLARGE 0 } >
<regionlimit    { ARCTIC 40 ZOO_ARCTIC 1 PBEARSMALL 6 PBEARMEDIUM 14 PBEARLARGE 24 } >
<sex            OTHER>
<name           547>
<corpsename     "polar bear">
<alignment      NEUTRAL>
<hue            white_colors>
<objvar         int petCanTame   50>
<objvar         int petAckSfx    animals_bear1>
<objvar         int petRefuseSfx animals_bear4>
<script         monster>
<sfxnotice      animals_bear1>
<sfxidle        animals_bear2>
<sfxhit         animals_bear3>
<sfxwashit      animals_bear4>
<sfxdie         animals_bear5>
<strength       1d25+115>
<intelligence   1d25+25>
<dexterity      1d25+80>
<hp             1d25+115>
<mana           0>
<stamina        1d25+80>
<sk             skill_melee          1d300+700>
<sk             skill_magic_defense  1d150+450>
<sk             skill_battle_defense 1d150+700>
<sk				      skill_weapon_hand    1d300+600>
<naturalwc      3d4+2>
<naturalac      9>
<resource       food         6  1    FISH>
<resource       food         5  1    FRUIT>
<resource       food        15  3    MEAT>
<resource       shelter     576 1    SNOW>
<resource       shelter     288 1    MOUNTAINS>
<resource       shelter     288 1    CAVES>
<resource       production   11 0    CARNIVOREMEAT>
<resource       production   16 0    FUR>
<resource       desire       1 -3    DANGER>
<resource       desire       1 -3    HOUSES>
<@@@ END @@@>
<548>
# mountain goat Difficulty 2
<type           NORMAL MOUNTAIN_GOAT>
<frequency      200>
<region         { MGOATSMALL 0 MGOATMEDIUM 0 MGOATLARGE 0 FORESTNOTNEARTOWN 0 MOUNTAIN 0 } >
<regionlimit    { MGOATSMALL 9 MGOATMEDIUM 15 MGOATLARGE 25 FORESTNOTNEARTOWN 55 MOUNTAIN 25 } >
<sex            OTHER>
<name           548>
<corpsename     "mountain goat">
<alignment      NEUTRAL>
<objvar         int petCanTame   20>
<objvar         int petAckSfx    animals_goat1>
<objvar         int petRefuseSfx animals_goat4>
<sfxnotice      animals_goat1>
<sfxidle        animals_goat2>
<sfxhit         animals_goat3>
<sfxwashit      animals_goat4>
<sfxdie         animals_goat5>
<strength       3d15+19>
<intelligence   1d15+15>
<dexterity      1d20+55>
<hp             3d15+19>
<mana           0>
<stamina        1d20+55>
<sk             skill_melee          3d50+290>
<sk             skill_magic_defense  1d50+250>
<sk             skill_battle_defense 1d100+450>
<sk			       	skill_weapon_hand    3d50+290>
<naturalwc      1d5+2>
<naturalac      8>
<resource       food       576  64    GRASS>
<resource       food         5   1    FRUIT>
<resource       food         5   1    FOREST>
<resource       food         5   1    LEATHER>
<resource       shelter    576   1    FOREST>
<resource       shelter    576   1    MOUNTAINS>
<resource       production  16   0    MEAT>
<resource       production  12   0    LEATHER>
<resource       desire       1  -3    DANGER>
<resource       desire       1  -3    HOUSES>
<resource       desire       3  -6    MEAT>
<resource       desire       4   1    SELF>
<@@@ END @@@>
<549>
# Evil Mage   Difficulty 6
<type         NORMAL 400>
<frequency    55>
<region       EVIL_MAGE>
<regionlimit  { EVIL_MAGE 1 } >
<job          mage>
<sex          MALE>
<name         549>
<partialhue   all_skin_colors>
<objvar       int guildMember 1>
<objvar       int spellCastersLevel 1d3+2>
<script       human>
<script       spellai>
<script       monster>
<script       loot>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_MAGE>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    EVIL>
<attitude     1d41-86>
<notoriety    -125>
<strength     1d25+80>
<dexterity    1d25+90>
<intelligence 1d25+95>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+625>
<sk           skill_magic_defense  25d10+725>
<sk           skill_battle_defense 25d10+625>
<sk           skill_evaluate       25d10+525>
<sk           skill_magic          1d150+850>
<sk           skill_inscribe       1d150+750>
<sk	    	    skill_weapon_hand    2d200+200>
<immunities   magic>
<naturalwc    3d4>
<naturalac    8>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           robe red_colors 1>
<eq           sandals 0 0 1>
<eq           random_coin_purse 0 0 1>
<eq           random_upper_scroll 0 0 1 SELFCONTAINED>
<eq           random_upper_scroll 0 0 1 SELFCONTAINED>
<resource     food         5  1    MEAT>
<resource     food         5  1    FOOD>
<resource     shelter     16  1    HOUSES>
<resource     production   8  0    CARNIVOREMEAT>
<resource     desire       1 -3    DANGER>
<resource     desire       1 -3    SPOOKINESS>
<resource     desire      10  2    GOLD>
<resource     desire       1  1    MAGIC>
<resource     desire      10  2    BONE>
<resource     desire      10  2    DAEMON_BONE>
<resource     desire      10  2    DIRT>
<resource     desire      10  2    DRAGON_BLOOD>
<resource     desire      10  2    MANDRAKE>
<resource     desire      10  2    INK>
<resource     desire      10  2    SERPENT_SCALES>
<resource     desire      10  2    SILK>
<resource     desire      10  2    SPIDER_SILK>
<resource     desire      10  2    SULPHEROUS ASH>
<resource     desire      10  2    BLACK_PEARL>
<resource     desire      10  2    BLOOD_MOSS>
<resource     desire      10  2    GARLIC>
<resource     desire      10  2    GINSENG>
<resource     desire      10  2    NIGHTSHADE>
<resource     desire      10  2    VOLCANIC ASH>
<@@@ END @@@>
<550>
# llama         Difficulty 2
<type           NORMAL LLAMAS>
<frequency      200>
<region         { LIVESTK 0 PLAINS 0 ZOO_PLAINS 0 LLAMASMALL 0 LLAMAMEDIUM 0 LLAMALARGE 0 FORESTNEARTOWN 0 FORESTNOTNEARTOWN 0 LLAMA 0 NEWBIE 0 WINDFOREST 0 } >
<regionlimit    { LIVESTK 1 PLAINS 5 ZOO_PLAINS 1 LLAMASMALL 3 LLAMAMEDIUM 8 LLAMALARGE 15 FORESTNEARTOWN 15 FORESTNOTNEARTOWN 30 LLAMA 2 NEWBIE 30 WINDFOREST 5 } >
<sex            OTHER>
<name           550>
<corpsename     llama>
<alignment      NEUTRAL>
<objvar         int petCanTame   50>
<objvar         int petAckSfx    animals_llama3>
<objvar         int petRefuseSfx animals_llama4>
<script         monster>
<sfxhit         animals_llama3>
<sfxwashit      animals_llama4>
<sfxdie         animals_llama5>
<strength       2d15+19>
<intelligence   1d15+15>
<dexterity      1d20+35>
<hp             2d15+19>
<mana           0>
<stamina        1d20+35>
<sk             skill_melee          2d50+190>
<sk             skill_magic_defense  1d50+150>
<sk             skill_battle_defense 1d100+350>
<sk             skill_weapon_hand    2d50+190>
<naturalwc      2d3>
<naturalac      8>
<resource       food        5   1    CROPS>
<resource       food        5   1    FRUIT>
<resource       food        5   1    GRAIN>
<resource       food        5   1    HAY>
<resource       food      576  64    GRASS>
<resource       shelter    16   1    STABLES>
<resource       shelter     1   1    HUMANS>
<resource       production  7   0    MEAT>
<resource       production 12   0    FUR>
<resource       desire      1  -3    DANGER>
<resource       desire      5   1    SELF>
<resource       desire      5   1    HUMANS>
<@@@ END @@@>
<551>
# corpser       Difficulty 4
<type           NORMAL CORPSERS>
<frequency      100>
<region         { SWAMP 0 JUNGLE 0 ZOO_SWAMP 0 ZOO_JUNGLE 0 CORPSERSMALL 0 CORPSERMEDIUM 0 CORPSERLARGE 0 DARKERFOREST 0 DARKFOREST 0 } >
<regionlimit    { SWAMP 20 JUNGLE 10 ZOO_SWAMP 1 ZOO_JUNGLE 1 CORPSERSMALL 2 CORPSERMEDIUM 8 CORPSERLARGE 12 DARKERFOREST 15 DARKFOREST 12 } >
<sex            OTHER>
<name           551>
<corpsename     corpser's>
<alignment      CHAOTIC>
<notoriety      -125>
<movetype       MT_NONMOVER>
<script         monster>
<sfxnotice      monster_corpsr1>
<sfxidle        monster_corpsr2>
<sfxhit         monster_corpsr3>
<sfxwashit      monster_corpsr4>
<sfxdie         monster_corpsr5>
<strength       1d25+55>
<intelligence   1d15+25>
<dexterity      1d20+25>
<hp             1d25+55>
<mana           0>
<stamina        1d25+25>
<sk             skill_melee          1d150+450>
<sk             skill_magic_defense  1d50+150>
<sk             skill_battle_defense 1d100+150>
<sk             skill_weapon_hand    1d150+450>
<naturalwc      3d2>
<naturalac      9>
<eq             random_gold_pile 0 0 1 SELFCONTAINED>
<resource       food        24  3    MEAT>
<resource       shelter    576  1    JUNGLE>
<resource       shelter    576  1    SWAMP>
<resource       shelter    576  1    FOREST>
<resource       production   9  0    SPOOKINESS>
<resource       desire       1 -3    DANGER>
<resource       desire       1  -3    HOUSES>
<@@@ END @@@>
<552>
# air elemental Difficulty 7
<type           NORMAL AIR_ELEMENTAL>
<frequency      100>
<region         { AIRELEMENTALSMALL 0 AIRELEMENTALMEDIUM 0 AIRELEMENTALLARGE 0 DARKFOREST 0 AIRELEMENTAL 0 } >
<regionlimit    { AIRELEMENTALSMALL 2 AIRELEMENTALMEDIUM 6 AIRELEMENTALLARGE 8 DARKFOREST 1 AIRELEMENTAL 1 } >
<sex            OTHER>
<name           552>
<corpsename     "air elemental">
<alignment      EVIL>
<notoriety      -125>
<objvar	        int spellCastersLevel 2d3+1>
<script         spellai>
<script         monster>
<sfxnotice      elementl_airelem1>
<sfxidle        elementl_airelem2>
<sfxhit         elementl_airelem3>
<sfxwashit      elementl_airelem4>
<sfxdie         elementl_airelem5>
<strength       1d30+125>
<intelligence   1d25+70>
<dexterity      1d20+165>
<hp             1d30+125>
<mana           1d25+70>
<stamina        1d20+165>
<sk             skill_melee          1d200+600>
<sk             skill_magic_defense  1d150+600>
<sk             skill_battle_defense 1d100+650>
<sk             skill_magic          1d150+600>
<sk             skill_weapon_hand    1d200+600>
<naturalwc      4d3+1>
<naturalac      25>
<eq             { rich_backpack 1 filthyrich_backpack 1 } 0 0 1>
<eq             random_gold_pile 0 0 1 SELFCONTAINED>
<resource       shelter    576  1    MOUNTAINS>
<resource       production   8  0    MAGIC>
<resource       desire       1 -3    DANGER>
<resource       desire       5  1    MOUNTAINS>
<@@@ END @@@>
<553>
# fire elemental Difficulty 7
<type           NORMAL FIRE_ELEMENTAL>
<frequency      100>
<region         { FIREELEMENTAL 0 FIRELEMENTALSMALL 0 FIRELEMENTALMEDIUM 0 FIRELEMENTALLARGE 0 DARKERFOREST 0 } >
<regionlimit    { FIREELEMENTAL 1 FIRELEMENTALSMALL 2 FIRELEMENTALMEDIUM 4 FIRELEMENTALLARGE 6 DARKERFOREST 3 } >
<sex            OTHER>
<name           553>
<corpsename     "fire elemental">
<alignment      EVIL>
<notoriety      -125>
<objvar         int spellCastersLevel 1d3+2>
<script         spellai>
<script         monster>
<sfxnotice      elementl_firelem1>
<sfxidle        elementl_firelem2>
<sfxhit         elementl_firelem3>
<sfxwashit      elementl_firelem4>
<sfxdie         elementl_firelem5>
<strength       1d30+125>
<intelligence   1d25+70>
<dexterity      1d20+165>
<hp             1d30+125>
<mana           1d25+70>
<stamina        1d20+165>
<sk             skill_melee          1d200+800>
<sk             skill_magic_defense  1d150+600>
<sk             skill_battle_defense 1d100+550>
<sk             skill_magic          1d150+600>
<sk             skill_weapon_hand    1d300+700>
<naturalwc      4d3>
<naturalac      25>
<eq             { rich_backpack 1 filthyrich_backpack 1 } 0 0 1>
<eq             random_gold_pile 0 0 1 SELFCONTAINED>
<eq             litesrc 0 0 1>
<resource       shelter    128  1    LAVA>
<resource       production   8  0    MAGIC>
<resource       desire       1 -3    DANGER>
<resource       desire       5  1    LAVA>
<@@@ END @@@>
<554>
# water elemental Difficulty 7
<type           NORMAL WATER_ELEMENTAL>
<frequency      100>
<region         { OCEAN 0 WATERELEMENTALSMALL 0 WATERELEMENTALMEDIUM 0 WATERELEMENTALLARGE 0 DARKFOREST 0 WATERELEMENTAL 0 } >
<regionlimit    { OCEAN 2 WATERELEMENTALSMALL 2 WATERELEMENTALMEDIUM 4 WATERELEMENTALLARGE 6 DARKFOREST 1 WATERELEMENTAL 1 } >
<sex            OTHER>
<name           554>
<corpsename     "water elemental">
<alignment      EVIL>
<notoriety      -125>
<movetype       mt_amphibious>
<objvar         int spellCastersLevel 2d3+1>
<script         spellai>
<script         monster>
<sfxnotice      elementl_waterel1>
<sfxidle        elementl_waterel2>
<sfxhit         elementl_waterel3>
<sfxwashit      elementl_waterel4>
<sfxdie         elementl_waterel5>
<strength       1d30+125>
<intelligence   1d25+70>
<dexterity      1d20+65>
<hp             1d30+125>
<mana           1d25+70>
<stamina        1d20+65>
<sk             skill_melee          1d200+800>
<sk             skill_magic_defense  1d150+600>
<sk             skill_battle_defense 1d100+550>
<sk             skill_magic          1d150+600>
<sk				      skill_weapon_hand    1d200+700>
<naturalwc      4d3>
<naturalac      25>
<eq             { rich_backpack 3 filthyrich_backpack 1 } 0 0 1>
<eq             random_gold_pile 0 0 1 SELFCONTAINED>
<resource       shelter    576  1    WATER>
<resource       production   8  0    MAGIC>
<resource       desire       1 -3    DANGER>
<resource       desire       5  1    WATER>
<@@@ END @@@>
<555>
# harpy         Difficulty 6
<type           NORMAL HARPIES>
<frequency      100>
<region         { ZOO_FOREST 0 HARPYSMALL 0 HARPYMEDIUM 0 HARPYLARGE 0 FORESTNOTNEARTOWN 0 DARKFOREST 0 DARKERFOREST 0 } >
<regionlimit    { ZOO_FOREST 1 HARPYSMALL 4 HARPYMEDIUM 8 HARPYLARGE 12 FORESTNOTNEARTOWN 2 DARKFOREST 9 DARKERFOREST 18 } >
<sex            OTHER>
<name           555>
<corpsename     harpy>
<alignment      EVIL>
<notoriety      -125>
<script         monster>
<script         loot>
<sfxnotice      monster_harpy1>
<sfxidle        monster_harpy2>
<sfxhit         monster_harpy3>
<sfxwashit      monster_harpy4>
<sfxdie         monster_harpy5>
<strength       1d25+95>
<intelligence   1d25+50>
<dexterity      1d25+85>
<hp             1d25+95>
<mana           1d25+50>
<stamina        1d25+85>
<movetype       MT_FLYING>
<sk             skill_melee          1d300+700>
<sk             skill_magic_defense  1d150+500>
<sk             skill_battle_defense 1d150+750>
<sk				      skill_weapon_hand    1d300+600>
<naturalwc      3d3>
<naturalac      14>
<eq             random_coin_purse 0 0 1>
<resource       food         5  1    MEAT>
<resource       shelter    576  1    FOREST>
<resource       shelter    576  1    MOUNTAINS>
<resource       production   9  0    CARNIVOREMEAT>
<resource       production  50  0    FEATHERS>
<resource       desire       1 -3    DANGER>
<resource       desire       1 -3    HOUSES>
<resource       desire       1 -3    WATER>
<resource       desire       1 -3    MOUNTAINS>
<resource       desire       5  1    GOLD>
<resource       desire       5  1    SELF>
<@@@ END @@@>
<556>
# giant scorpion Difficulty 5
<type           NORMAL GIANT_SCORPION>
<frequency      100>
<region         { SHAME 0 DESPISE 0 DESERT 0 ZOO_DESERT 0 SCORPIONSMALL 0 SCORPIONMEDIUM 0 SCORPIONLARGE 0 SCORPION 0 } >
<regionlimit    { SHAME 6 DESPISE 6 DESERT 15 ZOO_DESERT 1 SCORPIONSMALL 4 SCORPIONMEDIUM 8 SCORPIONLARGE 12 SCORPION 0 } >
<sex            OTHER>
<name           556>
<corpsename     "giant scorpion">
<alignment      EVIL>
<notoriety      -125>
<objvar         int petCanTame   60>
<objvar         int petAckSfx    animals_gscorp1>
<objvar         int petRefuseSfx animals_gscorp4>
<script         monster>
<sfxnotice      monster_gscorp1>
<sfxidle        monster_gscorp2>
<sfxhit         monster_gscorp3>
<sfxwashit      monster_gscorp4>
<sfxdie         monster_gscorp5>
<strength       3d15+70>
<intelligence   1d15+15>
<dexterity      1d20+75>
<hp             3d15+70>
<mana           0>
<stamina        1d20+150>
<sk             skill_melee          3d50+600>
<sk             skill_magic_defense  1d50+300>
<sk             skill_battle_defense 1d100+600>
<sk             skill_weapon_hand    3d50+500>
<naturalwc      3d4>
<naturalac      14>
<resource       food        15  3    MEAT>
<resource       shelter    288  1    CAVES>
<resource       shelter    288  1    DUNGEONS>
<resource       shelter    576  1    DESERT>
<resource       production   8  0    CARNIVOREMEAT>
<resource       desire       1 -3    DANGER>
<resource       desire       1 -3    HOUSES>
<@@@ END @@@>
<557>
# gorilla       Difficulty 3
<type           NORMAL GORILLAS>
<frequency      100>
<region         { JUNGLE 0 ZOO_JUNGLE 0 GORILLASMALL 0 GORILLAMEDIUM 0 GORILLALARGE 0 DARKFOREST 0 } >
<regionlimit    { JUNGLE 15 ZOO_JUNGLE 1 GORILLASMALL 3 GORILLAMEDIUM 6 GORILLALARGE 8 DARKFOREST 10 } >
<sex            OTHER>
<name           557>
<corpsename     gorilla>
<alignment      NEUTRAL>
<objvar         int petCanTame   5>
<objvar         int petAckSfx    animals_gorilla1>
<objvar         int petRefuseSfx animals_gorilla4>
<script         monster>
<sfxnotice      animals_gorilla1>
<sfxidle        animals_gorilla2>
<sfxhit         animals_gorilla3>
<sfxwashit      animals_gorilla4>
<sfxdie         animals_gorilla5>
<strength       3d15+50>
<intelligence   1d25+35>
<dexterity      1d20+35>
<hp             3d15+50>
<mana           0>
<stamina        1d30+35>
<sk             skill_weapon_hand    3d50+430>
<sk             skill_melee          3d50+430>
<sk             skill_magic_defense  1d150+450>
<sk             skill_battle_defense 1d100+430>
<naturalwc      2d6>
<naturalac      14>
<resource       food        25  1    CROPS>
<resource       food        25  1    FRUIT>
<resource       food        25  1    GRAIN>
<resource       shelter    128  1    FOLIAGE>
<resource       shelter    576  1    JUNGLE>
<resource       production   6  0    MEAT>
<resource       production   6  0    FUR>
<resource       desire       1 -3    DANGER>
<resource       desire       1 -3    HOUSES>
<resource       desire       5  1    SELF>
<@@@ END @@@>
<558>
# easy mongbat  Difficulty 1
<type           NORMAL MONGBATS>
<frequency      200>
<region         { JUNGLE 0 SWAMP 0 EMONGBATSMALL 0 EMONGBATMEDIUM 0 EMONGBATLARGE 0 FORESTNEARTOWN 0 FORESTNOTNEARTOWN 0 DARKFOREST 0 DARKERFOREST 0 NEWBIE 0 DESPISE 0 WINDFOREST 0 } >
<regionlimit    { JUNGLE 40 SWAMP 40 EMONGBATSMALL 10 EMONGBATMEDIUM 20 EMONGBATLARGE 40 FORESTNEARTOWN 76 FORESTNOTNEARTOWN 90 DARKFOREST 30 DARKERFOREST 40 NEWBIE 76 DESPISE 20 WINDFOREST 25 } >
<sex            OTHER>
<name           536>
<corpsename     mongbat>
<alignment      EVIL>
<notoriety      -125>
<objvar         int petCanTame   5>
<objvar         int petAckSfx    monster_mngbat3>
<objvar         int petRefuseSfx monster_mngbat4>
<script         monster>
<sfxnotice      monster_mngbat1>
<sfxidle        monster_mngbat2>
<sfxhit         monster_mngbat3>
<sfxwashit      monster_mngbat4>
<sfxdie         monster_mngbat5>
<movetype       MT_FLYING>
<strength       1d5+5>
<intelligence   1d9+5>
<dexterity      1d13+25>
<hp             4d2>
<mana           0>
<stamina        15d3+25>
<sk             skill_melee          1d50+50>
<sk             skill_magic_defense  1d90+50>
<sk             skill_battle_defense 1d130+250>
<sk				      skill_weapon_hand    1d50+50>
<naturalwc      1d2>
<naturalac      2d5>
<resource       food         5  1    MEAT>
<resource       shelter     16  1    SPOOKINESS>
<resource       shelter    288  1    FOREST>
<resource       shelter    288  1    JUNGLE>
<resource       shelter    288  1    SWAMP>
<resource       shelter    576  1    DUNGEONS>
<resource       production   3  0    CARNIVOREMEAT>
<resource       desire       1 -3    DANGER>
<resource       desire       1 -3    WATER>
<resource       desire       1 -3    MOUNTAINS>
<resource       desire       5  1    GOLD>
<@@@ END @@@>
<559>
# daemon        Difficulty 8
<type           NORMAL DAEMONS>
<frequency      15>
<region         { DAEMON 0 } >
<regionlimit    { DAEMON 5 } >
<sex            OTHER>
<name           559>
<corpsename     daemon>
<alignment      EVIL>
<notoriety      -125>
<objvar         int spellCastersLevel 1d2+6>
<script         spellai>
<script         nonhumaneq>
<script         monster>
<script         loot>
<script         daemon>
<sfxnotice      monster_daemon1>
<sfxidle        monster_daemon2>
<sfxhit         monster_daemon3>
<sfxwashit      monster_daemon4>
<sfxdie         monster_daemon5>
<strength       1d30+275>
<intelligence   1d25+100>
<dexterity      1d20+75>
<hp             1d30+275>
<mana           1d25+375>
<stamina        1d20+75>
<movetype       MT_FLYING>
<sk             skill_melee          1d100+700>
<sk             skill_magic_defense  1d100+700>
<sk             skill_battle_defense 1d100+650>
<sk             skill_magic          1d100+700>
<sk				      skill_weapon_hand    1d200+600>
<naturalac      3d6>
<naturalwc      30>
<eq           { rich_backpack 1 filthyrich_backpack 3 } 0 0 1>
<eq           random_upper_scroll 0 0 1 SELFCONTAINED>
<eq           random_upper_scroll 0 0 1 SELFCONTAINED>
<resource       shelter    576  1    CAVES>
<resource       shelter    576  1    DUNGEONS>
<resource       production   9  0    CARNIVOREMEAT>
<resource       production   8  0    DAEMON_BONE>
<resource       desire       1 -3    DANGER>
<resource       desire       1 -3    HOUSES>
<resource       desire       1 -3    WATER>
<resource       desire       1 -3    MOUNTAINS>
<resource       desire       5  1    GOLD>
<@@@ END @@@>
<560>
# gazer         Difficulty 6
<type           NORMAL GAZERS>
<frequency      100>
<region         { ZOO_DUNGN 0 GAZERSMALL 0 GAZERMEDIUM 0 GAZERLARGE 0 DARKFOREST 0 GAZER 0 } >
<regionlimit    { ZOO_DUNGN 1 GAZERSMALL 2 GAZERMEDIUM 4 GAZERLARGE 6 DARKFOREST 1 GAZER 1 } >
<sex            OTHER>
<name           560>
<corpsename     gazer>
<alignment      EVIL>
<notoriety      -125>
<objvar         int spellCastersLevel 2d2+1>
<script         spellai>
<script         monster>
<sfxnotice      monster_gazer1>
<sfxidle        monster_gazer2>
<sfxhit         monster_gazer3>
<sfxwashit      monster_gazer4>
<sfxdie         monster_gazer5>
<strength       1d30+95>
<intelligence   1d25+40>
<dexterity      1d20+85>
<hp             1d30+85>
<mana           1d15+40>
<stamina        1d20+45>
<sk             skill_melee          1d200+500>
<sk             skill_magic_defense  1d150+500>
<sk             skill_battle_defense 1d100+550>
<sk             skill_magic          1d150+500>
<sk			        skill_weapon_hand    1d200+500>
<naturalwc      3d4>
<naturalac      19>
<eq             { rich_backpack 1 filthyrich_backpack 1 } 0 0 1>
<eq             random_gold_pile 0 0 1 SELFCONTAINED>
<resource       shelter    288  1    CAVES>
<resource       shelter    288  1    DUNGEONS>
<resource       production   8  0    MEAT>
<resource       desire       1 -3    DANGER>
<resource       desire       1  -3    HOUSES>
<resource       desire       5  1    SELF>
<@@@ END @@@>
<561>
# rat-man       Difficulty 5
<type           NORMAL RATMEN>
<frequency      100>
<region         { SWAMP 0 WRONG 0 RATMANSMALL 0 RATMANMEDIUM 0 RATMANMEDIUM 0 RATMAN 0 FORESTNOTNEARTOWN 0 DARKFOREST 0 DARKERFOREST 0 } >
<regionlimit    { SWAMP 10 WRONG 12 RATMANSMALL 4 RATMANMEDIUM 8 RATMANLARGE 12 RATMAN 1 FORESTNOTNEARTOWN 8 DARKFOREST 15 DARKERFOREST 20 } >
<sex            OTHER>
<name           561>
<corpsename     ratman>
<alignment      EVIL>
<notoriety      -125>
<objvar         int nonHuman 3>
<script         nonhuman>
<script         nonhumaneq>
<script         monster>
<script         loot>
<sfxnotice      monster_ratman1>
<sfxidle        monster_ratman2>
<sfxhit         monster_ratman3>
<sfxwashit      monster_ratman4>
<sfxdie         monster_ratman5>
<strength       1d25+95>
<intelligence   1d25+35>
<dexterity      1d20+80>
<hp             1d20+95>
<mana           1d25+35>
<stamina        1d20+80>
<sk             skill_melee          1d250+500>
<sk             skill_magic_defense  1d250+350>
<sk             skill_battle_defense 1d200+500>
<sk				      skill_weapon_hand    1d250+500>
<naturalwc      3d2>
<naturalac      14>
<eq             random_coin_purse 0 0 1>
<resource       food        15  3    MEAT>
<resource       shelter    288  1    CAVES>
<resource       shelter    288  1    DUNGEONS>
<resource       shelter    576  1    SWAMP>
<resource       shelter    576  1    DESERT>
<resource       production   6  0    CARNIVOREMEAT>
<resource       production   8  0    FUR>
<resource       desire       1 -3    DANGER>
<resource       desire       4  1    SELF>
<@@@ END @@@>
<562>
# slimes        Difficulty 2
<type           NORMAL SLIMES>
<frequency      100>
<region         { DUNGN 0 ZOO_DUNGN 0 SLIMESMALL 0 SLIMEMEDIUM 0 SLIMELARGE 0 SLIME 0 } >
<regionlimit    { DUNGN 10 ZOO_DUNGN 1 SLIMESMALL 5 SLIMEMEDIUM 15 SLIMELARGE 30 SLIME 3 } >
<sex            OTHER>
<name           562>
<corpsename     slimy>
<alignment      EVIL>
<notoriety      -125>
<hue            slime_colors>
<objvar         int petCanTame   40>
<objvar         int petAckSfx    animals_slime1>
<objvar         int petRefuseSfx animals_slime4>
<script         monster>
<script         slimesplit>
<sfxnotice      monster_slime1>
<sfxidle        monster_slime2>
<sfxhit         monster_slime3>
<sfxwashit      monster_slime4>
<sfxdie         monster_slime5>
<strength       3d5+19>
<intelligence   1d5+15>
<dexterity      1d6+15>
<hp             3d5+15>
<mana           1d5+15>
<stamina        1d6+15>
<sk             skill_melee          3d50+190>
<sk             skill_magic_defense  1d50+150>
<sk             skill_battle_defense 1d60+150>
<sk             skill_weapon_hand    3d50+190>
<naturalwc      1d5>
<naturalac      4>
<eq             { random_jewel 1 0 4 } 0 0 1 SELFCONTAINED>
<resource       food         35  1    MEAT>
<resource       shelter    288  1    CAVES>
<resource       shelter    288  1    DUNGEONS>
<resource       production   1  0    SPOOKINESS>
<resource       desire       1 -3    DANGER>
<resource       desire       5  1    SELF>
<@@@ END @@@>
<564>
# walrus        Difficulty 2
<type           NORMAL WALRUSES>
<frequency      100>
<region         { ARCTIC 0 ZOO_ARCTIC 0 WALRUSSMALL 0 WALRUSMEDIUM 0 WALRUSLARGE 0 } >
<regionlimit    { ARTIC 35 ZOO_ARCTIC 1 WALRUSSMALL 5 WALRUSMEDIUM 15 WALRUSLARGE 25 } >
<sex            OTHER>
<name           564>
<corpsename     walrus>
<alignment      NEUTRAL>
<script         monster>
<objvar         int petCanTame   50>
<objvar         int petAckSfx    animals_walrus1>
<objvar         int petRefuseSfx animals_walrus2>
<sfxnotice      animals_walrus1>
<sfxidle        animals_walrus2>
<sfxhit         animals_walrus3>
<sfxwashit      animals_walrus4>
<sfxdie         animals_walrus5>
<strength       2d5+19>
<intelligence   1d5+15>
<dexterity      1d10+45>
<hp             2d5+19>
<mana           0>
<stamina        1d10+45>
<sk             skill_melee          2d50+190>
<sk             skill_magic_defense  1d50+150>
<sk             skill_battle_defense 1d100+450>
<sk             skill_weapon_hand    2d50+190>
<naturalwc      3d2>
<naturalac      9>
<resource       food         5  1    FISH>
<resource       shelter    576  1    WATER>
<resource       shelter    288  1    SNOW>
<resource       production  23  0    MEAT>
<resource       production  12  0    LEATHER>
<resource       desire       1 -3    DANGER>
<resource       desire       1 -3    HOUSES>
<resource       desire       5  1    SELF>
<@@@ END @@@>
<565>
# dire wolf   Difficulty 5 
<type           NORMAL TIMBER_WOLF>
<frequency      120>
<region         { DARKFOREST 0 DARKERFOREST 0 } >
<regionlimit    { DARKFOREST 15 DARKERFOREST 15 } >
<sex            OTHER>
<name           565>
<corpsename     "dire wolf">
<alignment      EVIL>
<notoriety      -125>
<hue            no_colors>
<objvar         int petCanTame   90>
<objvar         int petAckSfx    animals_wolf1>
<objvar         int petRefuseSfx animals_wolf4>
<script         monster>
<sfxnotice      animals_wolf1>
<sfxidle        animals_wolf2>
<sfxhit         animals_wolf3>
<sfxwashit      animals_wolf4>
<sfxdie         animals_wolf5>
<strength       1d25+95>
<intelligence   1d25+35>
<dexterity      1d25+80>
<hp             1d25+95>
<mana           1d25+70>
<stamina        1d25+90>
<sk             skill_melee          1d200+500>
<sk             skill_weapon_hand    1d200+600>
<sk             skill_magic_defense  1d175+575>
<sk             skill_battle_defense 1d125+625>
<naturalwc      4d5+2>
<naturalac      11>
<resource       food        15  3    MEAT>
<resource       shelter    576  1    FOREST>
<resource       shelter    288  1    CAVES>
<resource       production   6  0    CARNIVOREMEAT>
<resource       production   7  0    FUR>
<resource       desire       1 -3    DANGER>
<resource       desire       1 -3    HOUSES>
<resource       desire       3  1    SELF>
<@@@ END @@@>
<566>
# snow leopard  Difficulty 3
<type           NORMAL PANTHERS>
<frequency      100>
<region         { ARCTIC 0 ZOO_ARCTIC 0 SLEOPARDSMALL 0 SLEOPARDMEDIUM 0 SLEOPARD 0 } >
<regionlimit    { ARCTIC 25 ZOO_ARCTIC 1 SLEOPARDSMALL 5 SLEOPARDMEDIUM 10 SLEOPARD 15 } >
<sex            OTHER>
<name           566>
<corpsename     "snow leopard>
<hue            white_colors>
<alignment      NEUTRAL>
<objvar         int petCanTame   65>
<objvar         int petAckSfx    animals_panther1>
<objvar         int petRefuseSfx animals_panther4>
<script         monster>
<sfxnotice      animals_panther1>
<sfxidle        animals_panther2>
<sfxhit         animals_panther3>
<sfxwashit      animals_panther4>
<sfxdie         animals_panther5>
<strength       1d25+55>
<intelligence   1d25+25>
<dexterity      1d20+65>
<hp             1d25+55>
<mana           0>
<stamina        1d20+65>
<sk             skill_melee          1d150+450>
<sk             skill_magic_defense  1d100+250>
<sk             skill_battle_defense 1d100+550>
<sk             skill_weapon_hand    1d100+400>
<naturalwc      2d5>
<naturalac      12>
<resource       food        15  3    MEAT>
<resource       shelter    288  1    CAVES>
<resource       shelter    576  0    MOUNTAINS>
<resource       shelter    576  1    SNOW>
<resource       production   6  0    CARNIVOREMEAT>
<resource       production   8  0    FUR>
<resource       desire       1 -3    DANGER>
<resource       desire       1 -3    WATER>
<resource       desire       1  -3    HOUSES>
<resource       desire       5  1    SELF>
<@@@ END @@@>
<568>
# white wolf    Difficulty 3
<type           NORMAL TIMBER_WOLF>
<frequency      100>
<region         { ARCTIC 0 ZOO_ARCTIC 0 WWOLFSMALL 0 WWOLFMEDIUM 0 WWOLFLARGE 0 } >
<regionlimit    { ARCTIC 30 ZOO_ARCTIC 1 WWOLFSMALL 5 WWOLFMEDIUM 10 WWOLFLARGE 15 } >
<sex            OTHER>
<name           568>
<corpsename     "white wolf">
<alignment      NEUTRAL>
<hue            white_colors>
<objvar         int petCanTame   75>
<objvar         int petAckSfx    animals_wolf1>
<objvar         int petRefuseSfx animals_wolf4>
<script         monster>
<sfxnotice      animals_wolf1>
<sfxidle        animals_wolf2>
<sfxhit         animals_wolf3>
<sfxwashit      animals_wolf4>
<sfxdie         animals_wolf5>
<strength       1d25+55>
<intelligence   1d25+30>
<dexterity      1d20+55>
<hp             1d25+55>
<mana           0>
<stamina        1d20+55>
<sk             skill_melee          1d150+450>
<sk             skill_magic_defense  1d150+200>
<sk             skill_battle_defense 1d100+450>
<sk             skill_weapon_hand    1d150+450>
<naturalwc      2d4>
<naturalac      8>
<resource       food        15  3    MEAT>
<resource       shelter    576  1    SNOW>
<resource       shelter    288  1    CAVES>
<resource       production   3  0    CARNIVOREMEAT>
<resource       production   6  0    FUR>
<resource       desire       1 -3    DANGER>
<resource       desire       1 -3    HOUSES>
<resource       desire       5  1    SELF>
<resource       desire       1  1    SNOW>
<@@@ END @@@>
<569>
# grey wolf     Difficulty 3
<type           NORMAL TIMBER_WOLF>
<frequency      120>
<region         { DARKERFOREST 0 DARKFOREST 0 FORESTNOTNEARTOWN 0 ZOO_FOREST 0 GWOLFSMALL 0 GWOLFMEDIUM 0 GWOLFLARGE 0 } >
<regionlimit    { DARKERFOREST 20 DARKFOREST 25 FORESTNOTNEARTOWN 30 ZOO_FOREST 1 GWOLFSMALL 5 GWOLFMEDIUM 10 GWOLFLARGE 15 } >
<sex            OTHER>
<name           569>
<corpsename     "grey wolf">
<alignment      NEUTRAL>
<hue            grey_colors>
<objvar         int petCanTame   65>
<objvar         int petAckSfx    animals_wolf1>
<objvar         int petRefuseSfx animals_wolf4>
<script         monster>
<sfxnotice      animals_wolf1>
<sfxidle        animals_wolf2>
<sfxhit         animals_wolf3>
<sfxwashit      animals_wolf4>
<sfxdie         animals_wolf5>
<strength       1d25+55>
<intelligence   1d25+30>
<dexterity      1d20+55>
<hp             1d25+55>
<mana           0>
<stamina        1d20+55>
<sk             skill_melee          1d150+450>
<sk             skill_magic_defense  1d150+200>
<sk             skill_battle_defense 1d100+450>
<sk             skill_weapon_hand    1d150+450>
<naturalwc      2d4>
<naturalac      9>
<resource       food        15  3    MEAT>
<resource       shelter    576  1    FOREST>
<resource       shelter    288  1    CAVES>
<resource       shelter    288  1    MOUNTAINS>
<resource       production   3  0    CARNIVOREMEAT>
<resource       production   6  0    FUR>
<resource       desire       1 -3    DANGER>
<resource       desire       1 -3    HOUSES>
<resource       desire       5  1    SELF>
<@@@ END @@@>
<570>
# magpie        Difficulty 1
<type           NORMAL RAVENS>
<frequency      70>
<region         { CITY 0 NEWBIE 0 } >
<regionlimit    { CITY 5 NEWBIE 10 } >
<sex            OTHER>
<name           570>
<corpsename     magpie>
<alignment      NEUTRAL>
<hue            black_colors>
<objvar         int petCanTame   15>
<objvar         int petAckSfx    animals_frstbrd1>
<objvar         int petRefuseSfx animals_frstbrd4>
<sfxnotice      animals_frstbrd1>
<sfxidle        animals_frstbrd2>
<sfxhit         animals_frstbrd3>
<sfxwashit      animals_frstbrd4>
<sfxdie         animals_frstbrd5>
<strength       2d4+9>
<intelligence   1d5+5>
<dexterity      1d10+25>
<hp             5d3>
<mana           0>
<stamina        25d3+25>
<movetype       MT_FLYING>
<sk             skill_melee          2d40+90>
<sk             skill_magic_defense  1d50+50>
<sk             skill_battle_defense 1d100+250>
<sk				      skill_weapon_hand    2d40+90>
<naturalwc      1>
<naturalac      1>
<resistances    slashing>
<resistances    piercing>
<resistances    bashing>
<resource       food       25  1    GRAIN>
<resource       food       25  1    FRUIT>
<resource       food       25  1    CROPS>
<resource       shelter    64  1    FOLIAGE>
<resource       production  2  0    MEAT>
<resource       production 25  0    FEATHERS>
<resource       desire      1 -3    DANGER>
<resource       desire      1 -6    MEAT>
<resource       desire      1 -3    HUMANS>
<resource       desire      1 -3    WATER>
<resource       desire      1 -3    MOUNTAINS>
<resource       desire      5  1    SELF>
<resource       desire      1  1    GOLD>
<resource       desire      1  1    JEWELS>
<@@@ END @@@>
<571>
# crow          Difficulty 1
<type           NORMAL RAVENS>
<frequency      70>
<region         { WHEAT 0 FORESTNEARTOWN 0 FORESTNOTNEARTOWN 0 CEMETERY 0 NEWBIE 0 WINDFOREST 0 } >
<regionlimit    { WHEAT 9 FORESTNEARTOWN 7 FORESTNOTNEARTOWN 9 CEMETERY 9 NEWBIE 9 WINDFOREST 7 } >
<sex            OTHER>
<name           571>
<corpsename     crow>
<alignment      NEUTRAL>
<hue            black_colors>
<objvar         int petCanTame   15>
<objvar         int petAckSfx    animals_crow1>
<objvar         int petRefuseSfx animals_crow4>
<sfxnotice      animals_crow1>
<sfxidle        animals_crow2>
<sfxhit         animals_crow3>
<sfxwashit      animals_crow4>
<sfxdie         animals_crow5>
<strength       2d4+9>
<intelligence   1d5+5>
<dexterity      1d10+25>
<hp             5d3>
<mana           0>
<stamina        25d3+25>
<movetype       MT_FLYING>
<sk             skill_melee          2d40+90>
<sk             skill_magic_defense  1d50+50>
<sk             skill_battle_defense 1d100+250>
<sk				      skill_weapon_hand    2d40+90>
<naturalwc      1>
<naturalac      1>
<resistances    slashing>
<resistances    piercing>
<resistances    bashing>
<resource       food       25  1    GRAIN>
<resource       food       25  1    FRUIT>
<resource       food       25  1    CROPS>
<resource       shelter    32  0    SCARECROWS>
<resource       shelter    32  1    CROPS>
<resource       shelter    32  1    WHEAT>
<resource       production  2  0    MEAT>
<resource       production 25  0    FEATHERS>
<resource       desire      1 -3    DANGER>
<resource       desire      1 -6    MEAT>
<resource       desire      1 -3    HUMANS>
<resource       desire      1 -3    WATER>
<resource       desire      1 -3    MOUNTAINS>
<resource       desire      5  1    SELF>
<resource       desire      1  1    CROPS>
<@@@ END @@@>
<572>
# jack rabbit   Difficulty 2
<type           NORMAL RABBITS>
<frequency      200>
<region         { DESERT 0 ZOO_DESERT 0 JRABBITSMALL 0 JRABBITMEDIUM 0 JRABBITLARGE 0 FORESTNOTNEARTOWN 0 } >
<regionlimit    { DESERT 40 ZOO_DESERT 1 JRABBITSMALL 8 JRABBITMEDIUM 20 JRABBITLARGE 40 FORESTNOTNEARTOWN 20 } >
<sex            OTHER>
<name           572>
<corpsename     "jack rabbit">
<alignment      NEUTRAL>
<hue            brown_colors>
<objvar         int petCanTame   5>
<objvar         int petAckSfx    animals_rabbit3>
<objvar         int petRefuseSfx animals_rabbit4>
<script         monster>
<sfxhit         animals_rabbit3>
<sfxwashit      animals_rabbit4>
<sfxdie         animals_rabbit5>
<strength       1d5+5>
<intelligence   1d9+5>
<dexterity      1d13+25>
<hp             4d2>
<mana           0>
<stamina        15d3+25>
<sk             skill_melee          1d50+50>
<sk             skill_magic_defense  1d90+50>
<sk             skill_battle_defense 1d130+250>
<sk				      skill_weapon_hand    1d50+50>
<naturalwc      1d2>
<naturalac      4>
<resistances    slashing>
<resistances    piercing>
<resistances    bashing>
<resource       food       576  64    GRASS>
<resource       food        55   1    CROPS>
<resource       shelter    576   1    GRASS>
<resource       production   2   0    MEAT>
<resource       production   4   0    FUR>
<resource       desire       2  -6    MEAT>
<resource       desire       1  -3    DANGER>
<resource       desire       3   1    SELF>
<resource       desire       5   1    CROPS>
<@@@ END @@@>
<573>
# Energy Vortex
<type           NORMAL AIR_ELEMENTAL>
<sex            OTHER>
<name           573>
<job            >
<corpsename     "energy vortex">
<movetype       MT_GHOST>
<fleeval        255>
<strength       100>
<intelligence   100>
<dexterity      200>
<hp             900>
<mana           0>
<stamina        STR>
<sk             skill_magic_defense  999>
<sk             skill_battle_defense 999>
<hue 20 20>
<@@@ END @@@>
<574>
# blade spirit
<type           NORMAL BLADE_SPIRIT>
<sex            OTHER>
<name           574>
<job            >
<corpsename     "blade spirit">
<fleeval        255>
<strength       75>
<intelligence   100>
<dexterity      75>
<hp             200>
<mana           0>
<stamina        STR>
<sk             skill_magic_defense  25d10+225>
<sk             skill_battle_defense 25d10+225>
<@@@ END @@@>
<576>
# big stag      Difficulty 2
<type           NORMAL STAGS>
<frequency      200>
<region         { DARKFOREST 0 DARKERFOREST 0 FORESTNOTNEARTOWN 0 FORESTNEARTOWN 0 PLAINS 0 ZOO_FOREST 0 ZOO_PLAINS 0 BSTAGSMALL 0 BSTAGMEDIUM 0 BSTAGLARGE 0 NEWBIE 0 WINDFOREST 0 } >
<regionlimit    { DARKFOREST 20 DARKERFOREST 20 FORESTNOTNEARTOWN 20 FORESTNEARTOWN 5 PLAINS 25 ZOO_FOREST 1 ZOO_PLAINS 1 BSTAGSMALL 10 BSTAGMEDIUM 20 BSTAGLARGE 40 NEWBIE 15 WINDFOREST 5 } >
<sex            OTHER>
<name           576>
<corpsename     deer>
<alignment      NEUTRAL>
<objvar         int petCanTame   70>
<objvar         int petAckSfx    animals_deer3>
<objvar         int petRefuseSfx animals_deer4>
<script         monster>
<sfxhit         animals_deer3>
<sfxwashit      animals_deer4>
<sfxdie         animals_deer5>
<strength       2d16+39>
<intelligence   2d16+25>
<dexterity      2d16+45>
<hp             2d16+39>
<mana           0>
<stamina        2d16+45>
<sk             skill_melee          3d60+295>
<sk             skill_magic_defense  3d60+265>
<sk             skill_battle_defense 3d60+245>
<sk             skill_weapon_hand    3d60+295>
<naturalwc      2d4+2>
<naturalac      12>
<resource       food       576  64    GRASS>
<resource       food        25   1    CROPS>
<resource       food        13   1    FRUIT>
<resource       shelter    576   1    FOREST>
<resource       production  30   0    MEAT>
<resource       production  15   0    LEATHER>
<resource       desire       1  -3    DANGER>
<resource       desire       1  -3    HOUSES>
<resource       desire       3  -6    MEAT>
<resource       desire       5   1    SELF>
<resource       desire       5   2    FOLIAGE>
<@@@ END @@@>
<577>
# giant serpent Difficulty 6
<type           NORMAL 21>
<frequency      20>
<region         { DUNGN 0 SWAMP 0 JUNGLENOTNEARTOWN 0 JUNGLE 0 ZOO_JUNGLE 0 } >
<regionlimit    { DUNGN 5 SWAMP 10 JUNGLENOTNEARTOWN 15 JUNGLE 10 ZOO_JUNGLE 1 } >
<sex            OTHER>
<name           577>
<alignment      NEUTRAL>
<corpsename     "giant serpent">
<hue            snake_colors>
<sfxnotice      animals_snake1>
<sfxidle        animals_snake2>
<sfxhit         animals_snake3>
<sfxwashit      animals_snake4>
<sfxdie         animals_snake5>
<strength       1d30+185>
<intelligence   1d20+65>
<dexterity      1d25+55>
<hp             1d30+185>
<mana           1d25+65>
<stamina        1d20+55>
<sk             skill_melee          1d50+650>
<sk             skill_magic_defense  1d150+250>
<sk             skill_battle_defense 1d150+450>
<sk	        skill_weapon_hand    1d200+600>
<naturalwc      2d8+3>
<naturalac      16>
<resource       food         6  3    MEAT>
<resource       shelter     32  1    DUNGEONS>
<resource       shelter     32  1    JUNGLE>
<resource       production   8  0    SERPENT_SCALES>
<resource       production  20  0    CARNIVOREMEAT>
<resource       production  15  0    LEATHER>
<resource       desire       1 -3    DANGER>
<resource       desire       1 -3    HOUSES>
<@@@ END @@@>
<579>
# drakes        Difficulty 7
<type           NORMAL DRAKES>
<frequency      100>
<region         { DRAGON 0 DRAKE 0 DARKESTFOREST } >
<regionlimit    { DRAGON 2 DRAKE 2 DARKESTFOREST 5 } >
<sex            OTHER>
<name           579>
<corpsename     drake>
<alignment      EVIL>
<notoriety      -125>
<objvar         int petCanTame   100>
<objvar         int petAckSfx    monster_dragon1>
<objvar         int petRefuseSfx monster_dragon4>
<objvar         int spellCastersLevel 5>
<script         dragonai>
<script         monster>
<sfxnotice      monster_dragon1>
<sfxidle        monster_dragon2>
<sfxhit         monster_dragon3>
<sfxwashit      monster_dragon4>
<sfxdie         monster_dragon5>
<strength       1d30+200>
<intelligence   1d40+100>
<dexterity      1d20+132>
<hp             1d400+500>
<mana           1d120+85>
<stamina        1d20+42>
<movetype       MT_FLYING>
<sk             skill_melee          1d250+650>
<sk             skill_magic_defense  1d150+650>
<sk             skill_battle_defense 1d150+650>
<sk				      skill_weapon_hand    1d150+650>
<naturalwc      4d6>
<naturalac      28>
<eq             { rich_backpack 3 filthyrich_backpack 1 } 0 0 1 SELFCONTAINED>
<eq             { rich_backpack 3 filthyrich_backpack 1 } 0 0 1 SELFCONTAINED>
<eq             { 101515 1 101520 1 101525 1 101530 1 101535 1 } 0 0 1 SELFCONTAINED>
<resource       food         25 3    MEAT>
<resource       shelter     288 1    CAVES>
<resource       shelter     288 1    DUNGEONS>
<resource       production   50 0    CARNIVOREMEAT>
<resource       production   20 0    LEATHER>
<resource       production   8  0    DRAGON_BLOOD>
<resource       desire       1 -3    DANGER>
<resource       desire       1 -3    HOUSES>
<resource       desire       1 -3    WATER>
<resource       desire       1 -3    MOUNTAINS>
<resource       desire       5  1    GOLD>
<friends 545>
<friends 578>
<friends 579>
<friends 580>
<@@@ END @@@>
<581>
# small snake   Difficulty 2
<type           NORMAL SMALL_SNAKE>
<frequency      100>
<region         { RUINS 0 DESPISE 0 SWAMP 0 JUNGLE 0 FORESTNOTNEARTOWN 0 DESERT 0 ZOO_DUNGN 0 ZOO_DESERT 0 ZOO_SWAMP 0 ZOO_JUNGLE 0 NEWBIE 0 } >
<regionlimit    { RUINS 8 DESPISE 15 SWAMP 10 JUNGLE 10 FORESTNOTNEARTOWN 12 DESERT 50 ZOO_DUNGN 1 ZOO_DESERT 1 ZOO_SWAMP 1 ZOO_JUNGLE 1 NEWBIE 12 } >
<sex            OTHER>
<name           581>
<corpsename     snake>
<alignment      EVIL>
<notoriety      -125>
<hue            snake_colors>
<objvar         int petCanTame   70>
<objvar         int petAckSfx    animals_snake1>
<objvar         int petRefuseSfx animals_snake4>
<script         monster>
<sfxnotice      animals_snake1>
<sfxidle        animals_snake2>
<sfxhit         animals_snake3>
<sfxwashit      animals_snake4>
<sfxdie         animals_snake5>
<strength       3d5+19>
<intelligence   1d5+5>
<dexterity      1d10+15>
<hp             3d5+19>
<mana           0>
<stamina        1d10+15>
<sk             skill_melee          3d50+190>
<sk             skill_magic_defense  1d50+150>
<sk             skill_battle_defense 1d100+150>
<sk				      skill_weapon_hand    3d50+190>
<naturalwc      1d4>
<naturalac      8>
<resource       shelter    288  1    CAVES>
<resource       shelter    288  1    DUNGEONS>
<resource       shelter    576  1    DESERT>
<resource       production   1  0    MEAT>
<resource       desire       1 -3    DANGER>
<resource       desire       5  1    GOLD>
<@@@ END @@@>
<582>
# daemon boss         Difficulty 11
<type           NORMAL DAEMON_W_SWORD>
<frequency      5>
<region         { ELDERDAEMON 0 } >
<regionlimit    { ELDERDAEMON 1 } >
<sex            OTHER>
<name           582>
<corpsename     balron>
<alignment      EVIL>
<notoriety      -125>
<hue            1106 1110>
<objvar         int spellCastersLevel 8>
<script         spellai>
<script         monster>
<script         loot>
<script         daemon>
<sfxnotice      monster_daemon1>
<sfxidle        monster_daemon2>
<sfxhit         monster_daemon3>
<sfxwashit      monster_daemon4>
<sfxdie         monster_daemon5>
<strength       1d200+385>
<intelligence   1d300+225>
<dexterity      2d40+75>
<hp             1d400+400>
<mana           1d100+450>
<stamina        1d100+155>
<movetype       MT_FLYING>
<sk             skill_melee          1d100+900>
<sk             skill_magic_defense  1d100+900>
<sk             skill_battle_defense 1d100+900>
<sk             skill_magic          1d100+900>
<sk	        skill_weapon_hand    1d100+900>
<naturalac      3d6+15>
<naturalwc      25>
<eq             filthy_rich_backpack 0 0 1>
<eq             broad_sword magic 100 1 200 0 0 1 SELFCONTAINED>
<eq             random_upper_scroll 0 0 1 SELFCONTAINED>
<eq             random_upper_scroll 0 0 1 SELFCONTAINED>
<resistances    magic>
<resource       shelter     288  1    CAVES>
<resource       shelter     288  1    DUNGEONS>
<resource       production    9  0    CARNIVOREMEAT>
<resource       production    8  0    DAEMON_BONE>
<resource       desire        1 -3    DANGER>
<resource       desire        1 -3    WATER>
<resource       desire        1 -3    MOUNTAINS>
<resource       desire        5  1    SELF>
<resource       desire        5  1    GOLD>
<friends 559>
<friends 605>
<@@@ END @@@>
<583>
# lich lord
<type           NORMAL LICHES>
<frequency      50>
<region         { ELDERLICHE 0 } >
<regionlimit    { ELDERLICHE 1 } >
<sex            OTHER>
<name           583>
<corpsename     liche's>
<alignment      EVIL>
<notoriety      -125>
<fleeval        255>
<objvar         int spellCastersLevel 8>
<script         spellai>
<script         monster>
<script         loot>
<sfxnotice      monster_liche1>
<sfxidle        monster_liche2>
<sfxhit         monster_liche3>
<sfxwashit      monster_liche4>
<sfxdie         monster_liche5>
<strength       1d90+415>
<intelligence   1d90+565>
<dexterity      1d20+95>
<hp             1d90+415>
<mana           1d90+565>
<stamina        1d20+95>
<sk             skill_melee          1d200+500>
<sk             skill_magic_defense  1d100+900>
<sk             skill_battle_defense 1d100+550>
<sk             skill_magic          1d100+900>
<sk	        skill_weapon_hand    1d200+600>
<naturalwc      6d3>
<naturalac      26>
<eq             undead_backpack 0 0 1>
<eq             filthyrich_backpack 0 0 1>
<eq             targetables magic 100 1 200 0 0 1 SELFCONTAINED>
<eq             reagents magic 50 1 100 0 0 1 SELFCONTAINED>
<eq             random_upper_scroll 0 0 1 SELFCONTAINED>
<eq             random_upper_scroll 0 0 1 SELFCONTAINED>
<immunities     slashing>
<immunities     piercing>
<immunities     bashing>
<immunities     ranged>
<immunities     poison>
<resource       shelter     32  1    SPOOKINESS>
<resource       shelter    288  1    DUNGEONS>
<resource       shelter    288  1    CAVES>
<resource       production   1  0    SPOOKINESS>
<resource       desire       1 -3    DANGER>
<resource       desire       5  1    GOLD>
<@@@ END @@@>
<584>
# pack horse         Difficulty 2
<type           NORMAL PACKHORSES>
<sex            OTHER>
<name           584>
<corpsename     pack horse>
<alignment      NEUTRAL>
<objvar         string lookAtText "a pack horse">
<objvar         int petCanTame   45>
<objvar         int petAckSfx    animals_horse1>
<objvar         int petRefuseSfx animals_horse4>
<script         packanimal>
<sfxnotice      animals_horse1>
<sfxidle        animals_horse2>
<sfxhit         animals_horse3>
<sfxwashit      animals_horse4>
<sfxdie         animals_horse5>
<strength       4d20+40>
<intelligence   1d5+5>
<dexterity      1d20+35>
<hp             4d20+40>
<mana           0>
<stamina        1d20+35>
<sk             skill_melee          3d50+290>
<sk             skill_weapon_hand    3d50+290>
<sk             skill_magic_defense  1d50+250>
<sk             skill_battle_defense 1d100+350>
<naturalwc      2d5+2>
<naturalac      9>
<eq             backpack 0 0 1>
<resource       food         55   1    CROPS>
<resource       food         55   1    FRUIT>
<resource       food         55   1    GRAIN>
<resource       food         55   1    HAY>
<resource       food        576  64    GRASS>
<resource       shelter       1   1    STABLES>
<resource       shelter       1   1    HUMANS>
<resource       production   15   0    MEAT>
<resource       production   10   0    LEATHER>
<resource       desire        1  -3    DANGER>
<resource       desire        3  -6    MEAT>
<resource       desire        5   1    SELF>
<resource       desire        5   1    HUMANS>
<@@@ END @@@>
<585>
# pack llama         Difficulty 2
<type           NORMAL PACKLLAMAS>
<sex            OTHER>
<name           585>
<corpsename     pack llama>
<alignment      NEUTRAL>
<objvar         string lookAtText "a pack llama">
<objvar         int petCanTame   50>
<objvar         int petAckSfx    animals_llama3>
<objvar         int petRefuseSfx animals_llama4>
<script         packanimal>
<sfxhit         animals_llama3>
<sfxwashit      animals_llama4>
<sfxdie         animals_llama5>
<strength       2d15+19>
<intelligence   1d15+15>
<dexterity      1d20+35>
<hp             2d15+19>
<mana           0>
<stamina        1d20+35>
<sk             skill_melee          2d50+190>
<sk             skill_magic_defense  1d50+150>
<sk             skill_battle_defense 1d100+350>
<sk             skill_weapon_hand    2d50+190>
<naturalwc      2d3>
<naturalac      8>
<eq             backpack 0 0 1>
<friends	602 603 538 542 522>
<resource       food        5   1    CROPS>
<resource       food        5   1    FRUIT>
<resource       food        5   1    GRAIN>
<resource       food        5   1    HAY>
<resource       food      576  64    GRASS>
<resource       shelter    16   1    STABLES>
<resource       shelter     1   1    HUMANS>
<resource       production  7   0    MEAT>
<resource       production 12   0    FUR>
<resource       desire      1  -3    DANGER>
<resource       desire      5   1    SELF>
<resource       desire      5   1    HUMANS>
<@@@ END @@@>
<588>
# ogre lord         Difficulty 9 
<type           NORMAL OGRES>
<frequency      40>
<region         { ELDEROGRE 0 } >
<regionlimit    { ELDEROGRE 1 } >
<sex            OTHER>
<name           588>
<corpsename     "ogre lord's" >
<alignment      EVIL>
<notoriety      -125>
<script         monster>
<sfxnotice      monster_ogre1>
<sfxidle        monster_ogre2>
<sfxhit         monster_ogre3>
<sfxwashit      monster_ogre4>
<sfxdie         monster_ogre5>
<strength       2d90+265>
<intelligence   1d25+45>
<dexterity      1d10+65>
<hp             1d90+665>
<mana           0>
<stamina        1d90+85>
<sk             skill_melee          1d100+900>
<sk             skill_magic_defense  1d150+650>
<sk             skill_battle_defense 1d100+750>
<sk             skill_weapon_hand    1d100+900>
<eq             filthyrich_backpack 0 0 1>
<eq             club 0 0 1 SELFCONTAINED>
<naturalwc      5d7+5>
<naturalac      25>
<resource       food        15  3    MEAT>
<resource       shelter    576  1    FOREST>
<resource       shelter    576  1    MOUNTAINS>
<resource       production  10  0    CARNIVOREMEAT>
<resource       desire       1 -3    DANGER>
<resource       desire       1 -3    HOUSES>
<@@@ END @@@>
<589>
# gazer boss         Difficulty 9
<type           NORMAL GAZERS>
<frequency      40>
<region         { GAZERBOSS 0 } >
<regionlimit    { GAZERBOSS 1 } >
<sex            OTHER>
<name           589>
<corpsename     "elder gazer">
<alignment      EVIL>
<notoriety      -125>
<objvar         int spellCastersLevel 1d2+6>
<script         spellai>
<script         monster>
<sfxnotice      monster_gazer1>
<sfxidle        monster_gazer2>
<sfxhit         monster_gazer3>
<sfxwashit      monster_gazer4>
<sfxdie         monster_gazer5>
<strength       1d30+95>
<intelligence   1d95+90>
<dexterity      1d20+85>
<hp             1d30+185>
<mana           1d95+190>
<stamina        1d20+45>
<sk             skill_melee          1d200+800>
<sk             skill_magic_defense  1d150+850>
<sk             skill_battle_defense 1d100+550>
<sk             skill_magic          1d100+900>
<sk	        skill_weapon_hand    1d200+800>
<naturalwc      3d8>
<naturalac      25>
<eq             filthyrich_backpack 0 0 1>
<eq             filthyrich_gold_pile 0 0 1 SELFCONTAINED>
<resource       shelter    288  1    CAVES>
<resource       shelter    288  1    DUNGEONS>
<resource       production   8  0    MEAT>
<resource       desire       1 -3    DANGER>
<resource       desire       1  -3    HOUSES>
<resource       desire       5  1    SELF>
<@@@ END @@@>
<590>
# Evil Mage Boss   Difficulty 9
<type         NORMAL 400>
<frequency    35>
<region       EVIL_MAGEBOSS>
<regionlimit  { EVIL_MAGEBOSS 1 } >
<job          mage>
<sex          MALE>
<name         590>
<partialhue   all_skin_colors>
<objvar       int spellCastersLevel 1d2+6>
<script       spellai>
<script       monster>
<script       loot>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    EVIL>
<attitude     1d41-86>
<notoriety    -125>
<strength     1d25+80>
<dexterity    1d25+90>
<intelligence 1d25+125>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+625>
<sk           skill_magic_defense  25d10+725>
<sk           skill_battle_defense 25d10+625>
<sk           skill_magic          1d50+950>
<sk	      skill_weapon_hand    2d200+200>
<immunities   magic>
<naturalwc    3d4>
<naturalac    18>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           robe 1106 1109 1>
<eq           sandals 0 0 1>
<eq           filthyrich_backpack 0 0 1>
<eq           random_upper_scroll 0 0 1 SELFCONTAINED>
<eq           random_upper_scroll 0 0 1 SELFCONTAINED>
<resource     food         5  1    MEAT>
<resource     food         5  1    FOOD>
<resource     shelter     16  1    HOUSES>
<resource     production   8  0    CARNIVOREMEAT>
<resource     desire       1 -3    DANGER>
<resource     desire       1 -3    SPOOKINESS>
<resource     desire      10  2    GOLD>
<resource     desire       1  1    MAGIC>
<resource     desire      10  2    BONE>
<resource     desire      10  2    DAEMON_BONE>
<resource     desire      10  2    DIRT>
<resource     desire      10  2    DRAGON_BLOOD>
<resource     desire      10  2    MANDRAKE>
<resource     desire      10  2    INK>
<resource     desire      10  2    SERPENT_SCALES>
<resource     desire      10  2    SILK>
<resource     desire      10  2    SPIDER_SILK>
<resource     desire      10  2    SULPHEROUS ASH>
<resource     desire      10  2    BLACK_PEARL>
<resource     desire      10  2    BLOOD_MOSS>
<resource     desire      10  2    GARLIC>
<resource     desire      10  2    GINSENG>
<resource     desire      10  2    NIGHTSHADE>
<resource     desire      10  2    VOLCANIC ASH>
<@@@ END @@@>
<591>
# blood elemental Difficulty 10 
<type           NORMAL WATER_ELEMENTAL>
<frequency      40>
<region         { BLOODELEMENTAL 0 } >
<regionlimit    { BLOODELEMENTAL 1 } >
<sex            OTHER>
<name           591>
<corpsename     "blood elemental">
<alignment      EVIL>
<notoriety      -125>
<hue            33 38>
<objvar         int spellCastersLevel 1d2+6>
<script         spellai>
<script         monster>
<sfxnotice      elementl_waterel1>
<sfxidle        elementl_waterel2>
<sfxhit         elementl_waterel3>
<sfxwashit      elementl_waterel4>
<sfxdie         elementl_waterel5>
<strength       1d90+325>
<intelligence   1d125+90>
<dexterity      1d20+65>
<hp             1d90+325>
<mana           1d125+90>
<stamina        1d20+65>
<sk             skill_melee          1d200+800>
<sk             skill_magic_defense  1d150+800>
<sk             skill_battle_defense 1d100+850>
<sk             skill_magic          1d150+850>
<sk	        skill_weapon_hand    1d200+800>
<naturalwc      4d7>
<naturalac      30>
<eq             filthy_rich_backpack 0 0 1>
<eq             filthy_rich_gold_pile 0 0 1 SELFCONTAINED>
<resource       shelter    576  1    DUNGEONS>
<resource       production   8  0    MAGIC>
<resource       desire       1 -3    DANGER>
<resource       desire       5  1    DUNGEONS>
<@@@ END @@@>
<592>
# poison elemental Difficulty 11 
<type           NORMAL AIR_ELEMENTAL>
<frequency      50>
<region         { POISONELEMENTAL 0 } >
<regionlimit    { POISONELEMENTAL 1 } >
<sex            OTHER>
<name           592>
<corpsename     "poison elemental">
<alignment      EVIL>
<notoriety      -125>
<hue            61 79>
<objvar	        int spellCastersLevel 1d2+6>
<script         spellai>
<script         monster>
<sfxnotice      elementl_airelem1>
<sfxidle        elementl_airelem2>
<sfxhit         elementl_airelem3>
<sfxwashit      elementl_airelem4>
<sfxdie         elementl_airelem5>
<strength       1d90+325>
<intelligence   1d75+90>
<dexterity      1d20+165>
<hp             1d90+425>
<mana           1d125+270>
<stamina        1d20+165>
<sk             skill_melee          1d200+800>
<sk             skill_magic_defense  1d150+800>
<sk             skill_battle_defense 1d100+750>
<sk             skill_magic          1d150+800>
<sk             skill_weapon_hand    1d200+700>
<naturalwc      4d6+1>
<naturalac      35>
<eq             filthyrich_backpack 0 0 1>
<eq             random_gold_pile 0 0 1 SELFCONTAINED>
<resource       shelter    576  1    DUNGEONS>
<resource       production   8  0    MAGIC>
<resource       desire       1 -3    DANGER>
<resource       desire       5  1    DUNGEONS>
<@@@ END @@@>
<593>
# skeleton mage      Difficulty 7
<type           NORMAL BONE_MAGE>
<frequency      40>
<region         { SKELETALMAGE 0 } >
<regionlimit    { SKELETALMAGE 3 } >
<sex            OTHER>
<name           593>
<corpsename     skeletal>
<alignment      EVIL>
<notoriety      -125>
<fleeval        255>
<hue            red_colors>
<objvar         int petAckSfx    monster_skletn1>
<objvar         int petRefuseSfx monster_skletn4>
<objvar         int spellCastersLevel 1d3+2>
<script         spellai>
<script         monster>
<sfxnotice      monster_skletn1>
<sfxidle        monster_skletn2>
<sfxhit         monster_skletn3>
<sfxwashit      monster_skletn4>
<sfxdie         monster_skletn5>
<strength       1d25+75>
<intelligence   1d25+85>
<dexterity      1d20+55>
<hp             1d25+75>
<mana           1d50+70>
<stamina        1d20+55>
<sk             skill_melee          1d150+450>
<sk             skill_magic_defense  1d150+450>
<sk             skill_battle_defense 1d100+450>
<sk             skill_weapon_hand    1d100+450>
<sk             skill_magic          1d100+600>
<naturalwc      2d4>
<naturalac      19>
<eq             { rich_backpack 1 poor_backpack 1 } 0 0 1>
<eq             random_upper_scroll 0 0 1 SELFCONTAINED>
<eq             random_upper_scroll 0 0 1 SELFCONTAINED>
<resource       shelter    64  1    SPOOKINESS>
<resource       production  1  0    SPOOKINESS>
<resource       production  8  0    BONE>
<resource       desire      1 -3    DANGER>
<@@@ END @@@>
<594>
# skeleton knight     Difficulty 6
<type           NORMAL BONE_KNIGHT>
<frequency      40>
<region         { SKELETALKNIGHT 0 } >
<regionlimit    { SKELETALKNIGHT 6 } >
<sex            OTHER>
<name           594>
<corpsename     skeletal>
<alignment      EVIL>
<notoriety      -125>
<fleeval        255>
<objvar         int petAckSfx    monster_skletn1>
<objvar         int petRefuseSfx monster_skletn4>
<script         nonhumaneq>
<script         monster>
<sfxnotice      monster_skletn1>
<sfxidle        monster_skletn2>
<sfxhit         monster_skletn3>
<sfxwashit      monster_skletn4>
<sfxdie         monster_skletn5>
<strength       1d55+95>
<intelligence   1d25+35>
<dexterity      1d20+75>
<hp             1d55+95>
<mana           0>
<stamina        1d20+75>
<sk             skill_melee          1d150+850>
<sk             skill_magic_defense  1d150+650>
<sk             skill_battle_defense 1d100+850>
<sk             skill_weapon_hand    1d100+850>
<naturalwc      2d10>
<naturalac      18>
<eq             plate_chest 0 0 1 SELFCONTAINED>
<eq             rich_backpack 0 0 1>
<resource       shelter    64  1    SPOOKINESS>
<resource       production  1  0    SPOOKINESS>
<resource       production  8  0    BONE>
<resource       desire      1 -3    DANGER>
<@@@ END @@@>
<597>
# daemon        (Summoning Spell)
<type           NORMAL DAEMONS>
<sex            OTHER>
<name           559>
<corpsename     daemon>
<alignment      EVIL>
<notoriety      -125>
<objvar         int spellCastersLevel 1d2+6>
<objvar         int petAckSfx    monster_daemon1>
<objvar         int petRefuseSfx monster_daemon4>
<script         spellai>
<script         nonhumaneq>
<script         monster>
<sfxnotice      monster_daemon1>
<sfxidle        monster_daemon2>
<sfxhit         monster_daemon3>
<sfxwashit      monster_daemon4>
<sfxdie         monster_daemon5>
<strength       1d20+165>
<intelligence   1d15+90>
<dexterity      1d10+65>
<hp             1d20+165>
<mana           1d15+90>
<stamina        1d10+65>
<movetype       MT_FLYING>
<sk             skill_melee          1d100+700>
<sk             skill_magic_defense  1d100+700>
<sk             skill_battle_defense 1d100+650>
<sk             skill_magic          1d100+700>
<sk				skill_weapon_hand   1d200+600>
<naturalac      3d6>
<naturalwc      30>
<resource       shelter    576  1    CAVES>
<resource       shelter    576  1    DUNGEONS>
<resource       production   9  0    CARNIVOREMEAT>
<resource       production   8  0    DAEMON_BONE>
<resource       desire       1 -3    DANGER>
<resource       desire       1 -3    HOUSES>
<resource       desire       5  1    SELF>
<resource       desire       5  1    GOLD>
<@@@ END @@@>
<598>
# earth elemental (Summoning Spell)
<type           NORMAL EARTH_ELEMENTAL>
<sex            OTHER>
<name           527>
<corpsename     "earth elemental">
<alignment      EVIL>
<notoriety      -125>
<hue            no_colors>
<objvar         int petAckSfx    elementl_erthel1>
<objvar         int petRefuseSfx elementl_erthel4>
<script         monster>
<sfxnotice      elementl_erthel1>
<sfxidle        elementl_erthel2>
<sfxhit         elementl_erthel3>
<sfxwashit      elementl_erthel4>
<sfxdie         elementl_erthel5>
<strength       1d20+115>
<intelligence   1d15+60>
<dexterity      1d10+55>
<hp             1d20+115>
<mana           1d15+60>
<stamina        1d10+55>
<sk             skill_melee          1d400+600>
<sk				skill_weapon_hand   1d400+400>
<sk             skill_magic_defense  1d450+300>
<sk             skill_battle_defense 2d125+400>
<naturalwc      3d6>
<naturalac      15>
<resource       food        64 64    DIRT>
<resource       food        64 64    CAVES>
<resource       shelter    288  1    CAVES>
<resource       shelter     64  1    DIRT>
<resource       shelter    576  1    MOUNTAINS>
<resource       production   8  0    MAGIC>
<resource       desire       1 -3    DANGER>
<resource       desire       5  1    CAVES>
<@@@ END @@@>
<599>
# water elemental (Summoning Spell)
<type           NORMAL WATER_ELEMENTAL>
<sex            OTHER>
<name           554>
<corpsename     "water elemental">
<alignment      EVIL>
<notoriety      -125>
<movetype       mt_amphibious>
<objvar         int spellCastersLevel 2d3+1>
<objvar         int petAckSfx    elementl_waterel1>
<objvar         int petRefuseSfx elementl_waterel4>
<script         spellai>
<script         monster>
<sfxnotice      elementl_waterel1>
<sfxidle        elementl_waterel2>
<sfxhit         elementl_waterel3>
<sfxwashit      elementl_waterel4>
<sfxdie         elementl_waterel5>
<strength       1d20+115>
<intelligence   1d15+60>
<dexterity      1d10+55>
<hp             1d20+115>
<mana           1d15+60>
<stamina        1d10+55>
<sk             skill_melee          1d200+800>
<sk             skill_magic_defense  1d150+600>
<sk             skill_battle_defense 1d100+550>
<sk             skill_magic          1d150+600>
<sk				skill_weapon_hand   1d200+700>
<naturalwc      4d3>
<naturalac      19>
<resource       shelter    576  1    WATER>
<resource       production   8  0    MAGIC>
<resource       desire       1 -3    DANGER>
<resource       desire       5  1    WATER>
<@@@ END @@@>
<600>
# air elemental (Summoning Spell)
<type           NORMAL AIR_ELEMENTAL>
<sex            OTHER>
<name           552>
<corpsename     "air elemental">
<alignment      EVIL>
<notoriety      -125>
<objvar	        int spellCastersLevel 2d3+1>
<objvar         int petAckSfx    elementl_airelem1>
<objvar         int petRefuseSfx elementl_airelem4>
<script         spellai>
<script         monster>
<sfxnotice      elementl_airelem1>
<sfxidle        elementl_airelem2>
<sfxhit         elementl_airelem3>
<sfxwashit      elementl_airelem4>
<sfxdie         elementl_airelem5>
<strength       1d20+115>
<intelligence   1d15+60>
<dexterity      1d10+55>
<hp             1d20+115>
<mana           1d15+60>
<stamina        1d10+55>
<sk             skill_melee          1d200+600>
<sk             skill_magic_defense  1d150+600>
<sk             skill_battle_defense 1d100+550>
<sk             skill_magic          1d150+600>
<sk				skill_weapon_hand   1d200+600>
<naturalwc      4d3+1>
<naturalac      19>
<resource       shelter    576  1    MOUNTAINS>
<resource       production   8  0    MAGIC>
<resource       desire       1 -3    DANGER>
<resource       desire       5  1    MOUNTAINS>
<@@@ END @@@>
<601>
# fire elemental (Summoning Spell)
<type           NORMAL FIRE_ELEMENTAL>
<sex            OTHER>
<name           553>
<corpsename     "fire elemental">
<alignment      EVIL>
<notoriety      -125>
<objvar         int spellCastersLevel 1d3+2>
<objvar         int petAckSfx    elementl_firelem1>
<objvar         int petRefuseSfx elementl_firelem4>
<script         spellai>
<script         monster>
<sfxnotice      elementl_firelem1>
<sfxidle        elementl_firelem2>
<sfxhit         elementl_firelem3>
<sfxwashit      elementl_firelem4>
<sfxdie         elementl_firelem5>
<strength       1d20+115>
<intelligence   1d15+60>
<dexterity      1d10+55>
<hp             1d20+115>
<mana           1d15+60>
<stamina        1d10+55>
<sk             skill_melee          1d200+800>
<sk             skill_magic_defense  1d150+600>
<sk             skill_battle_defense 1d100+550>
<sk             skill_magic          1d150+600>
<sk             skill_weapon_hand    1d300+700>
<naturalwc      4d3>
<naturalac      19>
<eq             litesrc 0 0 1>
<resource       shelter    128  1    LAVA>
<resource       production   8  0    MAGIC>
<resource       desire       1 -3    DANGER>
<resource       desire       5  1    LAVA>
<@@@ END @@@>
<602>
# orc mage   Difficulty 7
<type           NORMAL ORCS>
<frequency      100>
<region         { ORCSMALL 0 ORCLARGE 0 FORESTNOTNEARTOWN 0 DARKFOREST 0 DARKERFOREST 0 ORCCAMP 0 ORC 0 } >
<regionlimit    { ORCSMALL 1 ORCLARGE 1 FORESTNOTNEARTOWN 2 DARKFOREST 4 DARKERFOREST 7 ORCCAMP 2 ORC 1 } >
<sex            OTHER>
<partialhue		GREEN_COLORS>
<name           602>
<corpsename     glowing>
<alignment      EVIL>
<notoriety      -125>
<objvar         int spellCastersLevel 1d3+1>
<objvar         int nonHuman 0>
<script         nonhuman>
<script         nonhumaneq>
<script		spellai>
<script         loot>
<sfxnotice      monster_orc1>
<sfxidle        monster_orc2>
<sfxhit         monster_orc3>
<sfxwashit      monster_orc4>
<sfxdie         monster_orc5>
<strength       1d35+95>
<intelligence   1d25+60>
<dexterity      1d25+90>
<hp             1d35+110>
<mana           1d25+85>
<stamina        1d35+100>
<sk             skill_melee           1d150+750>
<sk             skill_magic_defense   1d150+700>
<sk             skill_battle_defense  1d250+600>
<sk             skill_magic           2d125+700>
<sk             skill_weapon_slashing 1d250+600>
<naturalwc      2d8>
<naturalac      15>
<eq             { rich_backpack 1 filthyrich_backpack 2 } 0 0 1>
<eq             { random_jewel 1 0 1 } 0 0 1 SELFCONTAINED>
<friends	538 542 522 603>
<resource       food        15  3    MEAT>
<resource       shelter    576  1    CAVES>
<resource       shelter    576  1    DUNGEONS>
<resource       shelter     64  1    ORCCAMP>
<resource       production   9  0    CARNIVOREMEAT>
<resource       production  16  1    ORCCAMP>
<resource       desire       1 -3    DANGER>
<resource       desire       5  1    SELF>
<@@@ END @@@>
<603>
# orc lord   Difficulty 8
<type           NORMAL ORC_CAP>
<frequency      95>
<region         { ORCSMALL 0 ORCLARGE 0 FORESTNOTNEARTOWN 0 DARKFOREST 0 DARKERFOREST 0 ORCCAMP 0 ORC 0 } >
<regionlimit    { ORCSMALL 1 ORCLARGE 1 FORESTNOTNEARTOWN 2 DARKFOREST 4 DARKERFOREST 7 ORCCAMP 1 ORC 1 } >
<sex            OTHER>
<name           603>
<corpsename     Orcish>
<alignment      EVIL>
<notoriety      -125>
<objvar         int nonHuman 0>
<script         nonhuman>
<script         nonhumaneq>
<script         loot>
<sfxnotice      monster_orc1>
<sfxidle        monster_orc2>
<sfxhit         monster_orc3>
<sfxwashit      monster_orc4>
<sfxdie         monster_orc5>
<strength       5d35+95>
<intelligence   4d25+60>
<dexterity      4d25+90>
<hp             1d35+110>
<mana           1d25+85>
<stamina        1d35+100>
<sk             skill_melee           1d150+750>
<sk             skill_magic_defense   1d150+700>
<sk             skill_battle_defense  1d250+600>
<sk             skill_magic           2d125+700>
<sk             skill_weapon_slashing 1d250+600>
<naturalwc      2d8>
<naturalac      15>
<eq             { rich_backpack 1 filthyrich_backpack 2 } 0 0 1>
<eq		{ flithyrich_backpack 0 } 0 0 1>
<eq             { random_jewel 1 0 1 } 0 0 1 SELFCONTAINED>
<friends	522 538 602 542>
<resource       food        15  3    MEAT>
<resource       shelter    576  1    CAVES>
<resource       shelter    576  1    DUNGEONS>
<resource       shelter     64  1    ORCCAMP>
<resource       production   9  0    CARNIVOREMEAT>
<resource       production  16  1    ORCCAMP>
<resource       desire       1 -3    DANGER>
<resource       desire       5  1    SELF>
<@@@ END @@@>
<604>
# dragon boss       Difficulty 11
<type           NORMAL DRAGONS>
<frequency      15>
<region         { ELDERWYRM 0 } >
<regionlimit    { ELDERWYRM 1 } >
<sex            OTHER>
<name           604>
<corpsename     dragon>
<alignment      NEUTRAL>
<notoriety      -125>
<hue            { 0 0 1 1105 1110 1 34 39 1 }  >
<objvar         int spellCastersLevel 8>
<script         dragonai>
<script         spellai>
<script         monster>
<sfxnotice      monster_dragon1>
<sfxidle        monster_dragon2>
<sfxhit         monster_dragon3>
<sfxwashit      monster_dragon4>
<sfxdie         monster_dragon5>
<strength       1d90+495>
<intelligence   1d90+435>
<dexterity      1d90+85>
<hp             1d400+700>
<mana           1d300+250>
<stamina        1d90+85>
<movetype       MT_FLYING>
<sk             skill_melee          1d25+975>
<sk             skill_magic_defense  1d10+990>
<sk             skill_battle_defense 1d400+550>
<sk	        skill_weapon_hand    1d25+900>
<naturalwc      6d6+5>
<naturalac      30>
<eq             { rich_backpack 3 filthyrich_backpack 1 } 0 0 1 SELFCONTAINED>
<eq             { rich_backpack 3 filthyrich_backpack 1 } 0 0 1 SELFCONTAINED>
<eq             { 101515 1 101520 1 101525 1 101530 1 101535 1 } 0 0 1 SELFCONTAINED>
<eq             { 101515 1 101520 1 101525 1 101530 1 101535 1 } 0 0 1 SELFCONTAINED>
<eq             { random_jewel 1 0 1 } 0 0 1 SELFCONTAINED>
<eq             { random_jewel 1 0 1 } 0 0 1 SELFCONTAINED>
<eq             { random_jewel 1 0 1 } 0 0 1 SELFCONTAINED>
<eq             { random_jewel 1 0 1 } 0 0 1 SELFCONTAINED>
<eq             { random_jewel 1 0 1 } 0 0 1 SELFCONTAINED>
<eq             { random_jewel 1 0 1 } 0 0 1 SELFCONTAINED>
<resource       food         80 3    MEAT>
<resource       shelter     576 1    CAVES>
<resource       shelter     288 1    DUNGEONS>
<resource       production   99 0    CARNIVOREMEAT>
<resource       production   8  0    DRAGON_BLOOD>
<resource       production   20 1    LEATHER>
<resource       desire       1 -3    DANGER>
<resource       desire       1 -3    HOUSES>
<resource       desire       1 -3    WATER>
<resource       desire       1 -3    MOUNTAINS>
<resource       desire       1  1    GOLD>
<friends 545>
<friends 578>
<friends 579>
<friends 580>
<@@@ END @@@>
<605>
# Hell Hound   Difficulty 6
<type           NORMAL TIMBER_WOLF>
<frequency      50>
<region         { HYTHLOTH 0 } >
<regionlimit    { HYTHLOTH 10 } >
<sex            OTHER>
<name           605>
<corpsename     "a hell hound">
<alignment      EVIL>
<notoriety      -125>
<hue            red_colors 1 >
<objvar         int petCanTame   90>
<objvar         int petAckSfx    animals_wolf1>
<objvar         int petRefuseSfx animals_wolf4>
<script         monster>
<script         dragonai>
<sfxnotice      animals_wolf1>
<sfxidle        animals_wolf2>
<sfxhit         animals_wolf3>
<sfxwashit      animals_wolf4>
<sfxdie         animals_wolf5>
<strength       1d25+95>
<intelligence   1d25+35>
<dexterity      1d25+80>
<hp             1d25+95>
<mana           1d25+70>
<stamina        1d25+90>
<sk             skill_melee          1d200+500>
<sk             skill_weapon_hand    1d200+600>
<sk             skill_magic_defense  1d175+575>
<sk             skill_battle_defense 1d125+625>
<naturalwc      4d5+2>
<naturalac      11>
<eq             SULFUROUS_ASH_REAGENT 0 0 1 SELFCONTAINED>
<eq             SULFUROUS_ASH_REAGENT 0 0 1 SELFCONTAINED>
<eq             SULFUROUS_ASH_REAGENT 0 0 1 SELFCONTAINED>
<resource       food        15  3    MEAT>
<resource       shelter    288  1    CAVES>
<resource       production   6  0    CARNIVOREMEAT>
<resource       desire       3  1    SELF>
<friends 605>
<friends 559>
<friends 582>
<@@@ END @@@>
<650>
# orc War Party   Difficulty 10
<type           NORMAL ORC_CAP>
<frequency      45>
<region         { HYTHLOTH 0 DESERT 0} >
<regionlimit    { HYTHLOTH 3 DESERT 1} >
<sex            OTHER>
<name           603>
<corpsename     Orcish>
<alignment      EVIL>
<notoriety      -125>
<objvar         int nonHuman 0>
<script         nonhuman>
<script         nonhumaneq>
<script         loot>
<sfxnotice      monster_orc1>
<sfxidle        monster_orc2>
<sfxhit         monster_orc3>
<sfxwashit      monster_orc4>
<sfxdie         monster_orc5>
<strength       5d35+95>
<intelligence   4d25+60>
<dexterity      4d25+90>
<hp             1d35+110>
<mana           1d25+85>
<stamina        1d35+100>
<sk             skill_melee           1d150+750>
<sk             skill_magic_defense   1d150+700>
<sk             skill_battle_defense  1d250+600>
<sk             skill_magic           2d125+700>
<sk             skill_weapon_slashing 1d250+600>
<naturalwc      2d8>
<naturalac      15>
<eq             { rich_backpack 1 filthyrich_backpack 2 } 0 0 1>
<eq             { flithyrich_backpack 0 } 0 0 1>
<eq             { random_jewel 1 0 1 } 0 0 1 SELFCONTAINED>
<eq           100522 0 0 -1 AT  1 -1 0 >
<eq           100538 0 0 -1 AT  2  2 0 >
<eq           100538 0 0 -1 AT  2 -2 0 >
<eq           100538 0 0 -1 AT -2  2 0 >
<eq           100528 0 0 -1 AT -3 -3 0 >
<eq           100602 0 0 -1 AT -1  1 0 >
<resource       food        15  3    MEAT>
<resource       shelter    576  1    CAVES>
<resource       shelter    576  1    DUNGEONS>
<resource       shelter     64  1    ORCCAMP>
<resource       production   9  0    CARNIVOREMEAT>
<resource       production  16  1    ORCCAMP>
<resource       desire       1 -3    DANGER>
<resource       desire       5  1    SELF>
<friends    522>
<friends    538>
<friends    528>
<friends    603>
<friends    602>
<@@@ END @@@>
<651>
# Hell Hound Pack   Difficulty 9
<type           NORMAL TIMBER_WOLF>
<frequency      50>
<region         { HYTHLOTH 0 } >
<regionlimit    { HYTHLOTH 2 } >
<sex            OTHER>
<name           605>
<corpsename     "hell hound">
<alignment      EVIL>
<notoriety      -125>
<hue            { red_colors 1 34 39 1 } >
<objvar         int petCanTame   90>
<objvar         int petAckSfx    animals_wolf1>
<objvar         int petRefuseSfx animals_wolf4>
<script         monster>
<script         dragonai>
<script         acidblood>
<sfxnotice      animals_wolf1>
<sfxidle        animals_wolf2>
<sfxhit         animals_wolf3>
<sfxwashit      animals_wolf4>
<sfxdie         animals_wolf5>
<strength       1d25+95>
<intelligence   1d25+35>
<dexterity      1d25+80>
<hp             1d25+95>
<mana           1d25+70>
<stamina        1d25+90>
<sk             skill_melee          1d200+500>
<sk             skill_weapon_hand    1d200+600>
<sk             skill_magic_defense  1d175+575>
<sk             skill_battle_defense 1d125+625>
<naturalwc      4d5+2>
<naturalac      11>
<eq             100605 0 0 -1 AT -1 1 0>
<eq             100605 0 0 -1 AT 2 -2 0>
<eq             100605 0 0 -1 AT -3 3 0>
<eq             100605 0 0 -1 AT -2 -2 0>
<eq             100605 0 0 -1 AT 1 -1 0>
<eq             100605 0 0 -1 AT 3 -3 0>
<resource       food        15  3    MEAT>
<resource       shelter    288  1    CAVES>
<resource       production   6  0    CARNIVOREMEAT>
<resource       desire       3  1    SELF>
<friends 605>
<friends 559>
<friends 582>
<@@@ END @@@>
<995>
# GM included template
<type         none 400>
<job          "Game Master">
<hue          38>
<strength     1d15+150>
<dexterity    1d15+150>
<intelligence 1d15+150>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    GOOD>
<attitude     1d41-21>
<notoriety    100d1>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           1d100+900>
<sk           skill_magic_defense   1d100+900>
<sk           skill_battle_defense  1d100+900>
<sk           skill_weapon_slashing 1d100+900>
<sk           skill_weapon_bashing  1d100+900>
<sk           skill_weapon_piercing 1d100+900>
<sk           skill_weapon_hand     1d100+900>
<sk           skill_detect_hidden   1d100+900>
<sk           skill_forensics       1d100+900>
<immunities   slashing>
<immunities   piercing>
<immunities   bashing>
<immunities   ranged>
<immunities   poison>
<immunities   magic>
<immunities   fire>
<immunities   lightning>
<immunities   ice>
<@@@ END @@@>
<996>
# GM Male
<type         normal 400>
<sex          MALE>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq						GM_include 0 0 1 NONE>
<@@@ END @@@>
<997>
# GM Female
<type         normal 401>
<sex          FEMALE>
<eq           female_hair all_hair_colors 1>
<eq           GM_include 0 0 1 NONE>
<@@@ END @@@>
<998>
# Generic Male Player Template for various info we may need
<sex          MALE>
<resource     production 8 0 HUMANS>
<@@@ END @@@>
<999>
# Generic Female Player Template for various info we may need
<sex          FEMALE>
<resource     production 8 0 HUMANS>
<@@@ END @@@>
<1000>
# Peasant
<type         NORMAL 401>
<frequency    100>
<region       { CITY 0  FARM 0 PEASANTSMALL 0 PEASANTMEDIUM 0 PEASANTLARGE 0 PEASANT 0 } >
<regionlimit  { CITY 1 FARM 1 PEASANTSMALL 2 PEASANTMEDIUM 4 PEASANTLARGE 6 PEASANT 1 } >
<job          peasant>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int hirelingWages 1>
<script       human>
<script       pet>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_LABORER>
<convfrag     BRITANNIA_ACCEPTITEM>
<convfrag     BRITANNIA_PERSONALSPACE>
<convfrag     BRITANNIA_NEEDRESPONSE>
<convfrag     BRITANNIA_REFUSEITEM>
<convfrag     BRITANNIA_SCAVENGER>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !1d10>
<strength     1d15+25>
<dexterity    1d15+20>
<intelligence 1d15+15>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           25d10+125>
<sk           skill_magic_defense   25d10+125>
<sk           skill_battle_defense  25d10+125>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<eq           female_hair all_hair_colors 1>
<eq           plain_shirt all_colors 1>
<eq           skirt all_colors 1>
<eq           poor_backpack 0 0 1>
<resource     food         5   1    FOOD>
<resource     food         5   1    EGGS>
<resource     food         5   1    FRUIT>
<resource     food         5   1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production   8   0    MEAT>
<resource     desire       1  -3    DANGER>
<resource     desire       3  -6    MEAT>
<resource     desire       1  -3    SPOOKINESS>
<resource     desire      10   2    GOLD>
<@@@ END @@@>
<1001>
# Noble
<type         NORMAL 401>
<frequency    100>
<region       { CITY 0 LBCASTLE 0 NOBLESMALL 0 NOBLEMEDIUM 0 NOBLELARGE 0 NOBLE 0 } >
<regionlimit  { CITY 1 LBCASTLE 3 NOBLESMALL 2 NOBLEMEDIUM 4 NOBLELARGE 8 NOBLE 1 } >
<job          noble>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_NOBLE>
<convfrag     BRITANNIA_ACCEPTITEM>
<convfrag     BRITANNIA_PERSONALSPACE>
<convfrag     BRITANNIA_NEEDRESPONSE>
<convfrag     BRITANNIA_REFUSEITEM>
<convfrag     BRITANNIA_SCAVENGER>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-16>
<notoriety    !20d4+20>
<strength     1d15+30>
<dexterity    1d15+40>
<intelligence 1d15+50>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+225>
<sk           skill_magic_defense  25d10+225>
<sk           skill_battle_defense 25d10+225>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<eq           female_hair all_hair_colors 1>
<eq           full_dress neutral_colors 1>
<eq           cloak all_colors 1>
<eq           sash_1 all_colors 1>
<eq           random_boots 0 0 1>
<eq           long_sword 0 0 1>
<eq           filthy_rich_backpack 0 0 1>
<resource     food         5   1    FOOD>
<resource     food         5   1    EGGS>
<resource     food         5   1    FRUIT>
<resource     food         5   1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production   8   0    MEAT>
<resource     desire       1  -3    DANGER>
<resource     desire       1  -3    SPOOKINESS>
<resource     desire       3  -6    MEAT>
<resource     desire       1   1    NOTORIETY>
<resource     desire      10   2    GOLD>
<@@@ END @@@>
<1002>
# Armorer
<type         SHOPKEEPER 401>
<frequency    100>
<region       ARMORER>
<regionlimit  { ARMORER 1 } >
<job          armourer>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_SHOPKEEPER>
<convfrag     BRITANNIA_MERCHANT_GREETING>
<convfrag     BRITANNIA_ARMOURER>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+85>
<dexterity    1d15+75>
<intelligence 1d15+60>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           25d10+525>
<sk           skill_magic_defense   25d10+525>
<sk           skill_battle_defense  25d10+525>
<sk           skill_weapon_slashing 25d10+425>
<sk           skill_weapon_bashing  25d10+425>
<sk           skill_weapon_piercing 25d10+425>
<sk           skill_weapon_hand     25d10+425>
<sk           skill_armslore        25d10+625>
<sk           skill_blacksmith      25d10+525>
<eq           female_hair all_hair_colors 1>
<eq           plain_shirt all_colors 1>
<eq           skirt all_colors 1>
<eq           apron brown_colors 1>
<eq           black_boots neutral_colors 1>
<eq           random_coin_purse 0 0 1>
<eq           { all_armor 15 leather_goods 5 metal_goods 5 plate_goods 1 chain_goods 1 ring_goods 1 } 0 0 1 NONE>
<eq           all_shields 0 0 1 NONE>
<eq           armorer_purchases 0 0 1 NONE>
<resource     food         5   1    FOOD>
<resource     food         5   1    EGGS>
<resource     food         5   1    FRUIT>
<resource     food         5   1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production   8   0    MEAT>
<resource     desire       1  -3    DANGER>
<resource     desire       1  -3    SPOOKINESS>
<resource     desire      10   2    GOLD>
<resource     desire      10   1    METAL>
<@@@ END @@@>
<1003>
# Baker
<type         SHOPKEEPER 401>
<frequency    100>
<region       BAKER>
<regionlimit  { BAKER 1 } >
<job          baker>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_BAKER>
<convfrag     BRITANNIA_SHOPKEEPER>
<convfrag     BRITANNIA_MERCHANT_GREETING>
<convfrag     BRITANNIA_ACCEPTITEM>
<convfrag     BRITANNIA_PERSONALSPACE>
<convfrag     BRITANNIA_NEEDRESPONSE>
<convfrag     BRITANNIA_REFUSEITEM>
<convfrag     BRITANNIA_SCAVENGER>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<strength     1d15+33>
<dexterity    1d15+32>
<intelligence 1d15+25>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+125>
<sk           skill_magic_defense  25d10+125>
<sk           skill_battle_defense 25d10+125>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_cooking        25d10+525>
<eq           female_hair all_hair_colors 1>
<eq           plain_shirt all_colors 1>
<eq           skirt all_colors 1>
<eq           plain_shoes neutral_colors 1>
<eq           apron white_colors 1>
<eq           random_coin_purse 0 0 1>
<eq             loaf_bread_1 0 0 1 SELLABLE>
<eq             loaf_bread_2 0 0 1 SELLABLE>
<eq             baked_pie 0 0 1 SELLABLE>
<eq             cake 0 0 1 SELLABLE>
<eq             muffin 0 0 1 SELLABLE>
<eq             flour_sack 0 0 1 SELLABLE>
<eq             french_bread 0 0 1 SELLABLE>
<eq             pan_cookies 0 0 1 SELLABLE>
<eq             pizza 0 0 1 SELLABLE>
<eq             honey_obj 0 0 1 SELLABLE>
<eq             dough 0 0 1 SELLABLE>
<eq             kindling 0 0 1 BUYABLE>
<eq             loaf_bread_1 0 0 1 BUYABLE>
<eq             loaf_bread_2 0 0 1 BUYABLE>
<eq             baked_pie 0 0 1 BUYABLE>
<eq             cake 0 0 1 BUYABLE>
<eq             muffin 0 0 1 BUYABLE>
<eq             flour_sack 0 0 1 BUYABLE>
<eq             french_bread 0 0 1 BUYABLE>
<eq             pan_cookies 0 0 1 BUYABLE>
<eq             pizza 0 0 1 BUYABLE>
<eq             honey_obj 0 0 1 BUYABLE>
<eq             fresh_eggs 0 0 1 BUYABLE>
<eq             milk_pitcher 0 0 1 BUYABLE>
<resource     food         5   1    FOOD>
<resource     food         5   1    EGGS>
<resource     food         5   1    FRUIT>
<resource     food         5   1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production   8   0    MEAT>
<resource     desire       1  -3    DANGER>
<resource     desire       1  -3    SPOOKINESS>
<resource     desire      10   2    GOLD>
<resource     desire      10   1    FLOUR>
<@@@ END @@@>
<1004>
# Bowyer
<type         SHOPKEEPER 401>
<frequency    100>
<region       BOWYER>
<regionlimit  { BOWYER 1 } >
<job          bowyer>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 4>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_SHOPKEEPER>
<convfrag     BRITANNIA_MERCHANT_GREETING>
<convfrag     BRITANNIA_BOWYER>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+65>
<dexterity    1d15+70>
<intelligence 1d15+60>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           25d10+425>
<sk           skill_magic_defense   25d10+425>
<sk           skill_battle_defense  25d10+425>
<sk           skill_weapon_slashing 25d10+225>
<sk           skill_weapon_bashing  25d10+225>
<sk           skill_weapon_piercing 25d10+225>
<sk           skill_weapon_hand     25d10+225>
<sk           skill_ranged_weapons  25d10+625>
<sk           skill_fletcher        25d10+625>
<resistances  ranged>
<eq           female_hair all_hair_colors 1>
<eq           plain_shirt all_colors 1>
<eq           skirt all_colors 1>
<eq           random_boots 0 0 1>
<eq           leather_gorget brown_colors 1>
<eq           random_coin_purse 0 0 1>
<eq             crossbow 0 0 1 SELLABLE>
<eq             big_crossbow 0 0 1 SELLABLE>
<eq             bolts 0 0 1 SELLABLE>
<eq             bow 0 0 1 SELLABLE>
<eq             arrows 0 0 1 SELLABLE>
<eq             loose_feathers 0 0 1 SELLABLE>
<eq             arrow_shafts 0 0 1 SELLABLE>
<eq             crossbow 0 0 1 BUYABLE>
<eq             crossbow_2 0 0 1 BUYABLE>
<eq             bolts 0 0 1 BUYABLE>
<eq             big_crossbow 0 0 1 BUYABLE>
<eq             big_crossbow_2 0 0 1 BUYABLE>
<eq             bow 0 0 1 BUYABLE>
<eq             bow_2 0 0 1 BUYABLE>
<eq             arrows 0 0 1 BUYABLE>
<eq             loose_feathers 0 0 1 BUYABLE>
<eq             arrow_shafts 0 0 1 BUYABLE>
<eq             lumber 0 0 1 BUYABLE>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  1    GOLD>
<resource     desire     10  1    WOOD>
<resource     desire     10  1    FEATHERS>
<@@@ END @@@>
<1005>
# Butcher
<type         SHOPKEEPER 401>
<frequency    100>
<region       BUTCHER>
<regionlimit  { BUTCHER 1 } >
<job          butcher>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_BUTCHER>
<convfrag     BRITANNIA_SHOPKEEPER>
<convfrag     BRITANNIA_MERCHANT_GREETING>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+75>
<dexterity    1d15+70>
<intelligence 1d15+60>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+525>
<sk           skill_magic_defense  25d10+525>
<sk           skill_battle_defense 25d10+525>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<eq           female_hair all_hair_colors 1>
<eq           plain_shirt all_colors 1>
<eq           skirt all_colors 1>
<eq           plain_shoes neutral_colors 1>
<eq           apron white_colors 1>
<eq           random_coin_purse 0 0 1>
<eq             bacon 0 0 1 SELLABLE>
<eq             ham 0 0 1 SELLABLE>
<eq             sausages 0 0 1 SELLABLE>
<eq             chicken_leg 0 0 1 SELLABLE>
<eq             raw_bird 0 0 1 SELLABLE>
<eq             mutton_leg 0 0 1 SELLABLE>
<eq             raw_ribs 0 0 1 SELLABLE>
<eq             butcher_knife 0 0 1 SELLABLE>
<eq             meat_cleaver 0 0 1 SELLABLE>
<eq             skinning_knife 0 0 1 SELLABLE>
<eq             bacon 0 0 1 BUYABLE>
<eq             ham 0 0 1 BUYABLE>
<eq             sausages 0 0 1 BUYABLE>
<eq             chicken_leg 0 0 1 BUYABLE>
<eq             raw_bird 0 0 1 BUYABLE>
<eq             mutton_leg 0 0 1 BUYABLE>
<eq             raw_ribs 0 0 1 BUYABLE>
<eq             butcher_knife 0 0 1 BUYABLE>
<eq             butcher_knife_2 0 0 1 BUYABLE>
<eq             meat_cleaver 0 0 1 BUYABLE>
<eq             meat_cleaver_2 0 0 1 BUYABLE>
<eq             skinning_knife 0 0 1 BUYABLE>
<eq             skinning_knife_2 0 0 1 BUYABLE>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<resource     desire     10  1    MEAT>
<@@@ END @@@>
<1006>
# Guard
<type         GUARD 401>
<frequency    100>
<region       { LBCASTLE 0 CITY 0 BANK 0 GUARDSMALL 0 GUARDMEDIUM 0 GUARDLARGE 0 GUARD 0 } >
<regionlimit  { LBCASTLE 2 CITY 4 BANK 2 GUARDSMALL 1 GUARDMEDIUM 2 GUARDLARGE 3 GUARD 2 } >
<job          guard>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<script       cityguard>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_GUARD>
<strength     9000>
<dexterity    9000>
<intelligence 9000>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    GOOD>
<attitude     1d41-21>
<notoriety    100d1>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           1d100+900>
<sk           skill_magic_defense   1d100+900>
<sk           skill_battle_defense  1d100+900>
<sk           skill_weapon_slashing 1d100+900>
<sk           skill_weapon_bashing  1d100+900>
<sk           skill_weapon_piercing 1d100+900>
<sk           skill_weapon_hand     1d100+900>
<sk           skill_detect_hidden   1d100+900>
<sk           skill_forensics       1d100+900>
<immunities   slashing>
<immunities   piercing>
<immunities   bashing>
<immunities   ranged>
<immunities   poison>
<immunities   magic>
<immunities   fire>
<immunities   lightning>
<immunities   ice>
<eq           female_hair all_hair_colors 1>
<eq           { fem_armor_a 1 fem_armor_b 1 fem_armor_c 1 } 0 0 1>
<eq           { fem_armor_skirt 1 fem_armor_shorts 1 } 0 0 1>
<eq           sash all_colors 1>
<eq           halberd 0 0 1>
<eq           random_coin_purse 0 0 1>
<resource     shelter      5   1    GUARDPOST>
<resource     production   8   0    MEAT>
<resource     production   1   1    GUARD>
<resource     production   1   1    HUMANS>
<resource     desire     -50  -1    NOTORIETY>
<resource     desire       5   1    GUARDPOST>
<@@@ END @@@>
<1007>
# Healer
<type         SHOPKEEPER 401>
<frequency    100>
<region       HEALER>
<regionlimit	{ HEALER 1 } >
<job          healer>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 5>
<script       human>
<script       healer>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_HEALER>
<convfrag     BRITANNIA_SHOPKEEPER>
<convfrag     BRITANNIA_MERCHANT_GREETING>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !127d1>
<strength     1d15+70>
<dexterity    1d15+80>
<intelligence 1d15+85>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           25d10+625>
<sk           skill_magic_defense   25d10+625>
<sk           skill_battle_defense  25d10+625>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_first_aid       25d10+525>
<sk           skill_anatomy         25d10+525>
<sk           skill_seance          25d10+525>
<sk           skill_forensics       25d10+325>
<resistances  slashing>
<resistances  piercing>
<resistances  bashing>
<resistances  ranged>
<resistances  poison>
<resistances  magic>
<resistances  fire>
<resistances  lightning>
<resistances  ice>
<eq           female_hair all_hair_colors 1>
<eq           robe yellow_colors 1>
<eq           sandals 0 0 1>
<eq           random_coin_purse 0 0 1>
<eq             bandage 0 0 1 SELLABLE>
<eq             heal_potion 0 0 1 SELLABLE>
<eq             ginseng_reagent 0 0 1 SELLABLE>
<eq             garlic_reagent 0 0 1 SELLABLE>
<eq             refresh_potion 0 0 1 SELLABLE>
<eq             folded_cloth_1 0 0 1 BUYABLE>
<eq             folded_cloth_2 0 0 1 BUYABLE>
<eq             folded_cloth_3 0 0 1 BUYABLE>
<eq             folded_cloth_4 0 0 1 BUYABLE>
<eq             spider_silk_reagent 0 0 1 BUYABLE>
<eq             bandage 0 0 1 BUYABLE>
<eq             bandage_2 0 0 1 BUYABLE>
<eq             heal_potion 0 0 1 BUYABLE>
<eq             ginseng_reagent 0 0 1 BUYABLE>
<eq             garlic_reagent 0 0 1 BUYABLE>
<eq             refresh_potion 0 0 1 BUYABLE>
<resource     food         5  1    FOOD>
<resource     food         5  1    EGGS>
<resource     food         5  1    FRUIT>
<resource     food         5  1    FISH>
<resource     shelter      1  1    HOME>
<resource     shelter     16  0    HOUSES>
<resource     production   8  0    MEAT>
<resource     desire       1 -3    DANGER>
<resource     desire      10  2    GOLD>
<resource     desire      10  2    GARLIC>
<resource     desire      10  2    GINSENG>
<resource     desire      10  2    CLOTH>
<@@@ END @@@>
<1008>
# Innkeeper
<type         SHOPKEEPER 401>
<frequency    100>
<region       INN>
<regionlimit  { INN 1 } >
<job          innkeeper>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 7>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_INNKEEPER>
<convfrag     BRITANNIA_SHOPKEEPER>
<convfrag     BRITANNIA_MERCHANT_GREETING>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+65>
<dexterity    1d15+65>
<intelligence 1d15+60>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+425>
<sk           skill_magic_defense  25d10+425>
<sk           skill_battle_defense 25d10+425>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<eq           female_hair all_hair_colors 1>
<eq           plain_shirt all_colors 1>
<eq           skirt all_colors 1>
<eq           random_shoes neutral_colors 1>
<eq           random_coin_purse 0 0 1>
<eq             ale_bottle 0 0 1 SELLABLE>
<eq             wine_bottle 0 0 1 SELLABLE>
<eq             liquor_bottle 0 0 1 SELLABLE>
<eq             cider_jug 0 0 1 SELLABLE>
<eq             milk_pitcher 0 0 1 SELLABLE>
<eq             ale_pitcher 0 0 1 SELLABLE>
<eq             cider_pitcher 0 0 1 SELLABLE>
<eq             liquor_pitcher 0 0 1 SELLABLE>
<eq             wine_pitcher 0 0 1 SELLABLE>
<eq             water_pitcher 0 0 1 SELLABLE>
<eq             loaf_bread_1 0 0 1 SELLABLE>
<eq             cheese 0 0 1 SELLABLE>
<eq             cooked_bird 0 0 1 SELLABLE>
<eq             cooked_mutton 0 0 1 SELLABLE>
<eq             cooked_chick_leg 0 0 1 SELLABLE>
<eq             cooked_ribs 0 0 1 SELLABLE>
<eq             bowl_carrots_1 0 0 1 SELLABLE>
<eq             bowl_corn_1 0 0 1 SELLABLE>
<eq             bowl_lettuce_1 0 0 1 SELLABLE>
<eq             bowl_peas_1 0 0 1 SELLABLE>
<eq             bowl_carrots_2 0 0 1 SELLABLE>
<eq             bowl_corn_2 0 0 1 SELLABLE>
<eq             bowl_lettuce_2 0 0 1 SELLABLE>
<eq             bowl_peas_2 0 0 1 SELLABLE>
<eq             bowl_potatoes  0 0 1 SELLABLE>
<eq             bowl_stew 0 0 1 SELLABLE>
<eq             bowl_tomato_soup 0 0 1 SELLABLE>
<eq             baked_pie 0 0 1 SELLABLE>
<eq             peach 0 0 1 SELLABLE>
<eq             pear 0 0 1 SELLABLE>
<eq             grapes 0 0 1 SELLABLE>
<eq             apple 0 0 1 SELLABLE>
<eq             banana 0 0 1 SELLABLE>
<eq             torch 0 0 1 SELLABLE>
<eq             candle 0 0 1 SELLABLE>
<eq             backpack 0 0 1 SELLABLE>
<eq             chessboard 0 0 1 SELLABLE>
<eq             checkerboard 0 0 1 SELLABLE>
<eq             backgammon 0 0 1 SELLABLE>
<eq             dice_cup 0 0 1 SELLABLE>
<eq             vendor_deed_template 0 0 1 SELLABLE>
<eq             vendor_deed_template 0 0 1 BUYABLE>
<eq             chessboard 0 0 1 BUYABLE>
<eq             checkerboard 0 0 1 BUYABLE>
<eq             dice_cup 0 0 1 BUYABLE>
<eq             backgammon 0 0 1 BUYABLE>
<eq             backgammon_2 0 0 1 BUYABLE>
<eq             ale_bottle 0 0 1 BUYABLE>
<eq             wine_bottle 0 0 1 BUYABLE>
<eq             liquor_bottle 0 0 1 BUYABLE>
<eq             cider_jug 0 0 1 BUYABLE>
<eq             ale_pitcher 0 0 1 BUYABLE>
<eq             ale_pitcher_2 0 0 1 BUYABLE>
<eq             cider_pitcher 0 0 1 BUYABLE>
<eq             cider_pitcher_2 0 0 1 BUYABLE>
<eq             glass_pitcher 0 0 1 BUYABLE>
<eq             glass_pitcher_2 0 0 1 BUYABLE>
<eq             glass_pitcher_3 0 0 1 BUYABLE>
<eq             liquor_pitcher 0 0 1 BUYABLE>
<eq             liquor_pitcher_2 0 0 1 BUYABLE>
<eq             milk_pitcher 0 0 1 BUYABLE>
<eq             milk_pitcher_2 0 0 1 BUYABLE>
<eq             wine_pitcher 0 0 1 BUYABLE>
<eq             wine_pitcher_2 0 0 1 BUYABLE>
<eq             water_pitcher 0 0 1 BUYABLE>
<eq             water_pitcher_2 0 0 1 BUYABLE>
<eq             water_pitcher_3 0 0 1 BUYABLE>
<eq             water_pitcher_4 0 0 1 BUYABLE>
<eq             loaf_bread_1 0 0 1 BUYABLE>
<eq             cheese 0 0 1 BUYABLE>
<eq             raw_bird 0 0 1 BUYABLE>
<eq             mutton_leg 0 0 1 BUYABLE>
<eq             raw_ribs 0 0 1 BUYABLE>
<eq             cooked_ribs 0 0 1 BUYABLE>
<eq             baked_pie 0 0 1 BUYABLE>
<eq             peach 0 0 1 BUYABLE>
<eq             pear 0 0 1 BUYABLE>
<eq             grapes 0 0 1 BUYABLE>
<eq             apple 0 0 1 BUYABLE>
<eq             banana 0 0 1 BUYABLE>
<eq             torch 0 0 1 BUYABLE>
<eq             candle 0 0 1 BUYABLE>
<resource     food         5  1    FOOD>
<resource     food         5  1    EGGS>
<resource     food         5  1    FRUIT>
<resource     food         5  1    FISH>
<resource     shelter      1  1    HOME>
<resource     shelter     16  0    HOUSES>
<resource     production   8  0    MEAT>
<resource     production   5  1    GUARDPOST>
<resource     desire       1 -3    DANGER>
<resource     desire       1 -3    SPOOKINESS>
<resource     desire      10  2    GOLD>
<@@@ END @@@>
<1009>
# Jailor
<type         NORMAL 401>
<frequency    100>
<region       { PRISON 0 JAILORSMALL 0 JAILORMEDIUM 0 JAILORLARGE 0 JAILOR 0 JAIL 0 } >
<regionlimit  { PRISON 1 JAILORSMALL 2 JAILORMEDIUM 4 JAILORLARGE 6 JAILOR 1 JAIL 2 } >
<job          jailor>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_JAILOR>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+95>
<dexterity    1d15+95>
<intelligence 1d15+70>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+725>
<sk           skill_magic_defense  25d10+725>
<sk           skill_battle_defense 25d10+725>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<eq           female_hair all_hair_colors 1>
<eq           chain_chest 0 0 1>
<eq           chain_legs 0 0 1>
<eq           bronze_shield 0 0 1>
<eq           black_boots neutral_colors 1>
<eq           sword_2 0 0 1>
<eq           random_coin_purse 0 0 1>
<resource     food         5  1    FOOD>
<resource     food         5  1    EGGS>
<resource     food         5  1    FRUIT>
<resource     food         5  1    FISH>
<resource     shelter      1  1    HOME>
<resource     shelter     16  0    HOUSES>
<resource     production   8  0    MEAT>
<resource     desire       1 -3    DANGER>
<resource     desire      10  2    GOLD>
<@@@ END @@@>
<1010>
# Jeweler
<type         SHOPKEEPER 401>
<frequency    100>
<region       JEWELER>
<regionlimit  { JEWELER 1 } >
<job          jeweler>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 7>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_JEWELER>
<convfrag     BRITANNIA_SHOPKEEPER>
<convfrag     BRITANNIA_MERCHANT_GREETING>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+35>
<dexterity    1d15+50>
<intelligence 1d15+40>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+225>
<sk           skill_magic_defense  25d10+225>
<sk           skill_battle_defense 25d10+225>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_appraise       25d10+525>
<eq           female_hair all_hair_colors 1>
<eq           fancy_shirt all_colors 1>
<eq           skirt all_colors 1>
<eq           random_shoes neutral_shoes 1>
<eq           rich_backpack 0 0 1>
<eq             ring 0 0 1 SELLABLE>
<eq             necklace_1 0 0 1 SELLABLE>
<eq             necklace_2 0 0 1 SELLABLE>
<eq             necklace_3 0 0 1 SELLABLE>
<eq             beads 0 0 1 SELLABLE>
<eq             bracelet 0 0 1 SELLABLE>
<eq             earrings 0 0 1 SELLABLE>
<eq             crystal_of_com_t1 0 0 1 SELLABLE>
<eq             crystal_of_com_t2 0 0 1 SELLABLE>
<eq             crystal_of_com_t3 0 0 1 SELLABLE>
<eq             star_sapphire 0 0 1 SELLABLE>
<eq             emerald 0 0 1 SELLABLE>
<eq             sapphire 0 0 1 SELLABLE>
<eq             ruby 0 0 1 SELLABLE>
<eq             citrine 0 0 1 SELLABLE>
<eq             amethyst 0 0 1 SELLABLE>
<eq             tourmaline 0 0 1 SELLABLE>
<eq             amber 0 0 1 SELLABLE>
<eq             diamond 0 0 1 SELLABLE>
<eq             copper_ingot 0 0 1 BUYABLE>
<eq             copper_ingot_2 0 0 1 BUYABLE>
<eq             copper_wire 0 0 1 BUYABLE>
<eq             gold_ingot 0 0 1 BUYABLE>
<eq             gold_ingot_2 0 0 1 BUYABLE>
<eq             gold_wire 0 0 1 BUYABLE>
<eq             iron_ingot 0 0 1 BUYABLE>
<eq             iron_ingot_2 0 0 1 BUYABLE>
<eq             iron_wire 0 0 1 BUYABLE>
<eq             silver_ingot 0 0 1 BUYABLE>
<eq             silver_ingot_2 0 0 1 BUYABLE>
<eq             silver_wire 0 0 1 BUYABLE>
<eq             forged_metal 0 0 1 BUYABLE>
<eq             bracelet 0 0 1 BUYABLE>
<eq             ring 0 0 1 BUYABLE>
<eq             beads 0 0 1 BUYABLE>
<eq             earrings 0 0 1 BUYABLE>
<eq             necklace_1 0 0 1 BUYABLE>
<eq             necklace_2 0 0 1 BUYABLE>
<eq             necklace_3 0 0 1 BUYABLE>
<eq             gem1 0 0 1 BUYABLE>
<eq             gem2 0 0 1 BUYABLE>
<eq             gem3 0 0 1 BUYABLE>
<eq             gem4 0 0 1 BUYABLE>
<eq             gem5 0 0 1 BUYABLE>
<eq             gem6 0 0 1 BUYABLE>
<eq             gem7 0 0 1 BUYABLE>
<eq             gem8 0 0 1 BUYABLE>
<eq             gem9 0 0 1 BUYABLE>
<eq             gem10 0 0 1 BUYABLE>
<eq             gem11 0 0 1 BUYABLE>
<eq             gem12 0 0 1 BUYABLE>
<eq             gem13 0 0 1 BUYABLE>
<eq             gem14 0 0 1 BUYABLE>
<eq             gem15 0 0 1 BUYABLE>
<eq             gem16 0 0 1 BUYABLE>
<eq             gem17 0 0 1 BUYABLE>
<eq             gem18 0 0 1 BUYABLE>
<eq             gem19 0 0 1 BUYABLE>
<eq             gem20 0 0 1 BUYABLE>
<eq             gem21 0 0 1 BUYABLE>
<eq             gem22 0 0 1 BUYABLE>
<eq             gem23 0 0 1 BUYABLE>
<eq             gem24 0 0 1 BUYABLE>
<eq             gem25 0 0 1 BUYABLE>
<eq             gem26 0 0 1 BUYABLE>
<eq             gem27 0 0 1 BUYABLE>
<eq             gem28 0 0 1 BUYABLE>
<eq             gem29 0 0 1 BUYABLE>
<eq             gem30 0 0 1 BUYABLE>
<eq             gem31 0 0 1 BUYABLE>
<eq             gem32 0 0 1 BUYABLE>
<eq             gem33 0 0 1 BUYABLE>
<eq             gem34 0 0 1 BUYABLE>
<eq             crystal_of_com_t1 0 0 1 BUYABLE>
<eq             crystal_of_com_t2 0 0 1 BUYABLE>
<eq             crystal_of_com_t3 0 0 1 BUYABLE>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  1    GOLD>
<resource     desire     10  1    JEWELS>
<@@@ END @@@>
<1011>
# Tanner
<type         SHOPKEEPER 401>
<frequency    100>
<region       TANNER>
<regionlimit  { TANNER 1 } >
<job          tanner>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_TANNER>
<convfrag     BRITANNIA_SHOPKEEPER>
<convfrag     BRITANNIA_MERCHANT_GREETING>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+50>
<dexterity    1d15+60>
<intelligence 1d15+40>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+325>
<sk           skill_magic_defense  25d10+325>
<sk           skill_battle_defense 25d10+325>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<eq           female_hair all_hair_colors 1>
<eq           plain_shirt brown_colors 1>
<eq           skirt brown_colors 1>
<eq           random_boots 0 0 1>
<eq           apron brown_colors 1>
<eq           random_coin_purse 0 0 1>
<eq             leather_gorget 0 0 1 SELLABLE>
<eq             leather_cap 0 0 1 SELLABLE>
<eq             leather_arms 0 0 1 SELLABLE>
<eq             leather_chest 0 0 1 SELLABLE>
<eq             leather_legs 0 0 1 SELLABLE>
<eq             leather_gloves 0 0 1 SELLABLE>
<eq             studded_gorget 0 0 1 SELLABLE>
<eq             studded_arms 0 0 1 SELLABLE>
<eq             studded_chest 0 0 1 SELLABLE>
<eq             studded_legs 0 0 1 SELLABLE>
<eq             studded_gloves 0 0 1 SELLABLE>
<eq             fem_armor_a 0 0 1 SELLABLE>
<eq             fem_armor_b 0 0 1 SELLABLE>
<eq             fem_armor_c 0 0 1 SELLABLE>
<eq             fem_armor_shorts 0 0 1 SELLABLE>
<eq             fem_armor_skirt 0 0 1 SELLABLE>
<eq             fem_armor_top_a 0 0 1 SELLABLE>
<eq             fem_armor_top_a_2 0 0 1 SELLABLE>
<eq             fem_armor_top_b 0 0 1 SELLABLE>
<eq             fem_armor_top_b_2 0 0 1 SELLABLE>
<eq             leather_cap 0 0 1 SELLABLE>
<eq             bag 0 0 1 SELLABLE>
<eq             belt_pouch 0 0 1 SELLABLE>
<eq             backpack 0 0 1 SELLABLE>
<eq             cut_hides_4 0 0 1 SELLABLE>
<eq             skinning_knife 0 0 1 SELLABLE>
<eq             skinning_knife 0 0 1 BUYABLE>
<eq             skinning_knife_2 0 0 1 BUYABLE>
<eq             leather_gorget 0 0 1 BUYABLE>
<eq             leather_cap 0 0 1 BUYABLE>
<eq             leather_arms 0 0 1 BUYABLE>
<eq             leather_arms_2 0 0 1 BUYABLE>
<eq             leather_chest 0 0 1 BUYABLE>
<eq             leather_chest_2 0 0 1 BUYABLE>
<eq             leather_legs 0 0 1 BUYABLE>
<eq             leather_legs_2 0 0 1 BUYABLE>
<eq             leather_gloves 0 0 1 BUYABLE>
<eq             leather_gloves_2 0 0 1 BUYABLE>
<eq             studded_gorget 0 0 1 BUYABLE>
<eq             studded_arms 0 0 1 BUYABLE>
<eq             studded_arms_2 0 0 1 BUYABLE>
<eq             studded_chest 0 0 1 BUYABLE>
<eq             studded_chest_2 0 0 1 BUYABLE>
<eq             studded_legs 0 0 1 BUYABLE>
<eq             studded_legs_2 0 0 1 BUYABLE>
<eq             studded_gloves 0 0 1 BUYABLE>
<eq             studded_gloves_2 0 0 1 BUYABLE>
<eq             fem_armor_a 0 0 1 BUYABLE>
<eq             fem_armor_a_2 0 0 1 BUYABLE>
<eq             fem_armor_b 0 0 1 BUYABLE>
<eq             fem_armor_b_2 0 0 1 BUYABLE>
<eq             fem_armor_c 0 0 1 BUYABLE>
<eq             fem_armor_c_2 0 0 1 BUYABLE>
<eq             fem_armor_shorts 0 0 1 BUYABLE>
<eq             fem_armor_shorts_2 0 0 1 BUYABLE>
<eq             fem_armor_skirt 0 0 1 BUYABLE>
<eq             fem_armor_skirt_2 0 0 1 BUYABLE>
<eq             fem_armor_top_a 0 0 1 BUYABLE>
<eq             fem_armor_top_a_2 0 0 1 BUYABLE>
<eq             fem_armor_top_b 0 0 1 BUYABLE>
<eq             fem_armor_top_b_2 0 0 1 BUYABLE>
<eq             cut_hides 0 0 1 BUYABLE>
<eq             cut_hides_2 0 0 1 BUYABLE>
<eq             cut_hides_3 0 0 1 BUYABLE>
<eq             cut_hides_4 0 0 1 BUYABLE>
<eq             pile_hides 0 0 1 BUYABLE>
<eq             pile_hides_2 0 0 1 BUYABLE>
<eq             llama_hides 0 0 1 BUYABLE>
<eq             llama_hides_2 0 0 1 BUYABLE>
<eq             llama_hides_3 0 0 1 BUYABLE>
<eq             llama_hides_4 0 0 1 BUYABLE>
<eq             llama_hides_5 0 0 1 BUYABLE>
<eq             llama_hides_6 0 0 1 BUYABLE>
<eq             llama_hides_7 0 0 1 BUYABLE>
<eq             llama_hides_8 0 0 1 BUYABLE>
<eq             llama_hides_9 0 0 1 BUYABLE>
<eq             leather_cap 0 0 1 BUYABLE>
<eq             bag 0 0 1 BUYABLE>
<eq             belt_pouch 0 0 1 BUYABLE>
<eq             belt_pouch_2 0 0 1 BUYABLE>
<eq             backpack 0 0 1 BUYABLE>
<eq             backpack_2 0 0 1 BUYABLE>
<resource     food        5  1    FOOD>
<eq             belt_pouch 0 0 1 BUYABLE>
<eq             backpack 0 0 1 BUYABLE>
<eq             backpack2 0 0 1 BUYABLE>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  1    GOLD>
<resource     desire     10  1    LEATHER>
<resource     desire     10  1    HIDE>
<@@@ END @@@>
<1012>
# Mage 
<type         SHOPKEEPER 401>
<frequency    100>
<region       { MAGIC 0 MAGE 0 } >
<regionlimit  { MAGIC 1 MAGE 1 } >
<job          mage>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 1>
<objvar       int spellCastersLevel 2d3+1>
<script       human>
<script	      spellai>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_MAGE>
<convfrag     BRITANNIA_SHOPKEEPER>
<convfrag     BRITANNIA_MERCHANT_GREETING>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+60>
<dexterity    1d15+70>
<intelligence 1d15+85>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           25d10+325>
<sk           skill_magic_defense   25d10+525>
<sk           skill_battle_defense  25d10+425>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_magic           1d150+850>
<sk           skill_inscribe        1d150+500>
<resistances  magic>
<eq           female_hair all_hair_colors 1>
<eq           robe blue_colors 1>
<eq           random_shoes neutral_colors 1>
<eq           random_coin_purse 0 0 1>
<eq           random_upper_scroll 0 0 1 SELFCONTAINED>
<eq           random_upper_scroll 0 0 1 SELFCONTAINED>
<eq           { basic_mage 18 second_circle 13 third_circle 8 fourth_circle 3 } 0 0 1 NONE>
<resource     food         5  1    FOOD>
<resource     food         5  1    EGGS>
<resource     food         5  1    FRUIT>
<resource     food         5  1    FISH>
<resource     shelter      1  1    HOME>
<resource     shelter     16  0    HOUSES>
<resource     production   8  0    MEAT>
<resource     desire       1 -3    DANGER>
<resource     desire       1 -3    SPOOKINESS>
<resource     desire      10  1    GOLD>
<resource     desire       1  1    MAGIC>
<resource     desire      10  2    MANDRAKE>
<resource     desire      10  2    SPIDER_SILK>
<resource     desire      10  2    SULPHEROUS ASH>
<resource     desire      10  2    BLACK_PEARL>
<resource     desire      10  2    BLOOD_MOSS>
<resource     desire      10  2    GARLIC>
<resource     desire      10  2    GINSENG>
<resource     desire      10  2    NIGHTSHADE>
<@@@ END @@@>
<1013>
# Pirate 
<type         NORMAL 401>
<frequency    100>
<region       { DOCKS 0 CITY_BUCDEN 0 PIRATESMALL 0 PIRATEMEDIUM 0 PIRATELARGE 0 PIRATE 0 } >
<regionlimit  { DOCKS 2 CITY_BUCDEN 20 PIRATESMALL 2 PIRATEMEDIUM 4 PIRATELARGE 6 PIRATE 1 } >
<job          pirate>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int hirelingWages 7>
<script       human>
<script       pet>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_PIRATE>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    2d30-77>
<strength     1d15+85>
<dexterity    1d15+85>
<intelligence 1d15+70>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           25d10+625>
<sk           skill_magic_defense   25d10+625>
<sk           skill_battle_defense  25d10+625>
<sk           skill_weapon_slashing 25d10+525>
<sk           skill_weapon_bashing  25d10+225>
<sk           skill_weapon_piercing 25d10+225>
<sk           skill_weapon_hand     25d10+425>
<eq           female_hair all_hair_colors 1>
<eq           plain_shirt all_colors 1>
<eq           plain_pants all_colors 1>
<eq           cutlass 0 0 1>
<eq           { bandana 1 skull_cap 1 } red_colors 1>
<eq           thigh_boots neutral_colors 1>
<eq           random_coin_purse 0 0 1>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  1    SHIPS>
<resource     desire     10  1    GOLD>
<resource     desire     10  1    JEWELS>
<resource     desire      3  1    SELF>
<@@@ END @@@>
<1014>
# Provisioner 
<type         SHOPKEEPER 401>
<frequency    100>
<region       PROVISIONER>
<regionlimit  { PROVISIONER 1 } >
<job          provisioner>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 7>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_PROVISIONER>
<convfrag     BRITANNIA_SHOPKEEPER>
<convfrag     BRITANNIA_MERCHANT_GREETING>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+65>
<dexterity    1d15+60>
<intelligence 1d15+65>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+425>
<sk           skill_magic_defense  25d10+425>
<sk           skill_battle_defense 25d10+425>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<eq           female_hair all_hair_colors 1>
<eq           plain_shirt all_colors 1>
<eq           skirt all_colors 1>
<eq           plain_shoes neutral_colors 1>
<eq           random_coin_purse 0 0 1>
<eq             arrows 0 0 1 SELLABLE>
<eq             bolts 0 0 1 SELLABLE>
<eq             backpack 0 0 1 SELLABLE>
<eq             belt_pouch 0 0 1 SELLABLE>
<eq             bag 0 0 1 SELLABLE>
<eq             candle 0 0 1 SELLABLE>
<eq             torch 0 0 1 SELLABLE>
<eq             lantern 0 0 1 SELLABLE>
<eq             oil_flask 0 0 1 SELLABLE>
<eq             lockpick 0 0 1 SELLABLE>
<eq             floppy_hat all_colors 1 SELLABLE>
<eq             bumpkin_straw_hat all_colors 1 SELLABLE>
<eq             darby_hat all_colors 1 SELLABLE>
<eq             pointy_hat all_colors 1 SELLABLE>
<eq             banded_straw_hat all_colors 1 SELLABLE>
<eq             mage_like_hat all_colors 1 SELLABLE>
<eq             leather_cap all_colors 1 SELLABLE>
<eq             turban all_colors 1 SELLABLE>
<eq             straw_boater all_colors 1 SELLABLE>
<eq             bandana all_colors 1 SELLABLE>
<eq             skull_cap all_colors 1 SELLABLE>
<eq             loaf_bread_1 0 0 1 SELLABLE>
<eq             cooked_mutton 0 0 1 SELLABLE>
<eq             cooked_chick_leg 0 0 1 SELLABLE>
<eq             cooked_bird 0 0 1 SELLABLE>
<eq             ale_bottle 0 0 1 SELLABLE>
<eq             wine_bottle 0 0 1 SELLABLE>
<eq             liquor_bottle 0 0 1 SELLABLE>
<eq             cider_jug 0 0 1 SELLABLE>
<eq             pear 0 0 1 SELLABLE>
<eq             apple 0 0 1 SELLABLE>
<eq             garlic_reagent 0 0 1 SELLABLE>
<eq             ginseng_reagent 0 0 1 SELLABLE>
<eq             empty_vial 0 0 1 SELLABLE>
<eq             sm_blank_book 0 0 1 SELLABLE>
<eq             lg_blank_book 0 0 1 SELLABLE>
<eq             { sm_pub_book 1 lg_pub_book 1 } 0 0 1 SELLABLE>
<eq             wooden_box_1 0 0 1 SELLABLE>
<eq             copper_key 0 0 1 SELLABLE>
<eq             bedroll 0 0 1 SELLABLE>
<eq             kindling 0 0 1 SELLABLE>
<eq             ship_deed_template_0 0 0 1 SELLABLE>
<eq             house_deed_template_0 0 0 1 SELLABLE>
<eq             house_deed_smithy 0 0 1 SELLABLE>
<eq             house_deed_bakery 0 0 1 SELLABLE>
<eq             house_deed_tailor 0 0 1 SELLABLE>
<eq             house_deed_weap_train 0 0 1 SELLABLE>
<eq             house_deed_thief_train 0 0 1 SELLABLE>
<eq             guildstone_deed 0 0 1 SELLABLE>
<eq             hair_dye 0 0 1 SELLABLE>
<eq             chessboard 0 0 1 SELLABLE>
<eq             checkerboard 0 0 1 SELLABLE>
<eq             backgammon 0 0 1 SELLABLE>
<eq             dice_cup 0 0 1 SELLABLE>
<eq             chessboard 0 0 1 BUYABLE>
<eq             checkerboard 0 0 1 BUYABLE>
<eq             dice_cup 0 0 1 BUYABLE>
<eq             backgammon 0 0 1 BUYABLE>
<eq             backgammon_2 0 0 1 BUYABLE>
<eq             hair_dye 0 0 1 BUYABLE>
<eq             kindling 0 0 1 BUYABLE>
<eq             empty_vial 0 0 1 BUYABLE>
<eq             wooden_box_1 0 0 1 BUYABLE>
<eq             wooden_box_2 0 0 1 BUYABLE>
<eq             copper_key 0 0 1 BUYABLE>
<eq             ship_deed_template_0 0 0 1 BUYABLE>
<eq             house_deed_template_0 0 0 1 BUYABLE>
<eq             house_deed_smithy 0 0 1 BUYABLE>
<eq             house_deed_bakery 0 0 1 BUYABLE>
<eq             house_deed_tailor 0 0 1 BUYABLE>
<eq             house_deed_weap_train 0 0 1 BUYABLE>
<eq             house_deed_thief_train 0 0 1 BUYABLE>
<eq             arrows 0 0 1 BUYABLE>
<eq             bolts 0 0 1 BUYABLE>
<eq             belt_pouch 0 0 1 BUYABLE>
<eq             belt_pouch_2 0 0 1 BUYABLE>
<eq             backpack 0 0 1 BUYABLE>
<eq             backpack_2 0 0 1 BUYABLE>
<eq             bag 0 0 1 BUYABLE>
<eq             candle 0 0 1 BUYABLE>
<eq             torch 0 0 1 BUYABLE>
<eq             lantern 0 0 1 BUYABLE>
<eq             oil_flask 0 0 1 BUYABLE>
<eq             lockpick 0 0 1 BUYABLE>
<eq             lockpick_2 0 0 1 BUYABLE>
<eq             lockpicks 0 0 1 BUYABLE>
<eq             lockpicks_2 0 0 1 BUYABLE>
<eq             floppy_hat all_colors 1 BUYABLE>
<eq             bumpkin_straw_hat all_colors 1 BUYABLE>
<eq             darby_hat all_colors 1 BUYABLE>
<eq             pointy_hat all_colors 1 BUYABLE>
<eq             banded_straw_hat all_colors 1 BUYABLE>
<eq             mage_like_hat all_colors 1 BUYABLE>
<eq             leather_cap all_colors 1 BUYABLE>
<eq             turban all_colors 1 BUYABLE>
<eq             straw_boater all_colors 1 BUYABLE>
<eq             bandana all_colors 1 BUYABLE>
<eq             skull_cap all_colors 1 BUYABLE>
<eq             star_sapphire 0 0 1 BUYABLE>
<eq             emerald 0 0 1 BUYABLE>
<eq             sapphire 0 0 1 BUYABLE>
<eq             ruby 0 0 1 BUYABLE>
<eq             citrine 0 0 1 BUYABLE>
<eq             amethyst 0 0 1 BUYABLE>
<eq             tourmaline 0 0 1 BUYABLE>
<eq             amber 0 0 1 BUYABLE>
<eq             diamond 0 0 1 BUYABLE>
<eq             gold_ingot 0 0 1 BUYABLE>
<eq             silver_ingot 0 0 1 BUYABLE>
<eq             plate_chest 0 0 1 BUYABLE>
<eq             plate_chest_2 0 0 1 BUYABLE>
<eq             plate_legs 0 0 1 BUYABLE>
<eq             plate_legs_2 0 0 1 BUYABLE>
<eq             plate_arms 0 0 1 BUYABLE>
<eq             plate_arms_2 0 0 1 BUYABLE>
<eq             plate_gloves 0 0 1 BUYABLE>
<eq             plate_gloves_2 0 0 1 BUYABLE>
<eq             plate_helm 0 0 1 BUYABLE>
<eq             plate_helm_2 0 0 1 BUYABLE>
<eq             open_helm 0 0 1 BUYABLE>
<eq             open_helm_2 0 0 1 BUYABLE>
<eq             nose_helm 0 0 1 BUYABLE>
<eq             nose_helm_2 0 0 1 BUYABLE>
<eq             bucket_helm 0 0 1 BUYABLE>
<eq             bascinet 0 0 1 BUYABLE>
<eq             bascinet_2 0 0 1 BUYABLE>
<eq             chain_coif 0 0 1 BUYABLE>
<eq             chain_coif_2 0 0 1 BUYABLE>
<eq             chain_chest 0 0 1 BUYABLE>
<eq             chain_chest_2 0 0 1 BUYABLE>
<eq             chain_legs 0 0 1 BUYABLE>
<eq             chain_legs_2 0 0 1 BUYABLE>
<eq             ring_chest 0 0 1 BUYABLE>
<eq             ring_chest_2 0 0 1 BUYABLE>
<eq             ring_legs 0 0 1 BUYABLE>
<eq             ring_legs_2 0 0 1 BUYABLE>
<eq             ring_arms 0 0 1 BUYABLE>
<eq             ring_arms_2 0 0 1 BUYABLE>
<eq             ring_gloves 0 0 1 BUYABLE>
<eq             ring_gloves_2 0 0 1 BUYABLE>
<eq             plate_gorget 0 0 1 BUYABLE>
<eq             leather_gorget 0 0 1 BUYABLE>
<eq             studded_gorget 0 0 1 BUYABLE>
<eq             leather_cap 0 0 1 BUYABLE>
<eq             leather_arms 0 0 1 BUYABLE>
<eq             leather_arms_2 0 0 1 BUYABLE>
<eq             leather_chest 0 0 1 BUYABLE>
<eq             leather_chest_2 0 0 1 BUYABLE>
<eq             leather_legs 0 0 1 BUYABLE>
<eq             leather_legs_2 0 0 1 BUYABLE>
<eq             leather_gloves 0 0 1 BUYABLE>
<eq             leather_gloves_2 0 0 1 BUYABLE>
<eq             heater_shield_1 0 0 1 BUYABLE>
<eq             heater_shield_2 0 0 1 BUYABLE>
<eq             heater_shield_3 0 0 1 BUYABLE>
<eq             heater_shield_4 0 0 1 BUYABLE>
<eq             kite_shield_1 0 0 1 BUYABLE>
<eq             kite_shield_2 0 0 1 BUYABLE>
<eq             metal_shield 0 0 1 BUYABLE>
<eq             wooden_shield 0 0 1 BUYABLE>
<eq             buckler_shield 0 0 1 BUYABLE>
<eq             bronze_shield 0 0 1 BUYABLE>
<eq             studded_arms 0 0 1 BUYABLE>
<eq             studded_arms_2 0 0 1 BUYABLE>
<eq             studded_chest 0 0 1 BUYABLE>
<eq             studded_chest_2 0 0 1 BUYABLE>
<eq             studded_legs 0 0 1 BUYABLE>
<eq             studded_legs_2 0 0 1 BUYABLE>
<eq             studded_gloves 0 0 1 BUYABLE>
<eq             studded_gloves_2 0 0 1 BUYABLE>
<eq             fem_armor_a 0 0 1 BUYABLE>
<eq             fem_armor_a_2 0 0 1 BUYABLE>
<eq             fem_armor_b 0 0 1 BUYABLE>
<eq             fem_armor_b_2 0 0 1 BUYABLE>
<eq             fem_armor_c 0 0 1 BUYABLE>
<eq             fem_armor_c_2 0 0 1 BUYABLE>
<eq             fem_armor_shorts 0 0 1 BUYABLE>
<eq             fem_armor_shorts_2 0 0 1 BUYABLE>
<eq             fem_armor_skirt 0 0 1 BUYABLE>
<eq             fem_armor_skirt_2 0 0 1 BUYABLE>
<eq             fem_armor_top_a 0 0 1 BUYABLE>
<eq             fem_armor_top_a_2 0 0 1 BUYABLE>
<eq             fem_armor_top_b 0 0 1 BUYABLE>
<eq             fem_armor_top_b_2 0 0 1 BUYABLE>
<eq             sm_blank_book 0 0 1 BUYABLE>
<eq             lg_blank_book 0 0 1 BUYABLE>
<eq             sm_pub_book 0 0 1 BUYABLE>
<eq             lg_pub_book 0 0 1 BUYABLE>
<eq             clock 0 0 1 BUYABLE>
<eq             clock_2 0 0 1 BUYABLE>
<eq             clock_parts 0 0 1 BUYABLE>
<eq             clock_parts_2 0 0 1 BUYABLE>
<eq             axel_and_gears 0 0 1 BUYABLE>
<eq             axel_and_gears_2 0 0 1 BUYABLE>
<eq             gears 0 0 1 BUYABLE>
<eq             gears_2 0 0 1 BUYABLE>
<eq             hinge 0 0 1 BUYABLE>
<eq             hinge_2 0 0 1 BUYABLE>
<eq             sextant 0 0 1 BUYABLE>
<eq             sextant_2 0 0 1 BUYABLE>
<eq             sextant_parts 0 0 1 BUYABLE>
<eq             sextant_parts_2 0 0 1 BUYABLE>
<eq             sticks 0 0 1 BUYABLE>
<eq             sticks_2 0 0 1 BUYABLE>
<eq             springs 0 0 1 BUYABLE>
<eq             springs_2 0 0 1 BUYABLE>
<eq             key_ring 0 0 1 BUYABLE>
<eq             iron_ingot 0 0 1 BUYABLE>
<eq             log 0 0 1  BUYABLE>
<eq             lumber 0 0 1 BUYABLE>
<eq             sewing_kit 0 0 1 BUYABLE>
<eq             draw_knife 0 0 1 BUYABLE>
<eq             froe 0 0 1 BUYABLE>
<eq             inshave 0 0 1 BUYABLE>
<eq             scorp 0 0 1 BUYABLE>
<eq             butcher_knife 0 0 1 BUYABLE>
<eq             butcher_knife_2 0 0 1 BUYABLE>
<eq             scissors 0 0 1 BUYABLE>
<eq             scissors_2 0 0 1 BUYABLE>
<eq             tongs 0 0 1 BUYABLE>
<eq             tongs_2 0 0 1 BUYABLE>
<eq             dovetail 0 0 1 BUYABLE>
<eq             dovetail_2 0 0 1 BUYABLE>
<eq             saw 0 0 1 BUYABLE>
<eq             saw_2 0 0 1 BUYABLE>
<eq             hammer 0 0 1 BUYABLE>
<eq             hammer_2 0 0 1 BUYABLE>
<eq             smith_hammer 0 0 1 BUYABLE>
<eq             smith_hammer_2 0 0 1 BUYABLE>
<eq             sledge_hammer 0 0 1 BUYABLE>
<eq             sledge_hammer_2 0 0 1 BUYABLE>
<eq             shovel 0 0 1 BUYABLE>
<eq             shovel_2 0 0 1 BUYABLE>
<eq             moulding_plane 0 0 1 BUYABLE>
<eq             moulding_plane_2 0 0 1 BUYABLE>
<eq             smoothing_plane 0 0 1 BUYABLE>
<eq             smoothing_plane_2 0 0 1 BUYABLE>
<eq             jointing_plane 0 0 1 BUYABLE>
<eq             jointing_plane_2 0 0 1 BUYABLE>
<eq             pickaxe 0 0 1 BUYABLE>
<eq             pickaxe_2 0 0 1 BUYABLE>
<eq             bad_axe 0 0 1 BUYABLE>
<eq             bad_axe_2 0 0 1 BUYABLE>
<eq             bardiche 0 0 1 BUYABLE>
<eq             bardiche_2 0 0 1 BUYABLE>
<eq             battle_axe 0 0 1 BUYABLE>
<eq             battle_axe_2 0 0 1 BUYABLE>
<eq             double_battle_axe 0 0 1 BUYABLE>
<eq             double_battle_axe_2 0 0 1 BUYABLE>
<eq             bow 0 0 1 BUYABLE>
<eq             bow_2 0 0 1 BUYABLE>
<eq             butcher_knife 0 0 1 BUYABLE>
<eq             butcher_knife_2 0 0 1 BUYABLE>
<eq             club 0 0 1 BUYABLE>
<eq             club_2 0 0 1 BUYABLE>
<eq             crossbow 0 0 1 BUYABLE>
<eq             crossbow_2 0 0 1 BUYABLE>
<eq             big_crossbow 0 0 1 BUYABLE>
<eq             big_crossbow_2 0 0 1 BUYABLE>
<eq             cutlass 0 0 1 BUYABLE>
<eq             cutlass_2 0 0 1 BUYABLE>
<eq             dagger_1 0 0 1 BUYABLE>
<eq             dagger_2 0 0 1 BUYABLE>
<eq             gnarled_staff 0 0 1 BUYABLE>
<eq             gnarled_staff_2 0 0 1 BUYABLE>
<eq             halberd 0 0 1 BUYABLE>
<eq             halberd_2 0 0 1 BUYABLE>
<eq             hammerpick 0 0 1 BUYABLE>
<eq             hammerpick_2 0 0 1 BUYABLE>
<eq             kitana 0 0 1 BUYABLE>
<eq             kitana_2 0 0 1 BUYABLE>
<eq             kryss 0 0 1 BUYABLE>
<eq             kryss_2 0 0 1 BUYABLE>
<eq             broad_sword 0 0 1 BUYABLE>
<eq             broad_sword_2 0 0 1 BUYABLE>
<eq             long_sword 0 0 1 BUYABLE>
<eq             long_sword_2 0 0 1 BUYABLE>
<eq             magic_sword 0 0 1 BUYABLE>
<eq             magic_sword_2 0 0 1 BUYABLE>
<eq             viking_sword 0 0 1 BUYABLE>
<eq             viking_sword_2 0 0 1 BUYABLE>
<eq             mace 0 0 1 BUYABLE>
<eq             mace_2 0 0 1 BUYABLE>
<eq             maul 0 0 1 BUYABLE>
<eq             maul_2 0 0 1 BUYABLE>
<eq             meat_cleaver 0 0 1 BUYABLE>
<eq             meat_cleaver_2 0 0 1 BUYABLE>
<eq             new_axe 0 0 1 BUYABLE>
<eq             new_axe_2 0 0 1 BUYABLE>
<eq             double_new_axe 0 0 1 BUYABLE>
<eq             double_new_axe_2 0 0 1 BUYABLE>
<eq             pickaxe 0 0 1 BUYABLE>
<eq             pickaxe_2 0 0 1 BUYABLE>
<eq             pitchfork 0 0 1 BUYABLE>
<eq             pitchfork_2 0 0 1 BUYABLE>
<eq             quarter_staff 0 0 1 BUYABLE>
<eq             quarter_staff_2 0 0 1 BUYABLE>
<eq             scimitar 0 0 1 BUYABLE>
<eq             scimitar_2 0 0 1 BUYABLE>
<eq             shepherd_crook 0 0 1 BUYABLE>
<eq             shepherd_crook_2 0 0 1 BUYABLE>
<eq             skinning_knife 0 0 1 BUYABLE>
<eq             skinning_knife_2 0 0 1 BUYABLE>
<eq             smith_hammer 0 0 1 BUYABLE>
<eq             smith_hammer_2 0 0 1 BUYABLE>
<eq             short_spear 0 0 1 BUYABLE>
<eq             short_spear_2 0 0 1 BUYABLE>
<eq             spear 0 0 1 BUYABLE>
<eq             spear_2 0 0 1 BUYABLE>
<eq             two_handed_axe 0 0 1 BUYABLE>
<eq             two_handed_axe_2 0 0 1 BUYABLE>
<eq             war_axe 0 0 1 BUYABLE>
<eq             war_axe_2 0 0 1 BUYABLE>
<eq             war_hammer 0 0 1 BUYABLE>
<eq             war_hammer_2 0 0 1 BUYABLE>
<eq             war_mace 0 0 1 BUYABLE>
<eq             war_mace_2 0 0 1 BUYABLE>
<eq             lumber 0 0 1 BUYABLE>
<eq             iron_ingot 0 0 1 BUYABLE>
<eq             log 0 0 1 BUYABLE>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<1015>
# Sailor 
<type         NORMAL 401>
<frequency    100>
<region       { CUSTOMS 0 DOCKS 0 SAILORSMALL 0 SAILORMEDIUM 0 SAILORLARGE 0 SAILOR 0 } >
<regionlimit  { CUSTOMS 1 DOCKS 1 SAILORSMALL 2 SAILORMEDIUM 4 SAILORLARGE 6 SAILOR 1 } >
<job          sailor>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int hirelingWages 5>
<script       human>
<script       pet>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_SAILOR>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+65>
<dexterity    1d15+65>
<intelligence 1d15+40>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+425>
<sk           skill_magic_defense  25d10+425>
<sk           skill_battle_defense 25d10+425>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<eq           female_hair all_hair_colors 1>
<eq           plain_shirt white_colors 1>
<eq           plain_pants white_colors 1>
<eq           cutlass 0 0 1>
<eq           plain_shoes neutral_colors 1>
<eq           random_coin_purse 0 0 1>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter     1  1    SHIPS>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  1    SHIPS>
<resource     desire     10  1    GOLD>
<resource     desire     10  1    WATER>
<resource     desire      3  1    SELF>
<@@@ END @@@>
<1016>
# Shipwright 
<type         SHOPKEEPER 401>
<frequency    100>
<region       SHIPWRIGHT>
<regionlimit  { SHIPWRIGHT 1 } >
<job          shipwright>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 10>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_SHIPWRIGHT>
<convfrag     BRITANNIA_SHOPKEEPER>
<convfrag     BRITANNIA_MERCHANT_GREETING>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+65>
<dexterity    1d15+70>
<intelligence 1d15+60>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+425>
<sk           skill_magic_defense  25d10+425>
<sk           skill_battle_defense 25d10+425>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<eq           female_hair all_hair_colors 1>
<eq           plain_shirt all_colors 1>
<eq           skirt all_colors 1>
<eq           plain_shoes neutral_colors 1>
<eq           random_coin_purse 0 0 1>
<eq             ship_deed_template_0 0 0 1 SELLABLE>
<eq             ship_deed_template_1 0 0 1 SELLABLE>
<eq             ship_deed_template_2 0 0 1 SELLABLE>
<eq             ship_deed_template_3 0 0 1 SELLABLE>
<eq             ship_deed_template_4 0 0 1 SELLABLE>
<eq             ship_deed_template_5 0 0 1 SELLABLE>
<eq             ship_deed_template_0 0 0 1 BUYABLE>
<eq             ship_deed_template_1 0 0 1 BUYABLE>
<eq             ship_deed_template_2 0 0 1 BUYABLE>
<eq             ship_deed_template_3 0 0 1 BUYABLE>
<eq             ship_deed_template_4 0 0 1 BUYABLE>
<eq             ship_deed_template_5 0 0 1 BUYABLE>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<resource     desire     10  1    WOOD>
<@@@ END @@@>
<1017>
# Tailor 
<type         SHOPKEEPER 401>
<frequency    100>
<region       CLOTHIER>
<regionlimit  { CLOTHIER 1 } >
<job          tailor>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 9>
<script       human>
<script       gm>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_TAILOR>
<convfrag     BRITANNIA_SHOPKEEPER>
<convfrag     BRITANNIA_MERCHANT_GREETING>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+35>
<dexterity    1d15+45>
<intelligence 1d15+40>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+225>
<sk           skill_magic_defense  25d10+225>
<sk           skill_battle_defense 25d10+225>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_tailor         25d10+525>
<eq           female_hair all_hair_colors 1>
<eq           plain_shirt all_colors 1>
<eq           long_skirt all_colors 1>
<eq           random_shoes neutral_colors 1>
<eq           random_coin_purse 0 0 1>
<eq             sewing_kit 0 0 1 SELLABLE>
<eq             scissors 0 0 1 SELLABLE>
<eq             dye_tub 0 0 1 SELLABLE>
<eq             dye_bowl 0 0 1 SELLABLE>
<eq             plain_shirt 0 0 1 SELLABLE>
<eq             poor_pants 0 0 1 SELLABLE>
<eq             fancy_shirt 0 0 1 SELLABLE>
<eq             fancy_pants 0 0 1 SELLABLE>
<eq             full_dress 0 0 1 SELLABLE>
<eq             plain_dress 0 0 1 SELLABLE>
<eq             skirt 0 0 1 SELLABLE>
<eq             kilt { red_colors 1 blue_colors 1 green_colors 1 } 1 SELLABLE>
<eq             apron 0 0 1 SELLABLE>
<eq             robe 0 0 1 SELLABLE>
<eq             cloak 0 0 1 SELLABLE>
<eq             cape 0 0 1 SELLABLE>
<eq             doublet 0 0 1 SELLABLE>
<eq             tunic 0 0 1 SELLABLE>
<eq             jester_suit 0 0 1 SELLABLE>
<eq             jester_cap 0 0 1 SELLABLE>
<eq             floppy_hat all_colors 1 SELLABLE>
<eq             bumpkin_straw_hat all_colors 1 SELLABLE>
<eq             darby_hat all_colors 1 SELLABLE>
<eq             pointy_hat all_colors 1 SELLABLE>
<eq             banded_straw_hat all_colors 1 SELLABLE>
<eq             mage_like_hat all_colors 1 SELLABLE>
<eq             leather_cap all_colors 1 SELLABLE>
<eq             turban all_colors 1 SELLABLE>
<eq             straw_boater all_colors 1 SELLABLE>
<eq             bandana all_colors 1 SELLABLE>
<eq             skull_cap all_colors 1 SELLABLE>
<eq             folded_cloth_1 all_colors 1 SELLABLE>
<eq             folded_cloth_2 all_colors 1 SELLABLE>
<eq             folded_cloth_3 all_colors 1 SELLABLE>
<eq             folded_cloth_4 all_colors 1 SELLABLE>
<eq             bolt_of_cloth all_colors 1 SELLABLE>
<eq             bolt_of_cloth_2 all_colors 1 SELLABLE>
<eq             bolt_of_cloth_3 all_colors 1 SELLABLE>
<eq             bolt_of_cloth_4 all_colors 1 SELLABLE>
<eq             raw_cotton 0 0 1 SELLABLE>
<eq             raw_wool 0 0 1 SELLABLE>
<eq             retted_flax 0 0 1 SELLABLE>
<eq             thread 0 0 1 SELLABLE>
<eq             sewing_kit 0 0 1 BUYABLE>
<eq             scissors 0 0 1 BUYABLE>
<eq             scissors_2 0 0 1 BUYABLE>
<eq             dye_tub 0 0 1 BUYABLE>
<eq             dye_bowl 0 0 1 BUYABLE>
<eq             poor_shirt 0 0 1 BUYABLE>
<eq             poor_shirt_2 0 0 1 BUYABLE>
<eq             poor_pants 0 0 1 BUYABLE>
<eq             fancy_shirt 0 0 1 BUYABLE>
<eq             fancy_shirt_2 0 0 1 BUYABLE>
<eq             fancy_pants 0 0 1 BUYABLE>
<eq             full_dress 0 0 1 BUYABLE>
<eq             plain_dress 0 0 1 BUYABLE>
<eq             skirt 0 0 1 BUYABLE>
<eq             kilt 0 0 1 BUYABLE>
<eq             apron 0 0 1 BUYABLE>
<eq             robe 0 0 1 BUYABLE>
<eq             cloak 0 0 1 BUYABLE>
<eq             cape 0 0 1 BUYABLE>
<eq             doublet 0 0 1 BUYABLE>
<eq             jester_suit 0 0 1 BUYABLE>
<eq             jester_suit_2 0 0 1 BUYABLE>
<eq             jester_cap 0 0 1 BUYABLE>
<eq             tunic 0 0 1 BUYABLE>
<eq             tunic_2 0 0 1 BUYABLE>
<eq             floppy_hat all_colors 1 BUYABLE>
<eq             bumpkin_straw_hat all_colors 1 BUYABLE>
<eq             darby_hat all_colors 1 BUYABLE>
<eq             pointy_hat all_colors 1 BUYABLE>
<eq             banded_straw_hat all_colors 1 BUYABLE>
<eq             mage_like_hat all_colors 1 BUYABLE>
<eq             leather_cap all_colors 1 BUYABLE>
<eq             turban all_colors 1 BUYABLE>
<eq             straw_boater all_colors 1 BUYABLE>
<eq             bandana all_colors 1 BUYABLE>
<eq             skull_cap all_colors 1 BUYABLE>
<eq             folded_cloth_1 0 0 1 BUYABLE>
<eq             folded_cloth_2 0 0 1 BUYABLE>
<eq             folded_cloth_3 0 0 1 BUYABLE>
<eq             folded_cloth_4 0 0 1 BUYABLE>
<eq             bolt_of_cloth 0 0 1 BUYABLE>
<eq             bolt_of_cloth_2 0 0 1 BUYABLE>
<eq             bolt_of_cloth_3 0 0 1 BUYABLE>
<eq             bolt_of_cloth_4 0 0 1 BUYABLE>
<eq             scissors 0 0 1 BUYABLE>
<eq             raw_cotton 0 0 1 BUYABLE>
<eq             raw_wool 0 0 1 BUYABLE>
<eq             retted_flax 0 0 1 BUYABLE>
<eq             retted_flax2 0 0 1 BUYABLE>
<eq             thread 0 0 1 BUYABLE>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<resource     desire     10  1    CLOTH>
<@@@ END @@@>
<1018>
# Weaver 
<type         SHOPKEEPER 401>
<frequency    100>
<region       CLOTHIER>
<regionlimit  { CLOTHIER 1 } >
<job          weaver>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 9>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_WEAVER>
<convfrag     BRITANNIA_SHOPKEEPER>
<convfrag     BRITANNIA_MERCHANT_GREETING>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+35>
<dexterity    1d15+50>
<intelligence 1d15+30>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+225>
<sk           skill_magic_defense  25d10+225>
<sk           skill_battle_defense 25d10+225>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_tailor         25d10+325>
<eq           female_hair all_hair_colors 1>
<eq           plain_shirt all_colors 1>
<eq           skirt all_colors 1>
<eq           random_shoes netural_colors 1>
<eq           random_coin_purse 0 0 1>
<eq             dye_bowl 0 0 1 SELLABLE>
<eq             dye_tub 0 0 1 SELLABLE>
<eq             folded_cloth_1 0 0 1 SELLABLE>
<eq             folded_cloth_2 0 0 1 SELLABLE>
<eq             folded_cloth_3 0 0 1 SELLABLE>
<eq             folded_cloth_4 0 0 1 SELLABLE>
<eq             bolt_of_cloth 0 0 1 SELLABLE>
<eq             bolt_of_cloth_2 0 0 1 SELLABLE>
<eq             bolt_of_cloth_3 0 0 1 SELLABLE>
<eq             bolt_of_cloth_4 0 0 1 SELLABLE>
<eq             ball_of_yarn_1 0 0 1 SELLABLE>
<eq             ball_of_yarn_2 0 0 1 SELLABLE>
<eq             ball_of_yarn_3 0 0 1 SELLABLE>
<eq             scissors 0 0 1 SELLABLE>
<eq             scissors 0 0 1 BUYABLE>
<eq             scissors_2 0 0 1 BUYABLE>
<eq             dye_bowl 0 0 1 BUYABLE>
<eq             dye_tub 0 0 1 BUYABLE>
<eq             folded_cloth_1 0 0 1 BUYABLE>
<eq             folded_cloth_2 0 0 1 BUYABLE>
<eq             folded_cloth_3 0 0 1 BUYABLE>
<eq             folded_cloth_4 0 0 1 BUYABLE>
<eq             bolt_of_cloth 0 0 1 BUYABLE>
<eq             bolt_of_cloth_2 0 0 1 BUYABLE>
<eq             bolt_of_cloth_3 0 0 1 BUYABLE>
<eq             bolt_of_cloth_4 0 0 1 BUYABLE>
<eq             raw_cotton 0 0 1 BUYABLE>
<eq             raw_wool 0 0 1 BUYABLE>
<eq             ball_of_yarn_1 0 0 1 BUYABLE>
<eq             ball_of_yarn_2 0 0 1 BUYABLE>
<eq             ball_of_yarn_3 0 0 1 BUYABLE>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<resource     desire     10  1    CLOTH>
<resource     desire     10  1    COTTON>
<resource     desire     10  1    WOOL>
<@@@ END @@@>
<1019>
# Tavernkeeper 
<type         SHOPKEEPER 401>
<frequency    100>
<region       TAVERN>
<regionlimit  { TAVERN 1 } >
<job          tavernkeeper>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 7>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_TAVERNKEEPER>
<convfrag     BRITANNIA_SHOPKEEPER>
<convfrag     BRITANNIA_MERCHANT_GREETING>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+60>
<dexterity    1d15+65>
<intelligence 1d15+50>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+425>
<sk           skill_magic_defense  25d10+425>
<sk           skill_battle_defense 25d10+425>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<eq           female_hair all_hair_colors 1>
<eq           plain_shirt all_colors 1>
<eq           skirt all_colors 1>
<eq           plain_shoes netrual_colors 1>
<eq           apron white_colors 1>
<eq           random_coin_purse 0 0 1>
<eq             ale_bottle 0 0 1 SELLABLE>
<eq             wine_bottle 0 0 1 SELLABLE>
<eq             liquor_bottle 0 0 1 SELLABLE>
<eq             cider_jug 0 0 1 SELLABLE>
<eq             ale_pitcher 0 0 1 SELLABLE>
<eq             cider_pitcher 0 0 1 SELLABLE>
<eq             glass_pitcher 0 0 1 SELLABLE>
<eq             liquor_pitcher 0 0 1 SELLABLE>
<eq             milk_pitcher 0 0 1 SELLABLE>
<eq             wine_pitcher 0 0 1 SELLABLE>
<eq             water_pitcher 0 0 1 SELLABLE>
<eq             loaf_bread_1 0 0 1 SELLABLE>
<eq             cheese_1 0 0 1 SELLABLE>
<eq             cooked_bird 0 0 1 SELLABLE>
<eq             cooked_mutton 0 0 1 SELLABLE>
<eq             cooked_chicken 0 0 1 SELLABLE>
<eq             bowl_carrots_1 0 0 1 SELLABLE>
<eq             bowl_corn_1 0 0 1 SELLABLE>
<eq             bowl_lettuce_1 0 0 1 SELLABLE>
<eq             bowl_peas_1 0 0 1 SELLABLE>
<eq             bowl_carrots_2 0 0 1 SELLABLE>
<eq             bowl_corn_2 0 0 1 SELLABLE>
<eq             bowl_lettuce 0 0 1 SELLABLE>
<eq             bowl_peas_2 0 0 1 SELLABLE>
<eq             bowl_potatoes  0 0 1 SELLABLE>
<eq             bowl_stew_1 0 0 1 SELLABLE>
<eq             bowl_tomato_soup 0 0 1 SELLABLE>
<eq             baked_pie 0 0 1 SELLABLE>
<eq             chessboard 0 0 1 SELLABLE>
<eq             checkerboard 0 0 1 SELLABLE>
<eq             backgammon 0 0 1 SELLABLE>
<eq             dice_cup 0 0 1 SELLABLE>
<eq             vendor_deed_template 0 0 1 SELLABLE>
<eq             vendor_deed_template 0 0 1 BUYABLE>
<eq             chessboard 0 0 1 BUYABLE>
<eq             checkerboard 0 0 1 BUYABLE>
<eq             dice_cup 0 0 1 BUYABLE>
<eq             backgammon 0 0 1 BUYABLE>
<eq             backgammon_2 0 0 1 BUYABLE>
<eq             ale_bottle 0 0 1 BUYABLE>
<eq             wine_bottle 0 0 1 BUYABLE>
<eq             liquor_bottle 0 0 1 BUYABLE>
<eq             cider_jug 0 0 1 BUYABLE>
<eq             ale_pitcher 0 0 1 BUYABLE>
<eq             ale_pitcher_2 0 0 1 BUYABLE>
<eq             cider_pitcher 0 0 1 BUYABLE>
<eq             cider_pitcher_2 0 0 1 BUYABLE>
<eq             glass_pitcher 0 0 1 BUYABLE>
<eq             glass_pitcher_2 0 0 1 BUYABLE>
<eq             glass_pitcher_3 0 0 1 BUYABLE>
<eq             liquor_pitcher 0 0 1 BUYABLE>
<eq             liquor_pitcher_2 0 0 1 BUYABLE>
<eq             milk_pitcher 0 0 1 BUYABLE>
<eq             milk_pitcher_2 0 0 1 BUYABLE>
<eq             wine_pitcher 0 0 1 BUYABLE>
<eq             wine_pitcher_2 0 0 1 BUYABLE>
<eq             water_pitcher 0 0 1 BUYABLE>
<eq             water_pitcher_2 0 0 1 BUYABLE>
<eq             water_pitcher_3 0 0 1 BUYABLE>
<eq             water_pitcher_4 0 0 1 BUYABLE>
<eq             loaf_bread_1 0 0 1 BUYABLE>
<eq             cheese_1 0 0 1 BUYABLE>
<eq             cooked_bird 0 0 1 BUYABLE>
<eq             cooked_mutton 0 0 1 BUYABLE>
<eq             cooked_chicken 0 0 1 BUYABLE>
<eq             bowl_carrots_1 0 0 1 BUYABLE>
<eq             bowl_corn_1 0 0 1 BUYABLE>
<eq             bowl_lettuce_1 0 0 1 BUYABLE>
<eq             bowl_peas_1 0 0 1 BUYABLE>
<eq             bowl_carrots_2 0 0 1 BUYABLE>
<eq             bowl_corn_2 0 0 1 BUYABLE>
<eq             bowl_lettuce 0 0 1 BUYABLE>
<eq             bowl_peas_2 0 0 1 BUYABLE>
<eq             bowl_potatoes  0 0 1 BUYABLE>
<eq             bowl_stew_1 0 0 1 BUYABLE>
<eq             bowl_tomato_soup 0 0 1 BUYABLE>
<eq             baked_pie 0 0 1 BUYABLE>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<1020>
# Thief 
<type         NORMAL 401>
<frequency    100>
<region       { THIEF 0 THIEVES 0 CITY 0 } >
<regionlimit  { THIEF 1 THIEVES 2 CITY 6 } >
<job          thief>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 3>
<objvar       int hirelingWages 6>
<script       human>
<script       pet>
<script       thief>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_THIEF>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_NEEDS>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+60>
<dexterity    1d15+85>
<intelligence 1d15+70>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           25d10+525>
<sk           skill_magic_defense   25d10+525>
<sk           skill_battle_defense  25d10+525>
<sk           skill_weapon_slashing 25d10+325>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+525>
<sk           skill_weapon_hand     25d10+225>
<sk           skill_poisoning       25d10+325>
<sk           skill_locksmith       25d10+325>
<sk           skill_hide            25d10+425>
<sk           skill_detect_hidden   25d10+325>
<sk           skill_peek            25d10+425>
<sk           skill_steal           25d10+425>
<sk           skill_remove_trap     25d10+325>
<resistances  poison>
<resistances  piercing>
<eq           female_hair all_hair_colors 1>
<eq           plain_shirt all_colors 1>
<eq           skirt all_colors 1>
<eq           random_footwear 0 0 1>
<eq           random_dagger 0 0 1>
<eq           random_coin_purse 0 0 1>
<eq           lockpick 0 0 1 SELFCONTAINED>
<resource     food         5  1    FOOD>
<resource     food         5  1    EGGS>
<resource     food         5  1    FRUIT>
<resource     food         5  1    FISH>
<resource     shelter      1  1    HOME>
<resource     shelter     16  0    HOUSES>
<resource     production   8  0    MEAT>
<resource     desire       1 -3    DANGER>
<resource     desire       1 -3    SPOOKINESS>
<resource     desire       1 -2    GUARD>
<resource     desire       1  3    GOLD>
<resource     desire       1  3    JEWELS>
<@@@ END @@@>
<1021>
# Tinker 
<type         SHOPKEEPER 401>
<frequency    100>
<region       TINKER>
<regionlimit  { TINKER 1 } >
<job          tinker>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 8>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_TINKER>
<convfrag     BRITANNIA_SHOPKEEPER>
<convfrag     BRITANNIA_MERCHANT_GREETING>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+40>
<dexterity    1d15+65>
<intelligence 1d15+60>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+325>
<sk           skill_magic_defense  25d10+325>
<sk           skill_battle_defense 25d10+325>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_tinker         25d10+425>
<sk           skill_locksmith      25d10+425>
<sk           skill_remove_trap    25d10+425>
<eq           female_hair all_hair_colors 1>
<eq           plain_shirt all_colors 1>
<eq           skirt all_colors 1>
<eq           plain_shoes neutral_colors 1>
<eq           random_coin_purse 0 0 1>
<eq             clock 0 0 1 SELLABLE>
<eq             nails 0 0 1 SELLABLE>
<eq             clock_parts 0 0 1 SELLABLE>
<eq             axel_and_gears 0 0 1 SELLABLE>
<eq             gears 0 0 1 SELLABLE>
<eq             hinge 0 0 1 SELLABLE>
<eq             sextant 0 0 1 SELLABLE>
<eq             sextant_parts 0 0 1 SELLABLE>
<eq             sticks 0 0 1 SELLABLE>
<eq             springs 0 0 1 SELLABLE>
<eq             copper_key 0 0 1 SELLABLE>
<eq             gold_key 0 0 1 SELLABLE>
<eq             iron_key 0 0 1 SELLABLE>
<eq             rusty_key 0 0 1 SELLABLE>
<eq             key_ring 0 0 1 SELLABLE>
<eq             lockpick 0 0 1 SELLABLE>
<eq             lockpicks 0 0 1 SELLABLE>
<eq             tinker_tools 0 0 1 SELLABLE>
<eq             lumber 0 0 1 SELLABLE>
<eq             iron_ingot 0 0 1 SELLABLE>
<eq             sewing_kit 0 0 1 SELLABLE>
<eq             draw_knife 0 0 1 SELLABLE>
<eq             froe 0 0 1 SELLABLE>
<eq             inshave 0 0 1 SELLABLE>
<eq             scorp 0 0 1 SELLABLE>
<eq             butcher_knife 0 0 1 SELLABLE>
<eq             scissors 0 0 1 SELLABLE>
<eq             tongs 0 0 1 SELLABLE>
<eq             dovetail 0 0 1 SELLABLE>
<eq             saw 0 0 1 SELLABLE>
<eq             hammer 0 0 1 SELLABLE>
<eq             smith_hammer 0 0 1 SELLABLE>
<eq             sledge_hammer 0 0 1 SELLABLE>
<eq             shovel 0 0 1 SELLABLE>
<eq             moulding_plane 0 0 1 SELLABLE>
<eq             smoothing_plane 0 0 1 SELLABLE>
<eq             jointing_plane 0 0 1 SELLABLE>
<eq             pickaxe 0 0 1 SELLABLE>
<eq             drum 0 0 1 SELLABLE>
<eq             tambourine 0 0 1 SELLABLE>
<eq             lyre 0 0 1 SELLABLE>
<eq             lute 0 0 1 SELLABLE>
<eq             drum 0 0 1 BUYABLE>
<eq             tambourine 0 0 1 BUYABLE>
<eq             lyre 0 0 1 BUYABLE>
<eq             lute 0 0 1 BUYABLE>
<eq             kindling 0 0 1 BUYABLE>
<eq             clock 0 0 1 BUYABLE>
<eq             clock_2 0 0 1 BUYABLE>
<eq             clock_parts 0 0 1 BUYABLE>
<eq             clock_parts_2 0 0 1 BUYABLE>
<eq             axel_and_gears 0 0 1 BUYABLE>
<eq             axel_and_gears_2 0 0 1 BUYABLE>
<eq             gears 0 0 1 BUYABLE>
<eq             gears_2 0 0 1 BUYABLE>
<eq             hinge 0 0 1 BUYABLE>
<eq             hinge_2 0 0 1 BUYABLE>
<eq             sextant 0 0 1 BUYABLE>
<eq             sextant_2 0 0 1 BUYABLE>
<eq             sextant_parts 0 0 1 BUYABLE>
<eq             sextant_parts_2 0 0 1 BUYABLE>
<eq             sticks 0 0 1 BUYABLE>
<eq             sticks_2 0 0 1 BUYABLE>
<eq             springs 0 0 1 BUYABLE>
<eq             springs_2 0 0 1 BUYABLE>
<eq             copper_key 0 0 1 BUYABLE>
<eq             gold_key 0 0 1 BUYABLE>
<eq             iron_key 0 0 1 BUYABLE>
<eq             rusty_key 0 0 1 BUYABLE>
<eq             magic_key 0 0 1 BUYABLE>
<eq             key_ring 0 0 1 BUYABLE>
<eq             lockpick 0 0 1 BUYABLE>
<eq             lockpick_2 0 0 1 BUYABLE>
<eq             lockpicks 0 0 1 BUYABLE>
<eq             lockpicks_2 0 0 1 BUYABLE>
<eq             tinker_tools 0 0 1 BUYABLE>
<eq             tinker_kit_1 0 0 1 BUYABLE>
<eq             tinker_kit_2 0 0 1 BUYABLE>
<eq             tinker_kit_3 0 0 1 BUYABLE>
<eq             tinker_kit_4 0 0 1 BUYABLE>
<eq             iron_ingot 0 0 1 BUYABLE>
<eq             log     0 0  1  BUYABLE>
<eq             lumber 0 0 1 BUYABLE>
<eq             sewing_kit 0 0 1 BUYABLE>
<eq             draw_knife 0 0 1 BUYABLE>
<eq             froe 0 0 1 BUYABLE>
<eq             inshave 0 0 1 BUYABLE>
<eq             scorp 0 0 1 BUYABLE>
<eq             butcher_knife 0 0 1 BUYABLE>
<eq             butcher_knife_2 0 0 1 BUYABLE>
<eq             scissors 0 0 1 BUYABLE>
<eq             scissors_2 0 0 1 BUYABLE>
<eq             tongs 0 0 1 BUYABLE>
<eq             tongs_2 0 0 1 BUYABLE>
<eq             dovetail 0 0 1 BUYABLE>
<eq             dovetail_2 0 0 1 BUYABLE>
<eq             saw 0 0 1 BUYABLE>
<eq             saw_2 0 0 1 BUYABLE>
<eq             hammer 0 0 1 BUYABLE>
<eq             hammer_2 0 0 1 BUYABLE>
<eq             smith_hammer 0 0 1 BUYABLE>
<eq             smith_hammer_2 0 0 1 BUYABLE>
<eq             sledge_hammer 0 0 1 BUYABLE>
<eq             sledge_hammer_2 0 0 1 BUYABLE>
<eq             shovel 0 0 1 BUYABLE>
<eq             shovel_2 0 0 1 BUYABLE>
<eq             moulding_plane 0 0 1 BUYABLE>
<eq             moulding_plane_2 0 0 1 BUYABLE>
<eq             smoothing_plane 0 0 1 BUYABLE>
<eq             smoothing_plane_2 0 0 1 BUYABLE>
<eq             jointing_plane 0 0 1 BUYABLE>
<eq             jointing_plane_2 0 0 1 BUYABLE>
<eq             pickaxe 0 0 1 BUYABLE>
<eq             pickaxe_2 0 0 1 BUYABLE>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<1022>
# WeaponsTrainer 
<type         NORMAL 401>
<frequency    100>
<region       { WEAPONTRAINERSMALL 0 WEAPONTRAINERMEDIUM 0 WEAPONTRAINERLARGE 0 WEAPONTRAINER 0 } >
<regionlimit  { WEAPONTRAINERSMALL 2 WEAPONTRAINERMEDIUM 4 WEAPONTRAINERLARGE 6 WEAPONTRAINER 1 } >
<job          weaponstrainer>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 2>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_WEAPONSTRAINER>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+95>
<dexterity    1d15+90>
<intelligence 1d15+70>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           25d10+725>
<sk           skill_magic_defense   25d10+625>
<sk           skill_battle_defense  25d10+725>
<sk           skill_weapon_slashing 25d10+650>
<sk           skill_weapon_bashing  25d10+650>
<sk           skill_weapon_piercing 25d10+650>
<sk           skill_weapon_hand     25d10+650>
<resistances  slashing>
<resistances  piercing>
<resistances  bashing>
<eq           female_hair all_hair_colors 1>
<eq           studded_chest 0 0 1>
<eq           studded_legs 0 0 1>
<eq           studded_arms 0 0 1>
<eq           studded_gloves 0 0 1>
<eq           random_boots 0 0 1>
<eq           random_coin_purse 0 0 1>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<1023>
# Weaponsmith 
<type         SHOPKEEPER 401>
<frequency    100>
<region       WEAPONRY>
<regionlimit  { WEAPONRY 1 } >
<job          weaponsmith>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 2>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_WEAPONSMITH>
<convfrag     BRITANNIA_SHOPKEEPER>
<convfrag     BRITANNIA_MERCHANT_GREETING>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+85>
<dexterity    1d15+85>
<intelligence 1d15+80>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           25d10+525>
<sk           skill_magic_defense   25d10+525>
<sk           skill_battle_defense  25d10+525>
<sk           skill_weapon_slashing 25d10+425>
<sk           skill_weapon_bashing  25d10+425>
<sk           skill_weapon_piercing 25d10+425>
<sk           skill_weapon_hand     25d10+425>
<sk           skill_armslore        25d10+425>
<sk           skill_blacksmith      25d10+625>
<eq           female_hair all_hair_colors 1>
<eq           plain_shirt all_colors 1>
<eq           skirt all_colors 1>
<eq           random_boots 0 0 1>
<eq           apron 0 0 1>
<eq           random_coin_purse 0 0 1>
<eq           { all_weapons 5 bladed_weapons 1 blunt_weapons 1 } 0 0 1 NONE>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<resource     desire      1  1    WOOD>
<resource     desire      1  1    METAL>
<@@@ END @@@>
<1024>
# Carpenter 
<type         SHOPKEEPER 401>
<frequency    100>
<region       { WOODWORKER 0 CARPENTER 0 } >
<regionlimit  { WOODWORKER 1 CARPENTER 1 } >
<job          carpenter>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_SHOPKEEPER>
<convfrag     BRITANNIA_MERCHANT_GREETING>
<convfrag     BRITANNIA_CARPENTER>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+70>
<dexterity    1d15+65>
<intelligence 1d15+50>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           25d10+425>
<sk           skill_magic_defense   25d10+425>
<sk           skill_battle_defense  25d10+425>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_carpentry       25d10+525>
<sk           skill_lumberjack      25d10+425>
<eq           female_hair all_hair_colors 1>
<eq           plain_shirt all_colors 1>
<eq           skirt all_colors 1>
<eq           plain_shoes neutral_colors 1>
<eq           apron 0 0 1>
<eq           random_coin_purse 0 0 1>
<eq             nails 0 0 1 SELLABLE>
<eq             sticks 0 0 1 SELLABLE>
<eq             lumber 0 0 1 SELLABLE>
<eq             draw_knife 0 0 1 SELLABLE>
<eq             froe 0 0 1 SELLABLE>
<eq             inshave 0 0 1 SELLABLE>
<eq             scorp 0 0 1 SELLABLE>
<eq             dovetail 0 0 1 SELLABLE>
<eq             saw 0 0 1 SELLABLE>
<eq             hammer 0 0 1 SELLABLE>
<eq             moulding_plane 0 0 1 SELLABLE>
<eq             smoothing_plane 0 0 1 SELLABLE>
<eq             jointing_plane 0 0 1 SELLABLE>
<eq             drum 0 0 1 SELLABLE>
<eq             tambourine 0 0 1 SELLABLE>
<eq             lyre 0 0 1 SELLABLE>
<eq             lute 0 0 1 SELLABLE>
<eq             drum 0 0 1 BUYABLE>
<eq             tambourine 0 0 1 BUYABLE>
<eq             lyre 0 0 1 BUYABLE>
<eq             lute 0 0 1 BUYABLE>
<eq             sticks 0 0 1 BUYABLE>
<eq             sticks_2 0 0 1 BUYABLE>
<eq             log     0 0  1  BUYABLE>
<eq             lumber 0 0 1 BUYABLE>
<eq             draw_knife 0 0 1 BUYABLE>
<eq             froe 0 0 1 BUYABLE>
<eq             inshave 0 0 1 BUYABLE>
<eq             scorp 0 0 1 BUYABLE>
<eq             dovetail 0 0 1 BUYABLE>
<eq             dovetail_2 0 0 1 BUYABLE>
<eq             saw 0 0 1 BUYABLE>
<eq             saw_2 0 0 1 BUYABLE>
<eq             hammer 0 0 1 BUYABLE>
<eq             hammer_2 0 0 1 BUYABLE>
<eq             moulding_plane 0 0 1 BUYABLE>
<eq             moulding_plane_2 0 0 1 BUYABLE>
<eq             smoothing_plane 0 0 1 BUYABLE>
<eq             smoothing_plane_2 0 0 1 BUYABLE>
<eq             jointing_plane 0 0 1 BUYABLE>
<eq             jointing_plane_2 0 0 1 BUYABLE>
<eq             chair_1 0 0 1 BUYABLE>
<eq             chair_2 0 0 1 BUYABLE>
<eq             chair_3 0 0 1 BUYABLE>
<eq             chair_4 0 0 1 BUYABLE>
<eq             chair_5 0 0 1 BUYABLE>
<eq             chair_6 0 0 1 BUYABLE>
<eq             chair_7 0 0 1 BUYABLE>
<eq             chair_8 0 0 1 BUYABLE>
<eq             chair_9 0 0 1 BUYABLE>
<eq             chair_10 0 0 1 BUYABLE>
<eq             chair_11 0 0 1 BUYABLE>
<eq             chair_12 0 0 1 BUYABLE>
<eq             chair_13 0 0 1 BUYABLE>
<eq             chair_14 0 0 1 BUYABLE>
<eq             chair_15 0 0 1 BUYABLE>
<eq             chair_16 0 0 1 BUYABLE>
<eq             chair_17 0 0 1 BUYABLE>
<eq             chair_18 0 0 1 BUYABLE>
<eq             chair_19 0 0 1 BUYABLE>
<eq             chair_20 0 0 1 BUYABLE>
<eq             chair_21 0 0 1 BUYABLE>
<eq             stool_1 0 0 1 BUYABLE>
<eq             stool_2 0 0 1 BUYABLE>
<eq             bench_1 0 0 1 BUYABLE>
<eq             bench_2 0 0 1 BUYABLE>
<eq             throne_1 0 0 1 BUYABLE>
<eq             throne_2 0 0 1 BUYABLE>
<eq             table_1 0 0 1 BUYABLE>
<eq             table_2 0 0 1 BUYABLE>
<eq             table_3 0 0 1 BUYABLE>
<eq             table_4 0 0 1 BUYABLE>
<eq             table_5 0 0 1 BUYABLE>
<eq             table_6 0 0 1 BUYABLE>
<eq             table_7 0 0 1 BUYABLE>
<eq             table_8 0 0 1 BUYABLE>
<eq             table_9 0 0 1 BUYABLE>
<eq             table_10 0 0 1 BUYABLE>
<eq             wooden_box_1 0 0 1 BUYABLE>
<eq             wooden_box_2 0 0 1 BUYABLE>
<eq             small_crate_1 0 0 1 BUYABLE>
<eq             small_crate_2 0 0 1 BUYABLE>
<eq             crate_1 0 0 1 BUYABLE>
<eq             crate_2 0 0 1 BUYABLE>
<eq             crate_3 0 0 1 BUYABLE>
<eq             chest_1 0 0 1 BUYABLE>
<eq             chest_2 0 0 1 BUYABLE>
<eq             shelf_1 0 0 1 BUYABLE>
<eq             shelf_2 0 0 1 BUYABLE>
<eq             armoir_1 0 0 1 BUYABLE>
<eq             armoir_2 0 0 1 BUYABLE>
<eq             armoir_3 0 0 1 BUYABLE>
<eq             armoir_4 0 0 1 BUYABLE>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<resource     desire      1  1    WOOD>
<@@@ END @@@>
<1025>
# Sculpter 
<type         NORMAL 401>
<frequency    100>
<region       { ARTISAN 0 CITY 0 } >
<regionlimit  { ARTISAN 1 CITY 1 } >
<job          sculpter>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_SCULPTOR>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<strength     1d15+15 >
<dexterity    1d15+25 >
<intelligence 1d15+20 >
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+125>
<sk           skill_magic_defense  25d10+125>
<sk           skill_battle_defense 25d10+125>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_anatomy        25d10+225>
<eq           female_hair all_hair_colors 1>
<eq           plain_shirt all_colors 1>
<eq           skirt all_colors 1>
<eq           plain_shoes neutral_colors 1>
<eq           apron white_colors 1>
<eq           random_coin_purse 0 0 1>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<1026>
# Artist 
<type         NORMAL 401>
<frequency    100>
<region       { ARTISAN 0 PAINTER 0 CITY 0 } >
<regionlimit  { ARTISAN 2 PAINTER 2 CITY 1 } >
<job          artist>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_ARTIST>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+15 >
<dexterity    1d15+30 >
<intelligence 1d15+15 >
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+125>
<sk           skill_magic_defense  25d10+125>
<sk           skill_battle_defense 25d10+125>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_anatomy        25d10+225>
<eq           female_hair all_hair_colors 1>
<eq           plain_shirt all_colors 1>
<eq           skirt all_colors 1>
<eq           random_shoes neutral_colors 1>
<eq           apron white_colors 1>
<eq           palette 0 0 1 SELFCONTAINED>
<eq           random_coin_purse 0 0 1>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<1027>
# Alchemist 
<type         SHOPKEEPER 401>
<frequency    100>
<region       { MAGE 0 ALCHEMIST 0 } >
<regionlimit  { MAGE 1 ALCHEMIST 1 } >
<job          alchemist>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 1>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_ALCHEMIST>
<convfrag     BRITANNIA_SHOPKEEPER>
<convfrag     BRITANNIA_MERCHANT_GREETING>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+35>
<dexterity    1d15+35>
<intelligence 1d15+50>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+225>
<sk           skill_magic_defense  25d10+225>
<sk           skill_battle_defense 25d10+225>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_alchemy        25d10+525>
<sk           skill_taste          25d10+525>
<resistances  magic>
<eq           female_hair all_hair_colors 1>
<eq           plain_shirt all_colors 1>
<eq           skirt all_colors 1>
<eq           robe red_colors 1>
<eq           random_shoes neutral_colors 1>
<eq           random_coin_purse 0 0 1>
<eq             refresh_potion 0 0 1 SELLABLE>
<eq             agility_potion 0 0 1 SELLABLE>
<eq             blind_potion 0 0 1 SELLABLE>
<eq             heal_potion 0 0 1 SELLABLE>
<eq             strength_potion 0 0 1 SELLABLE>
<eq             poison_potion 0 0 1 SELLABLE>
<eq             sleep_potion 0 0 1 SELLABLE>
<eq             kaboom_potion 0 0 1 SELLABLE>
<eq             mortar_pestle 0 0 1 SELLABLE>
<eq             black_pearl_reagent 0 0 1 SELLABLE>
<eq             blood_moss_reagent 0 0 1 SELLABLE>
<eq             garlic_reagent 0 0 1 SELLABLE>
<eq             ginseng_reagent 0 0 1 SELLABLE>
<eq             mandrake_root 0 0 1 SELLABLE>
<eq             nightshade_reagent 0 0 1 SELLABLE>
<eq             sulfurous_ash_reagent 0 0 1 SELLABLE>
<eq             spider_silk_reagent 0 0 1 SELLABLE>
<eq             empty_vial 0 0 1 SELLABLE>
<eq             hair_dye 0 0 1 SELLABLE>
<eq             hair_dye 0 0 1 BUYABLE>
<eq             empty_vial 0 0 1 BUYABLE>
<eq             refresh_potion 0 0 1 BUYABLE>
<eq             agility_potion 0 0 1 BUYABLE>
<eq             blind_potion 0 0 1 BUYABLE>
<eq             heal_potion 0 0 1 BUYABLE>
<eq             strength_potion 0 0 1 BUYABLE>
<eq             poison_potion 0 0 1 BUYABLE>
<eq             sleep_potion 0 0 1 BUYABLE>
<eq             kaboom_potion 0 0 1 BUYABLE>
<eq             sulfurous_ash_reagent 0 0 1 BUYABLE>
<eq             mandrake_root 0 0 1 BUYABLE>
<eq             nightshade_reagent 0 0 1 BUYABLE>
<eq             garlic_reagent 0 0 1 BUYABLE>
<eq             ginseng_reagent 0 0 1 BUYABLE>
<eq             blood_moss_reagent 0 0 1 BUYABLE>
<eq             black_pearl_reagent 0 0 1 BUYABLE>
<eq             mortar_pestle 0 0 1 BUYABLE>
<resource     food         5  1    FOOD>
<resource     food         5  1    EGGS>
<resource     food         5  1    FRUIT>
<resource     food         5  1    FISH>
<resource     shelter      1  1    HOME>
<resource     shelter     16  0    HOUSES>
<resource     production   8  0    MEAT>
<resource     desire       1 -3    DANGER>
<resource     desire       1 -3    SPOOKINESS>
<resource     desire      10  2    GOLD>
<resource     desire      10  1    MAGIC>
<@@@ END @@@>
<1028>
# Glassblower 
<type         SHOPKEEPER 401>
<frequency    100>
<region       GLASSBLOWER>
<regionlimit  { GLASSBLOWER 1 } >
<job          glassblower>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_GLASSBLOWER>
<convfrag     BRITANNIA_SHOPKEEPER>
<convfrag     BRITANNIA_MERCHANT_GREETING>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+50>
<dexterity    1d15+60>
<intelligence 1d15+50>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+325>
<sk           skill_magic_defense  25d10+325>
<sk           skill_battle_defense 25d10+325>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<eq           female_hair all_hair_colors 1>
<eq           plain_shirt all_colors 1>
<eq           skirt all_colors 1>
<eq           plain_shoes neutral_colors 1>
<eq           random_coin_purse 0 0 1>
<eq             empty_vial 0 0 1 SELLABLE>
<eq             empty_jar 0 0 1 SELLABLE>
<eq             glass_pitcher 0 0 1 SELLABLE>
<eq             empty_vial 0 0 1 BUYABLE>
<eq             empty_jar 0 0 1 BUYABLE>
<eq             glass_pitcher 0 0 1 BUYABLE>
<eq             glass_pitcher_2 0 0 1 BUYABLE>
<eq             glass_pitcher_3 0 0 1 BUYABLE>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<1029>
# Bard 
<type         NORMAL 401>
<frequency    100>
<region       { TAVERN 0 CITY 0 BARDSMALL 0 BARDMEDIUM 0 BARDLARGE 0 BARD 0 } >
<regionlimit  { TAVERN 1 CITY 2 BARDSMALL 2 BARDMEDIUM 4 BARDLARGE 6 BARD 1 } >
<job          bard>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 11>
<objvar       int hirelingWages 2>
<script       human>
<script       pet>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_BARD>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+15>
<dexterity    1d15+25>
<intelligence 1d15+25>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+125>
<sk           skill_magic_defense  25d10+125>
<sk           skill_battle_defense 25d10+125>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_play           25d10+525>
<sk           skill_incite         25d10+525>
<sk           skill_entice         25d10+525>
<sk           skill_calm           25d10+525>
<eq           female_hair all_hair_colors 1>
<eq           plain_shirt all_colors 1>
<eq           skirt all_colors 1>
<eq           plain_shoes neutral_colors 1>
<eq           random_instrument 0 0 1 SELFCONTAINED>
<eq           random_coin_purse 0 0 1>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<1030>
# Fisherman 
<type         SHOPKEEPER 401>
<frequency    100>
<region       { DOCKS 0 FISHING 0 FISHERMAN 0 FISHERMANSMALL 0 FISHERMANMEDIUM 0 FISHERMANLARGE 0 FISHER 0 } >
<regionlimit  { DOCKS 1 FISHING 1 FISHERMAN 1 FISHERMANSMALL 2 FISHERMANMEDIUM 4 FISHERMANLARGE 6 FISHER 1 } >
<job          fisher>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 10>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_SHOPKEEPER>
<convfrag     BRITANNIA_MERCHANT_GREETING>
<convfrag     BRITANNIA_FISHER>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+60>
<dexterity    1d15+60>
<intelligence 1d15+40>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+325>
<sk           skill_magic_defense  25d10+325>
<sk           skill_battle_defense 25d10+325>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_fishing        25d10+425>
<eq           female_hair all_hair_colors 1>
<eq           plain_shirt all_colors 1>
<eq           skirt all_colors 1>
<eq           plain_shoes neutral_colors 1>
<eq           random_coin_purse 0 0 1>
<eq             fish_steak 0 0 1 SELLABLE>
<eq             small_fish_1 0 0 1 SELLABLE>
<eq             small_fish_2 0 0 1 SELLABLE>
<eq             big_fish_1 0 0 1 SELLABLE>
<eq             big_fish_2 0 0 1 SELLABLE>
<eq             big_fish_3 0 0 1 SELLABLE>
<eq             big_fish_4 0 0 1 SELLABLE>
<eq             fishing_pole 0 0 1 SELLABLE>
<eq             small_fish_1 0 0 1 BUYABLE>
<eq             small_fish_2 0 0 1 BUYABLE>
<eq             big_fish_1 0 0 1 BUYABLE>
<eq             big_fish_2 0 0 1 BUYABLE>
<eq             big_fish_3 0 0 1 BUYABLE>
<eq             big_fish_4 0 0 1 BUYABLE>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<resource     desire     10  1    WATER>
<@@@ END @@@>
<1031>
# Waitress
<type         SHOPKEEPER 401>
<frequency    100>
<region       TAVERN>
<regionlimit  { TAVERN 1  } >
<job          waiter>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_WAITER>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+35>
<dexterity    1d15+35>
<intelligence 1d15+20>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+125>
<sk           skill_magic_defense  25d10+125>
<sk           skill_battle_defense 25d10+125>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<eq           female_hair all_hair_colors 1>
<eq           plain_dress all_colors 1>
<eq           plain_shoes neutral_colors 1>
<eq           apron white_colors 1>
<eq           random_coin_purse 0 0 1>
<eq             ale_bottle 0 0 1 SELLABLE>
<eq             wine_bottle 0 0 1 SELLABLE>
<eq             liquor_bottle 0 0 1 SELLABLE>
<eq             cider_jug 0 0 1 SELLABLE>
<eq             ale_pitcher 0 0 1 SELLABLE>
<eq             cider_pitcher 0 0 1 SELLABLE>
<eq             glass_pitcher 0 0 1 SELLABLE>
<eq             liquor_pitcher 0 0 1 SELLABLE>
<eq             milk_pitcher 0 0 1 SELLABLE>
<eq             wine_pitcher 0 0 1 SELLABLE>
<eq             water_pitcher 0 0 1 SELLABLE>
<eq             loaf_bread_1 0 0 1 SELLABLE>
<eq             cheese_1 0 0 1 SELLABLE>
<eq             cooked_bird 0 0 1 SELLABLE>
<eq             cooked_mutton 0 0 1 SELLABLE>
<eq             cooked_chicken 0 0 1 SELLABLE>
<eq             bowl_carrots_1 0 0 1 SELLABLE>
<eq             bowl_corn_1 0 0 1 SELLABLE>
<eq             bowl_lettuce_1 0 0 1 SELLABLE>
<eq             bowl_peas_1 0 0 1 SELLABLE>
<eq             bowl_carrots_2 0 0 1 SELLABLE>
<eq             bowl_corn_2 0 0 1 SELLABLE>
<eq             bowl_lettuce 0 0 1 SELLABLE>
<eq             bowl_peas_2 0 0 1 SELLABLE>
<eq             bowl_potatoes  0 0 1 SELLABLE>
<eq             bowl_stew_1 0 0 1 SELLABLE>
<eq             bowl_tomato_soup 0 0 1 SELLABLE>
<eq             baked_pie 0 0 1 SELLABLE>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<1032>
# Animal Trainer 
<type         SHOPKEEPER 401>
<frequency    100>
<region       { STABLES 0 ANIMALTRAINER 0 } >
<regionlimit  { STABLES 1 ANIMALTRAINER 1 } >
<job          animal trainer>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 4>
<script       human>
<script       stables>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_SHOPKEEPER>
<convfrag     BRITANNIA_MERCHANT_GREETING>
<convfrag     BRITANNIA_ANIMALTRAINER>
<convfrag     BRITANNIA_HORSE_TRADER>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     9000>
<dexterity    9000>
<intelligence 9000>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           925>
<sk           skill_magic_defense   925>
<sk           skill_battle_defense  925>
<sk           skill_weapon_slashing 925>
<sk           skill_weapon_bashing  925>
<sk           skill_weapon_piercing 925>
<sk           skill_weapon_hand     925>
<sk           skill_vet             925>
<sk           skill_animal_lore     925>
<sk           skill_tame_animal     925>
<eq           female_hair all_hair_colors 1>
<eq           plain_shirt all_colors 1>
<eq           skirt all_colors 1>
<eq           random_boots 0 0 1>
<eq           quarter_staff 0 0 1>
<eq           random_coin_purse 0 0 1>
<eq           pet_cat 0 0 1 SELLABLE pet>
<eq           pet_dog 0 0 1 SELLABLE pet>
<eq           pet_horse 0 0 1 SELLABLE pet>
<eq           pet_packhorse 0 0 1 SELLABLE pet>
<eq           pet_packllama 0 0 1 SELLABLE pet>
<eq           pet_raven 0 0 1 SELLABLE pet>
<eq           pet_rat 0 0 1 SELLABLE pet>
<eq           pet_rabbit 0 0 1 SELLABLE pet>
<eq           pet_timber_wolf 0 0 1 SELLABLE pet>
<eq           pet_black_bear 0 0 1 SELLABLE pet>
<eq           pet_brown_bear 0 0 1 SELLABLE pet>
<eq           pet_eagle 0 0 1 SELLABLE pet>
<eq           pet_panther 0 0 1 SELLABLE pet>
<eq           bundle_of_grain 0 0 1 BUYABLE>
<eq           apple 0 0 1 BUYABLE>
<eq           carrot_obj 0 0 1 BUYABLE>
<eq           head_of_lettuce 0 0 1 BUYABLE>
<eq           raw_ribs 0 0 1 BUYABLE>
<eq           raw_bird 0 0 1 BUYABLE>
<eq           beef_carcass 0 0 1 BUYABLE>
<eq           beef_carcass_2 0 0 1 BUYABLE>
<eq           other_carcass 0 0 1 BUYABLE>
<eq           other_carcass_2 0 0 1 BUYABLE>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<1033>
# Rancher 
<type         SHOPKEEPER 401>
<frequency    100>
<region       { FARM 0 CITY 0 } >
<regionlimit  { FARM 1 CITY 1 } >
<job          rancher>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_RANCHER>
<convfrag     BRITANNIA_HORSE_TRADER>
<convfrag     BRITANNIA_SHOPKEEPER>
<convfrag     BRITANNIA_MERCHANT_GREETING>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+35>
<dexterity    1d15+33>
<intelligence 1d15+27>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           25d10+125>
<sk           skill_magic_defense   25d10+125>
<sk           skill_battle_defense  25d10+125>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_vet             25d10+525>
<sk           skill_animal_lore     25d10+525>
<sk           skill_tame_animal     25d10+325>
<sk           skill_herding         25d10+325>
<eq           female_hair all_hair_colors 1>
<eq           plain_shirt all_colors 1>
<eq           skirt all_colors 1>
<eq           black_boots neutral_colors 1>
<eq           random_coin_purse 0 0 1>
<eq           { pet_horse_1 1 pet_horse_2 1 pet_horse_3 1 } 0 0 1 SELLABLE pet>
<eq           pet_packhorse 0 0 1 SELLABLE pet>
<eq           bundle_of_grain 0 0 1 BUYABLE>
<eq           apple 0 0 1 BUYABLE>
<eq           carrot_obj 0 0 1 BUYABLE>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<1034>
# Cobbler 
<type         SHOPKEEPER 401>
<frequency    100>
<region       { COBBLER 0 PROVISIONER 0 } >
<regionlimit  { COBBLER 1 PROVISIONER 1 } >
<job          cobbler>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_SHOPKEEPER>
<convfrag     BRITANNIA_MERCHANT_GREETING>
<convfrag     BRITANNIA_COBBLER>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+35>
<dexterity    1d15+35>
<intelligence 1d15+25>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+125>
<sk           skill_magic_defense  25d10+125>
<sk           skill_battle_defense 25d10+125>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<eq           female_hair all_hair_colors 1>
<eq           plain_shirt all_colors 1>
<eq           skirt all_colors 1>
<eq           random_footwear 0 0 1>
<eq           random_coin_purse 0 0 1>
<eq             thigh_boots neutral_colors 1 SELLABLE>
<eq             plain_shoes neutral_colors 1 SELLABLE>
<eq             black_boots neutral_colors 1 SELLABLE>
<eq             sandals 0 0 1 SELLABLE>
<eq             cut_hides 0 0 1 BUYABLE>
<eq             cut_hides_2 0 0 1 BUYABLE>
<eq             cut_hides_3 0 0 1 BUYABLE>
<eq             cut_hides_4 0 0 1 BUYABLE>
<eq             pile_hides 0 0 1 BUYABLE>
<eq             pile_hides_2 0 0 1 BUYABLE>
<eq             llama_hides 0 0 1 BUYABLE>
<eq             llama_hides_2 0 0 1 BUYABLE>
<eq             thigh_boots 0 0 1 BUYABLE>
<eq             thigh_boots_2 0 0 1 BUYABLE>
<eq             plain_shoes 0 0 1 BUYABLE>
<eq             plain_shoes_2 0 0 1 BUYABLE>
<eq             black_boots 0 0 1 BUYABLE>
<eq             black_boots_2 0 0 1 BUYABLE>
<eq             sandals 0 0 1 BUYABLE>
<eq             sandals_2 0 0 1 BUYABLE>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<resource     desire     10  1    LEATHER>
<@@@ END @@@>
<1035>
# Beggar  
<type         NORMAL 401>
<frequency    100>
<region       { CITY 0 BEGGARSMALL 0 BEGGARMEDIUM 0 BEGGARLARGE 0 BEGGAR 0 } >
<regionlimit  { CITY 2 BEGGARSMALL 2 BEGGARMEDIUM 4 BEGGARLARGE 6 BEGGAR 1 } >
<job          beggar>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 3>
<objvar       int hirelingWages 1>
<script       human>
<script       pet>
<script       beggar>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_BEGGAR>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     50>
<notoriety    !1d10+5>
<strength     1d15+25>
<dexterity    1d15+20>
<intelligence 1d15+35>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+125>
<sk           skill_magic_defense  25d10+125>
<sk           skill_battle_defense 25d10+125>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_begging        25d10+525>
<sk           skill_peek           25d10+225>
<sk           skill_steal          25d10+125>
<eq           female_hair all_hair_colors 1>
<eq           poor_shirt all_colors 1>
<eq           skirt all_colors 1>
<eq           { sandals 1 0 1 } 0 0 1>
<eq           poor_backpack 0 0 1>
<resource     food         5  1    FOOD>
<resource     food         5  1    EGGS>
<resource     food         5  1    FRUIT>
<resource     food         5  1    FISH>
<resource     shelter      1  1    GUARDPOST>
<resource     shelter     16  0    HOUSES>
<resource     production   8  0    MEAT>
<resource     desire       1 -3    DANGER>
<resource     desire       1 -3    SPOOKINESS>
<resource     desire       1 -2    GUARD>
<resource     desire       1  3    GOLD>
<@@@ END @@@>
<1036>
# Scribe 
<type         SHOPKEEPER 401>
<frequency    100>
<region       { ABBEY 0 LIBRARY 0 SCRIBESMALL 0 SCRIBEMEDIUM 0 SCRIBELARGE 0 SCRIBE 0 } >
<regionlimit  { ABBEY 4 LIBRARY 2 SCRIBESMALL 2 SCRIBEMEDIUM 4 SCRIBELARGE 6 SCRIBE 1 } >
<job          scribe>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_SCRIBE>
<convfrag     BRITANNIA_SHOPKEEPER>
<convfrag     BRITANNIA_MERCHANT_GREETING>
<convfrag     BRITANNIA_SCHOLAR>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+15>
<dexterity    1d15+25>
<intelligence 1d15+30>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+125>
<sk           skill_magic_defense  25d10+125>
<sk           skill_battle_defense 25d10+125>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_evaluate       25d10+425>
<eq           female_hair all_hair_colors 1>
<eq           robe neutral_colors 1>
<eq           sandals 0 0 1>
<eq           poor_backpack 0 0 1>
<eq             scroll_blank 0 0 1 SELLABLE>
<eq             pen_and_ink 0 0 1 SELLABLE>
<eq             sm_blank_book 0 0 1 SELLABLE>
<eq             lg_blank_book 0 0 1 SELLABLE>
<eq             scroll_blank 0 0 1 BUYABLE>
<eq             pen_and_ink 0 0 1 BUYABLE>
<eq             sm_blank_book 0 0 1 BUYABLE>
<eq             lg_blank_book 0 0 1 BUYABLE>
<eq             sm_pub_book 0 0 1 BUYABLE>
<eq             lg_pub_book 0 0 1 BUYABLE>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<1037>
# Miner
<type         NORMAL 401>
<frequency    100>
<region       { CITY 0 MINERSGUILD 0 } >
<regionlimit  { CITY 1 MINERSGUILD 1 } >
<job          miner>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 6>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_MINER>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+65>
<dexterity    1d15+50>
<intelligence 1d15+40>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_mining          25d10+425>
<sk           skill_melee           25d10+325>
<sk           skill_magic_defense   25d10+325>
<sk           skill_battle_defense  25d10+325>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<eq           female_hair all_hair_colors 1>
<eq           plain_shirt grey_colors 1>
<eq           skirt blue_colors 1>
<eq           random_boots brown_colors 1>
<eq           pickaxe 0 0 1>
<eq           meager_backpack 0 0 1>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<resource     desire     10  1    STONE>
<@@@ END @@@>
<1038>
# Mayor 
<type         NORMAL 401>
<frequency    100>
<region       TOWNHALL>
<regionlimit  { TOWNHALL 1 } >
<job          mayor>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_MAYOR>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+55>
<strength     1d15+35>
<dexterity    1d15+35>
<intelligence 1d15+50>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+225>
<sk           skill_magic_defense  25d10+225>
<sk           skill_battle_defense 25d10+225>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<eq           female_hair all_hair_colors 1>
<eq           fancy_shirt all_colors 1>
<eq           skirt all_colors 1>
<eq           random_boots 0 0 1>
<eq           sash red_colors 1>
<eq           rich_backpack 0 0 1>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<resource     desire     50  1    NOTORIETY>
<@@@ END @@@>
<1039>
# Gambler 
<type         NORMAL 401>
<frequency    100>
<region       { CASINO 0 } >
<regionlimit  { CASINO 5 } >
<job          gambler>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int hirelingWages 4>
<script       human>
<script       pet>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_GAMBLER>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+30>
<dexterity    1d15+50>
<intelligence 1d15+55>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+225>
<sk           skill_magic_defense  25d10+225>
<sk           skill_battle_defense 25d10+225>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_appraise       25d10+325>
<sk           skill_peek           25d10+525>
<sk           skill_steal          25d10+325>
<sk           skill_evaluate       25d10+425>
<resistances  piercing>
<eq           female_hair all_hair_colors 1>
<eq           plain_shirt all_colors 1>
<eq           skirt all_colors 1>
<eq           random_footwear 0 0 1>
<eq           random_dagger 0 0 1>
<eq           random_coin_purse 0 0 1>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<resource     desire      1  1    GAMBLING>
<@@@ END @@@>
<1040>
#  Brigand 
<type         NORMAL 401>
<frequency    100>
<region       { BRIGANDSMALL 0 BRIGANDMEDIUM 0 BRIGANDLARGE 0 BRIGAND 0 } >
<regionlimit  { BRIGANDSMALL 2 BRIGANDMEDIUM 4 BRIGANDLARGE 6 BRIGAND 1 } >
<job          brigand>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int hirelingWages 6>
<script       human>
<script       pet>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_BRIGAND>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    2d15-77>
<strength     1d15+65>
<dexterity    1d15+80>
<intelligence 1d15+60>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           25d10+525>
<sk           skill_magic_defense   25d10+525>
<sk           skill_battle_defense  25d10+525>
<sk           skill_weapon_slashing 25d10+325>
<sk           skill_weapon_bashing  25d10+225>
<sk           skill_weapon_piercing 25d10+425>
<sk           skill_weapon_hand     25d10+325>
<sk           skill_poisoning       25d10+325>
<sk           skill_locksmith       25d10+325>
<sk           skill_hide            25d10+425>
<sk           skill_peek            25d10+325>
<sk           skill_steal           25d10+425>
<sk           skill_remove_trap     25d10+325>
<sk           skill_camping         25d10+425>
<resistances  piercing>
<eq           female_hair all_hair_colors 1>
<eq           poor_shirt all_colors 1>
<eq           skirt all_colors 1>
<eq           random_footwear 0 0 1>
<eq           random_weapon 0 0 1>
<eq           random_coin_purse 0 0 1>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<1041>
# Architecht 
<type         SHOPKEEPER 401>
<frequency    200>
<region       { ARCHITECT 0 TOWNHALL 0 WOODWORKER 0 CARPENTER 0 } >
<regionlimit  { ARCHITECT 1 TOWNHALL 1 WOODWORKER 1 CARPENTER 1 } >
<job          architect>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_SHOPKEEPER>
<convfrag     BRITANNIA_MERCHANT_GREETING>
<convfrag     BRITANNIA_ARCHITECT>
<convfrag     BRITANNIA_REALTOR>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+20>
<dexterity    1d15+35>
<intelligence 1d15+35>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+125>
<sk           skill_magic_defense  25d10+125>
<sk           skill_battle_defense 25d10+125>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<eq           female_hair all_hair_colors 1>
<eq           plain_shirt all_colors 1>
<eq           skirt all_colors 1>
<eq           plain_shoes neutral_colors 1>
<eq           random_coin_purse 0 0 1>
<eq             house_deed_template_0 0 0 1 SELLABLE>
<eq             house_deed_template_1 0 0 1 SELLABLE>
<eq             house_deed_template_2 0 0 1 SELLABLE>
<eq             house_deed_template_3 0 0 1 SELLABLE>
<eq             house_deed_template_4 0 0 1 SELLABLE>
<eq             house_deed_template_5 0 0 1 SELLABLE>
<eq             house_deed_template_6 0 0 1 SELLABLE>
<eq             house_deed_template_7 0 0 1 SELLABLE>
<eq             house_deed_template_8 0 0 1 SELLABLE>
<eq             house_deed_template_9 0 0 1 SELLABLE>
<eq             house_deed_template_10 0 0 1 SELLABLE>
<eq             house_deed_template_11 0 0 1 SELLABLE>
<eq             house_deed_template_12 0 0 1 SELLABLE>
<eq             house_deed_template_13 0 0 1 SELLABLE>
<eq             house_deed_smithy 0 0 1 SELLABLE>
<eq             house_deed_large_smithy 0 0 1 SELLABLE>
<eq             house_deed_bakery 0 0 1 SELLABLE>
<eq             house_deed_tailor 0 0 1 SELLABLE>
<eq             house_deed_weap_train 0 0 1 SELLABLE>
<eq             house_deed_thief_train 0 0 1 SELLABLE>
<eq             house_deed_template_0 0 0 1 BUYABLE>
<eq             house_deed_template_1 0 0 1 BUYABLE>
<eq             house_deed_template_2 0 0 1 BUYABLE>
<eq             house_deed_template_3 0 0 1 BUYABLE>
<eq             house_deed_template_4 0 0 1 BUYABLE>
<eq             house_deed_template_5 0 0 1 BUYABLE>
<eq             house_deed_template_6 0 0 1 BUYABLE>
<eq             house_deed_template_7 0 0 1 BUYABLE>
<eq             house_deed_template_8 0 0 1 BUYABLE>
<eq             house_deed_template_9 0 0 1 BUYABLE>
<eq             house_deed_template_10 0 0 1 BUYABLE>
<eq             house_deed_template_11 0 0 1 BUYABLE>
<eq             house_deed_template_12 0 0 1 BUYABLE>
<eq             house_deed_template_13 0 0 1 BUYABLE>
<eq             house_deed_smithy 0 0 1 BUYABLE>
<eq             house_deed_large_smithy 0 0 1 BUYABLE>
<eq             house_deed_bakery 0 0 1 BUYABLE>
<eq             house_deed_tailor 0 0 1 BUYABLE>
<eq             house_deed_weap_train 0 0 1 BUYABLE>
<eq             house_deed_thief_train 0 0 1 BUYABLE>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<1042>
#  Mapmaker 
<type         SHOPKEEPER 401>
<frequency    100>
<region       { MAPMAKER 0 SHIPWRIGHT 0 } >
<regionlimit  { MAPMAKER 1 SHIPWRIGHT 1 } >
<job          mapmaker>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 10>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_MAPMAKER>
<convfrag     BRITANNIA_SHOPKEEPER>
<convfrag     BRITANNIA_MERCHANT_GREETING>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+20>
<dexterity    1d15+35>
<intelligence 1d15+35>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+125>
<sk           skill_magic_defense  25d10+125>
<sk           skill_battle_defense 25d10+125>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_mapmaking      25d10+625>
<eq           female_hair all_hair_colors 1>
<eq           plain_shirt all_colors 1>
<eq           skirt all_colors 1>
<eq           plain_shoes neutral_colors 1>
<eq           random_coin_purse 0 0 1>
<eq             open_map 0 0 1 SELLABLE>
<eq             map_stock_1 0 0 1 SELLABLE>
<eq             map_stock_2 0 0 1 SELLABLE>
<eq             map_stock_3 0 0 1 SELLABLE>
<eq             map_stock_4 0 0 1 SELLABLE>
<eq             map_stock_5 0 0 1 SELLABLE>
<eq             map_stock_6 0 0 1 SELLABLE>
<eq             map_stock_7 0 0 1 SELLABLE>
<eq             map_stock_8 0 0 1 SELLABLE>
<eq             map_stock_9 0 0 1 SELLABLE>
<eq             map_stock_10 0 0 1 SELLABLE>
<eq             map_stock_11 0 0 1 SELLABLE>
<eq             map_stock_12 0 0 1 SELLABLE>
<eq             map_stock_13 0 0 1 SELLABLE>
<eq             map_stock_14 0 0 1 SELLABLE>
<eq             map_stock_15 0 0 1 SELLABLE>
<eq             map_stock_16 0 0 1 SELLABLE>
<eq             map_stock_17 0 0 1 SELLABLE>
<eq             map_stock_18 0 0 1 SELLABLE>
<eq             map_stock_19 0 0 1 SELLABLE>
<eq             map_stock_20 0 0 1 SELLABLE>
<eq             map_stock_21 0 0 1 SELLABLE>
<eq             map_stock_22 0 0 1 SELLABLE>
<eq             map_stock_23 0 0 1 SELLABLE>
<eq             map_stock_24 0 0 1 SELLABLE>
<eq             map_stock_25 0 0 1 SELLABLE>
<eq             map_stock_26 0 0 1 SELLABLE>
<eq             map_stock_27 0 0 1 SELLABLE>
<eq             map_stock_28 0 0 1 SELLABLE>
<eq             open_map 0 0 1 BUYABLE>
<eq             blank_scroll 0 0 1 BUYABLE>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<1043>
# Gypsy   
<type         NORMAL 401>
<frequency    100>
<region       { CITY 0 GYPSYSMALL 0 GYPSYMEDIUM 0 GYPSYLARGE 0 GYPSY 0 } >
<regionlimit  { CITY 1 GYPSYSMALL 2 GYPSYMEDIUM 4 GYPSYLARGE 6 GYPSY 1 } >
<job          gypsy>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_GYPSY>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+40>
<dexterity    1d15+50>
<intelligence 1d15+60>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+325>
<sk           skill_magic_defense  25d10+325>
<sk           skill_battle_defense 25d10+325>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_appraise       25d10+425>
<sk           skill_hide           25d10+425>
<sk           skill_steal          25d10+425>
<sk           skill_peek           25d10+425>
<sk           skill_locksmith      25d10+425>
<sk           skill_camping        25d10+425>
<sk           skill_begging        25d10+425>
<resistances  magic>
<eq           female_hair all_hair_colors 1>
<eq           poor_shirt all_colors 1>
<eq           skirt all_colors 1>
<eq           bandana blue_colors 1>
<eq           random_footwear 0 0 1>
<eq           random_coin_purse 0 0 1>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<1044>
#  Herbalist 
<type         SHOPKEEPER 401>
<frequency    100>
<region       { HERBALIST 0 MAGIC 0 MAGE 0 } >
<regionlimit  { HERBALIST 1 MAGIC 1 MAGE 1 } >
<job          herbalist>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_HERBALIST>
<convfrag     BRITANNIA_SHOPKEEPER>
<convfrag     BRITANNIA_MERCHANT_GREETING>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+20>
<dexterity    1d15+35>
<intelligence 1d15+35>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+125>
<sk           skill_magic_defense  25d10+125>
<sk           skill_battle_defense 25d10+125>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_taste          25d10+325>
<sk           skill_alchemy        25d10+325>
<sk           skill_cooking        25d10+325>
<eq           female_hair all_hair_colors 1>
<eq           plain_shirt all_colors 1>
<eq           skirt all_colors 1>
<eq           sandals 0 0 1>
<eq           random_coin_purse 0 0 1>
<eq             ginseng_reagent 0 0 1 SELLABLE>
<eq             garlic_reagent 0 0 1 SELLABLE>
<eq             mandrake_root 0 0 1 SELLABLE>
<eq             nightshade_reagent 0 0 1 SELLABLE>
<eq             blood_moss_reagent 0 0 1 SELLABLE>
<eq             mortar_pestle 0 0 1 SELLABLE>
<eq             empty_vial 0 0 1 SELLABLE>
<eq             empty_vial 0 0 1 BUYABLE>
<eq             ginseng_reagent 0 0 1 BUYABLE>
<eq             garlic_reagent 0 0 1 BUYABLE>
<eq             mandrake_root 0 0 1 BUYABLE>
<eq             nightshade_reagent 0 0 1 BUYABLE>
<eq             blood_moss_reagent 0 0 1 BUYABLE>
<eq             mortar_pestle 0 0 1 BUYABLE>
<resource     food         5  1    FOOD>
<resource     food         5  1    EGGS>
<resource     food         5  1    FRUIT>
<resource     food         5  1    FISH>
<resource     shelter      1  1    HOME>
<resource     shelter     16  0    HOUSES>
<resource     production   8  0    MEAT>
<resource     desire       1 -3    DANGER>
<resource     desire       1 -3    SPOOKINESS>
<resource     desire      10  2    GOLD>
<resource     desire       1  1    HERBS>
<@@@ END @@@>
<1045>
# Judge 
<type         NORMAL 401>
<frequency    100>
<region       COURT>
<regionlimit  { COURT 1 } >
<job          judge>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_JUDGE>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+35>
<strength     1d15+65>
<dexterity    1d15+60>
<intelligence 1d15+75>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           25d10+525>
<sk           skill_magic_defense   25d10+525>
<sk           skill_battle_defense  25d10+525>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_evaluate        25d10+625>
<sk           skill_forensics       25d10+425>
<eq           female_hair grey_colors 1>
<eq           robe black_colors 1>
<eq           plain_shoes neutral_colors 1>
<eq           random_coin_purse 0 0 1>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<1046>
# Cook 
<type         SHOPKEEPER 401>
<frequency    100>
<region       TAVERN>
<regionlimit  { TAVERN 1 } >
<job          cook>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_COOK>
<convfrag     BRITANNIA_SHOPKEEPER>
<convfrag     BRITANNIA_MERCHANT_GREETING>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+40>
<dexterity    1d15+55>
<intelligence 1d15+55>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+325>
<sk           skill_magic_defense  25d10+325>
<sk           skill_battle_defense 25d10+325>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_taste          25d10+325>
<sk           skill_cooking        25d10+525>
<eq           female_hair all_hair_colors 1>
<eq           plain_shirt all_colors 1>
<eq           skirt all_colors 1>
<eq           apron white_colors 1>
<eq           random_shoes neutral_colors 1>
<eq           random_coin_purse 0 0 1>
<eq             loaf_bread_2 0 0 1 SELLABLE>
<eq             loaf_bread_1 0 0 1 SELLABLE>
<eq             baked_pie 0 0 1 SELLABLE>
<eq             cake 0 0 1 SELLABLE>
<eq             muffin 0 0 1 SELLABLE>
<eq             cheese 0 0 1 SELLABLE>
<eq             cooked_bird 0 0 1 SELLABLE>
<eq             cooked_mutton 0 0 1 SELLABLE>
<eq             cooked_chick_leg 0 0 1 SELLABLE>
<eq             bowl_carrots_1 0 0 1 SELLABLE>
<eq             bowl_corn_1 0 0 1 SELLABLE>
<eq             bowl_lettuce_1 0 0 1 SELLABLE>
<eq             bowl_peas_1 0 0 1 SELLABLE>
<eq             bowl_carrots_2 0 0 1 SELLABLE>
<eq             bowl_corn_2 0 0 1 SELLABLE>
<eq             bowl_lettuce_2 0 0 1 SELLABLE>
<eq             bowl_peas_2 0 0 1 SELLABLE>
<eq             bowl_potatoes  0 0 1 SELLABLE>
<eq             bowl_stew 0 0 1 SELLABLE>
<eq             bowl_tomato_soup 0 0 1 SELLABLE>
<eq             roast_pig 0 0 1 SELLABLE>
<eq             sack_flour 0 0 1 SELLABLE>
<eq             honey_obj 0 0 1 SELLABLE>
<eq             kindling 0 0 1 BUYABLE>
<eq             sack_flour 0 0 1 BUYABLE>
<eq             honey_obj 0 0 1 BUYABLE>
<eq             fish_steak 0 0 1 BUYABLE>
<eq             small_fish_1 0 0 1 BUYABLE>
<eq             small_fish_2 0 0 1 BUYABLE>
<eq             big_fish_1 0 0 1 BUYABLE>
<eq             big_fish_2 0 0 1 BUYABLE>
<eq             big_fish_3 0 0 1 BUYABLE>
<eq             big_fish_4 0 0 1 BUYABLE>
<eq             raw_ribs 0 0 1 BUYABLE>
<eq             raw_bird 0 0 1 BUYABLE>
<eq             loaf_bread_1 0 0 1 BUYABLE>
<eq             cheese0 0 1 BUYABLE>
<eq             head_of_cabbage 0 0 1 BUYABLE>
<eq             cantelope 0 0 1 BUYABLE>
<eq             carrot_obj 0 0 1 BUYABLE>
<eq             melon 0 0 1 BUYABLE>
<eq             squash 0 0 1 BUYABLE>
<eq             head_of_lettuce 0 0 1 BUYABLE>
<eq             onion_obj 0 0 1 BUYABLE>
<eq             pumpkin 0 0 1 BUYABLE>
<eq             gourd_1 0 0 1 BUYABLE>
<eq             gourd_2 0 0 1 BUYABLE>
<eq             turnip_1 0 0 1 BUYABLE>
<eq             turnip_2 0 0 1 BUYABLE>
<eq             watermelon 0 0 1 BUYABLE>
<eq             corn 0 0 1 BUYABLE>
<eq             fresh_eggs 0 0 1 BUYABLE>
<eq             milk_pitcher 0 0 1 BUYABLE>
<eq             peach 0 0 1 BUYABLE>
<eq             pear 0 0 1 BUYABLE>
<eq             lemon 0 0 1 BUYABLE>
<eq             lime 0 0 1 BUYABLE>
<eq             grapes 0 0 1 BUYABLE>
<eq             apple 0 0 1 BUYABLE>
<eq             peach 0 0 1 BUYABLE>
<eq             pear 0 0 1 BUYABLE>
<eq             grapes 0 0 1 BUYABLE>
<eq             apple 0 0 1 BUYABLE>
<eq             banana 0 0 1 BUYABLE>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<1047>
# Monk 
<type         NORMAL 401>
<frequency    100>
<region       { TEMPLE 0 ABBEY 0 LIBRARY 0 } >
<regionlimit  { TEMPLE 2 ABBEY 3 LIBRARY 1 } >
<job          monk>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_SCHOLAR>
<convfrag     BRITANNIA_MONK>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+20>
<dexterity    1d15+35>
<intelligence 1d15+40>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+125>
<sk           skill_magic_defense  25d10+125>
<sk           skill_battle_defense 25d10+125>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_evaluate       25d10+525>
<eq           female_hair all_hair_colors 1>
<eq           robe neutral_colors 1>
<eq           sandals 0 0 1>
<eq           poor_backpack 0 0 1>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<1048>
# Miller 
<type         SHOPKEEPER 401>
<frequency    100>
<region       MILL>
<regionlimit  { MILL 2 } >
<job          miller>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_MILLER>
<convfrag     BRITANNIA_SHOPKEEPER>
<convfrag     BRITANNIA_MERCHANT_GREETING>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+40>
<dexterity    1d15+35>
<intelligence 1d15+25>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+125>
<sk           skill_magic_defense  25d10+125>
<sk           skill_battle_defense 25d10+125>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<eq           female_hair all_hair_colors 1>
<eq           plain_shirt all_colors 1>
<eq           skirt all_colors 1>
<eq           plain_shoes neutral_colors 1>
<eq           random_coin_purse 0 0 1>
<eq           flour_sack 0 0 1 SELLABLE>
<eq           bundle_of_grain 0 0 1 SELLABLE>
<eq           flour_sack 0 0 1 BUYABLE>
<eq           bundle_of_grain 0 0 1 BUYABLE>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<1049>
# Minter 
<type         NORMAL 401>
<frequency    100>
<region       BANK>
<regionlimit  { BANK 1 } >
<job          minter>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<script       banker>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_MINTER>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+70>
<dexterity    1d15+65>
<intelligence 1d15+65>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+425>
<sk           skill_magic_defense  25d10+425>
<sk           skill_battle_defense 25d10+425>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<eq           female_hair all_hair_colors 1>
<eq           plain_shirt all_colors 1>
<eq           skirt all_colors 1>
<eq           plain_shoes neutral_colors 1>
<eq           random_coin_purse 0 0 1>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<1050>
# Farmer 
<type         SHOPKEEPER 401>
<frequency    100>
<region       FARM>
<regionlimit  { FARM 1 } >
<job          farmer>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_SHOPKEEPER>
<convfrag     BRITANNIA_MERCHANT_GREETING>
<convfrag     BRITANNIA_FARMER>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     10>
<dexterity    10>
<intelligence 10>
<hp           STR>
<mana         INT>
<stamina      30>
<sk           skill_melee           10>
<sk           skill_magic_defense   300>
<sk           skill_battle_defense  300>
<sk           skill_weapon_slashing 10>
<sk           skill_weapon_bashing  10>
<sk           skill_weapon_piercing 10>
<sk           skill_weapon_hand     10>
<eq           female_hair all_hair_colors 1>
<eq           poor_shirt all_colors 1>
<eq           skirt all_colors 1>
<eq           bumpkin_straw_hat neutral_colors 1>
<eq           random_boots 0 0 1>
<eq             head_of_cabbage 0 0 1 SELLABLE>
<eq             cantelope 0 0 1 SELLABLE>
<eq             carrot_obj 0 0 1 SELLABLE>
<eq             melon 0 0 1 SELLABLE>
<eq             squash 0 0 1 SELLABLE>
<eq             head_of_lettuce 0 0 1 SELLABLE>
<eq             onion_obj 0 0 1 SELLABLE>
<eq             pumpkin 0 0 1 SELLABLE>
<eq             gourd_1 0 0 1 SELLABLE>
<eq             gourd_2 0 0 1 SELLABLE>
<eq             turnip_1 0 0 1 SELLABLE>
<eq             watermelon 0 0 1 SELLABLE>
<eq             corn 0 0 1 SELLABLE>
<eq             fresh_eggs 0 0 1 SELLABLE>
<eq             milk_pitcher 0 0 1 SELLABLE>
<eq             peach 0 0 1 SELLABLE>
<eq             pear 0 0 1 SELLABLE>
<eq             lemon 0 0 1 SELLABLE>
<eq             lime 0 0 1 SELLABLE>
<eq             grapes 0 0 1 SELLABLE>
<eq             apple 0 0 1 SELLABLE>
<eq             bundle_of_grain 0 0 1 SELLABLE>
<eq             kindling 0 0 1 BUYABLE>
<eq             flour_sack 0 0 1 BUYABLE>
<eq             bundle_of_grain 0 0 1 BUYABLE>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<1051>
# Veterinarian 
<type         SHOPKEEPER 401>
<frequency    100>
<region       VET>
<regionlimit  { VET 1 } >
<job          vet>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_VET>
<convfrag     BRITANNIA_HORSE_TRADER>
<convfrag     BRITANNIA_SHOPKEEPER>
<convfrag     BRITANNIA_MERCHANT_GREETING>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+55>
<dexterity    1d15+55>
<intelligence 1d15+55>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+325>
<sk           skill_magic_defense  25d10+325>
<sk           skill_battle_defense 25d10+325>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_animal_lore    25d10+525>
<sk           skill_vet            25d10+525>
<eq           female_hair all_hair_colors 1>
<eq           plain_shirt all_colors 1>
<eq           skirt all_colors 1>
<eq           random_boots 0 0 1>
<eq           random_coin_purse 0 0 1>
<eq             bandage 0 0 1 SELLABLE>
<eq             { pet_horse_1 1 pet_horse_2 1 pet_horse_3 1 } 0 0 1 SELLABLE pet>
<eq             pet_packhorse 0 0 1 SELLABLE pet>
<eq             pet_packllama 0 0 1 SELLABLE pet>
<eq             pet_dog 0 0 1 SELLABLE pet>
<eq             pet_cat 0 0 1 SELLABLE pet>
<eq             folded_cloth_1 0 0 1 BUYABLE>
<eq             folded_cloth_2 0 0 1 BUYABLE>
<eq             folded_cloth_3 0 0 1 BUYABLE>
<eq             folded_cloth_4 0 0 1 BUYABLE>
<eq             bandage 0 0 1 BUYABLE>
<eq             bandage_2 0 0 1 BUYABLE>
<eq             bundle_of_grain 0 0 1 BUYABLE>
<eq             apple 0 0 1 BUYABLE>
<eq             carrot_obj 0 0 1 BUYABLE>
<eq             head_of_lettuce 0 0 1 BUYABLE>
<eq             raw_ribs 0 0 1 BUYABLE>
<eq             raw_bird 0 0 1 BUYABLE>
<eq             beef_carcass 0 0 1 BUYABLE>
<eq             beef_carcass_2 0 0 1 BUYABLE>
<eq             other_carcass 0 0 1 BUYABLE>
<eq             other_carcass_2 0 0 1 BUYABLE>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<1052>
# Bard GuildMistress 
<type         NORMAL 401>
<frequency    100>
<region       BARDGUILD>
<regionlimit  { BARDGUILD 1 } >
<job          bardic guildmistress>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 11>
<script       human>
<script       gm>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_BARD>
<convfrag     BRITANNIA_GUILDMASTER>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !10d5+25>
<strength     1d15+85>
<dexterity    1d15+70>
<intelligence 1d15+60>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+625>
<sk           skill_magic_defense  25d10+625>
<sk           skill_battle_defense 25d10+625>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_play           25d10+525>
<sk           skill_incite         25d10+525>
<sk           skill_entice         25d10+525>
<sk           skill_calm           25d10+525>
<eq           female_hair all_hair_colors 1>
<eq           plain_shirt all_colors 1>
<eq           skirt all_colors 1>
<eq           plain_shoes neutral_colors 1>
<eq           random_instrument 0 0 1 SELFCONTAINED>
<eq           random_coin_purse 0 0 1>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<1053>
# Blacksmith 
<type         SHOPKEEPER 401>
<frequency    100>
<region       BLACKSMITH>
<regionlimit  { BLACKSMITH 1 } >
<job          blacksmith>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_BLACKSMITH>
<convfrag     BRITANNIA_WEAPONSMITH>
<convfrag     BRITANNIA_ARMOURER>
<convfrag     BRITANNIA_SHOPKEEPER>
<convfrag     BRITANNIA_MERCHANT_GREETING>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+85>
<dexterity    1d15+65>
<intelligence 1d15+60>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           25d10+525>
<sk           skill_magic_defense   25d10+525>
<sk           skill_battle_defense  25d10+525>
<sk           skill_weapon_slashing 25d10+425>
<sk           skill_weapon_bashing  25d10+425>
<sk           skill_weapon_piercing 25d10+425>
<sk           skill_weapon_hand     25d10+425>
<sk           skill_armslore        25d10+425>
<sk           skill_blacksmith      25d10+625>
<eq           female_hair all_hair_colors 1>
<eq           plain_shirt all_colors 1>
<eq           skirt all_colors 1>
<eq           full_apron black_colors 1>
<eq           random_weapon 0 0 1>
<eq           random_coin_purse 0 0 1>
<eq             all_shields 0 0 1 NONE>
<eq             metal_goods 0 0 1 NONE>
<eq             bladed_weapons 0 0 1 NONE>
<eq             blunt_weapons 0 0 1 NONE>
<eq             iron_ingot 0 0 1 SELLABLE>
<eq             tongs 0 0 1 SELLABLE>
<eq             armorer_purchases 0 0 1 NONE>
<eq             kindling 0 0 1 BUYABLE>
<eq             lumber 0 0 1 BUYABLE>
<eq             iron_ingot 0 0 1 BUYABLE>
<eq             lumber 0 0 1 BUYABLE>
<eq             tongs 0 0 1 BUYABLE>
<eq             tongs_2 0 0 1 BUYABLE>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<resource     desire      1  2    METAL>
<@@@ END @@@>
<1054>
# Warrior 
<type         NORMAL 401>
<frequency    100>
<region       { FIGHTER 0 CITY 0 DUELPIT 0 } >
<regionlimit  { FIGHTER 1 CITY 2 DUELPIT 5 } >
<job          fighter>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 2>
<objvar       int hirelingWages 7>
<script       human>
<script       pet>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_FIGHTER>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     10d8+8>
<dexterity    10d8+8>
<intelligence 6d7+7>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           25d10+425>
<sk           skill_magic_defense   25d10+425>
<sk           skill_battle_defense  25d10+425>
<sk           skill_weapon_slashing 25d10+425>
<sk           skill_weapon_bashing  25d10+425>
<sk           skill_weapon_piercing 25d10+425>
<sk           skill_weapon_hand     25d10+425>
<sk           skill_armslore        25d10+400>
<eq           female_hair all_hair_colors 1>
<eq           ring_chest 0 0 1>
<eq           ring_legs 0 0 1>
<eq           ring_arms 0 0 1>
<eq           ring_gloves 0 0 1>
<eq           chain_coif 0 0 1>
<eq           gorget 0 0 1>
<eq           wooden_shield 0 0 1>
<eq           broad_sword 0 0 1>
<eq           random_coin_purse 0 0 1>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<1055>
# Mercenary 
<type         NORMAL 401>
<frequency    100>
<region       { MERCENARY 0 FIGHTER 0 CITY 0 DUELPIT 0 } >
<regionlimit  { MERCENARY 1 FIGHTER 2 CITY 1 DUELPIT 5 } >
<job          fighter>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int hirelingWages 8>
<script       human>
<script       pet>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_FIGHTER>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     9d8+16>
<dexterity    9d8+16>
<intelligence 2d7+35>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           25d10+425>
<sk           skill_magic_defense   25d10+425>
<sk           skill_battle_defense  25d10+425>
<sk           skill_weapon_slashing 25d10+425>
<sk           skill_weapon_bashing  25d10+425>
<sk           skill_weapon_piercing 25d10+425>
<sk           skill_weapon_hand     25d10+425>
<sk           skill_armslore        25d10+400>
<eq           female_hair all_hair_colors 1>
<eq           random_chest_armor 0 0 1>
<eq           random_leg_armor 0 0 1>
<eq           random_gloves 0 0 1>
<eq           random_head_armor 0 0 1>
<eq           random_shield 0 0 1>
<eq           random_gorget 0 0 1>
<eq           random_weapon 0 0 1>
<eq           random_coin_purse 0 0 1>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<1056>
# Fighter 
<type         NORMAL 401>
<frequency    100>
<region       { CITY 0 DUELPIT 0 FIGHTERSMALL 0 FIGHTERMEDIUM 0 FIGHTERLARGE 0 FIGHTER 0 } >
<regionlimit  { CITY 2 DUELPIT 5 FIGHTERSMALL 2 FIGHTERMEDIUM 4 FIGHTERLARGE 6 FIGHTER 1 } >
<job          fighter>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 2>
<objvar       int hirelingWages 6>
<script       human>
<script       pet>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_FIGHTER>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     11d8>
<dexterity    11d8>
<intelligence 7d7>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           25d10+425>
<sk           skill_magic_defense   25d10+425>
<sk           skill_battle_defense  25d10+425>
<sk           skill_weapon_slashing 25d10+425>
<sk           skill_weapon_bashing  25d10+425>
<sk           skill_weapon_piercing 25d10+425>
<sk           skill_weapon_hand     25d10+425>
<sk           skill_armslore        25d10+400>
<eq           female_hair all_hair_colors 1>
<eq           studded_chest 0 0 1>
<eq           studded_legs 0 0 1>
<eq           studded_arms 0 0 1>
<eq           studded_gloves 0 0 1>
<eq           random_head_armor 0 0 1>
<eq           wooden_shield 0 0 1>
<eq           studded_gorget 0 0 1>
<eq           random_axe 0 0 1>
<eq           random_coin_purse 0 0 1>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<1057>
# Actor 
<type         NORMAL 401>
<frequency    100>
<region       { THEATER 0 CITY 0 } >
<regionlimit  { THEATER 3 CITY 1 } >
<job          actor>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_ACTOR>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+20>
<dexterity    1d15+25>
<intelligence 1d15+25>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+125>
<sk           skill_magic_defense  25d10+125>
<sk           skill_battle_defense 25d10+125>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<eq           female_hair all_hair_colors 1>
<eq           plain_shirt all_colors 1>
<eq           skirt all_colors 1>
<eq           random_shoes neutral_colors 1>
<eq           random_coin_purse 0 0 1>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<1058>
# Mage GuildMaster  
<type         NORMAL 401>
<frequency    100>
<region       MAGEGUILD>
<regionlimit  { MAGEGUILD 1 } >
<job          mage guildmistress>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 1>
<objvar		    int spellCastersLevel 8>
<script       human>
<script       gm>
<script       spellai>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_GUILDMASTER>
<convfrag     BRITANNIA_MAGE>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !10d5+25>
<strength     1d15+90>
<dexterity    1d15+100>
<intelligence 1d15+115>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+725>
<sk           skill_magic_defense  25d10+725>
<sk           skill_battle_defense 25d10+725>
<sk           skill_weapon_slashing 25d10+725>
<sk           skill_weapon_bashing  25d10+725>
<sk           skill_weapon_piercing 25d10+725>
<sk           skill_weapon_hand     25d10+725>
<sk           skill_evaluate       25d10+525>
<sk		        skill_magic          1d150+850>
<sk           skill_inscribe       1d150+750>
<immunities   magic>
<eq           female_hair all_hair_colors 1>
<eq           robe blue_colors 1>
<eq           sandals 0 0 1>
<eq           random_coin_purse 0 0 1>
<eq           random_upper_scroll 0 0 1 SELFCONTAINED>
<eq           random_upper_scroll 0 0 1 SELFCONTAINED>
<resource     food         5  1    FOOD>
<resource     food         5  1    EGGS>
<resource     food         5  1    FRUIT>
<resource     food         5  1    FISH>
<resource     shelter      1  1    HOME>
<resource     shelter     16  0    HOUSES>
<resource     production   8  0    MEAT>
<resource     desire       1 -3    DANGER>
<resource     desire       1 -3    SPOOKINESS>
<resource     desire      10  2    GOLD>
<resource     desire       1  1    MAGIC>
<resource     desire      10  2    BONE>
<resource     desire      10  2    DAEMON_BONE>
<resource     desire      10  2    DIRT>
<resource     desire      10  2    DRAGON_BLOOD>
<resource     desire      10  2    MANDRAKE>
<resource     desire      10  2    INK>
<resource     desire      10  2    SERPENT_SCALES>
<resource     desire      10  2    SILK>
<resource     desire      10  2    SPIDER_SILK>
<resource     desire      10  2    SULPHEROUS ASH>
<resource     desire      10  2    BLACK_PEARL>
<resource     desire      10  2    BLOOD_MOSS>
<resource     desire      10  2    GARLIC>
<resource     desire      10  2    GINSENG>
<resource     desire      10  2    NIGHTSHADE>
<resource     desire      10  2    VOLCANIC ASH>
<@@@ END @@@>
<1059>
# Warrior GuildMaster 
<type         NORMAL 401>
<frequency    100>
<region       FIGHTERGUILD>
<regionlimit  { FIGHTERGUILD 1 } >
<job          warrior's guildmistress>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 2>
<script       human>
<script       gm>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_GUILDMASTER>
<convfrag     BRITANNIA_FIGHTER>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !10d5+25>
<strength     1d15+95>
<dexterity    1d15+90>
<intelligence 1d15+80>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           25d10+725>
<sk           skill_magic_defense   25d10+625>
<sk           skill_battle_defense  25d10+725>
<sk           skill_weapon_slashing 25d10+625>
<sk           skill_weapon_bashing  25d10+625>
<sk           skill_weapon_piercing 25d10+525>
<sk           skill_weapon_hand     25d10+525>
<sk           skill_armslore        25d10+525>
<immunities   slashing>
<immunities   piercing>
<immunities   bashing>
<eq           female_hair all_hair_colors 1>
<eq           plate_chest 0 0 1>
<eq           plate_legs 0 0 1>
<eq           plate_arms 0 0 1>
<eq           plate_gloves 0 0 1>
<eq           random_head_armor 0 0 1>
<eq           random_over_armor all_colors 1>
<eq           gorget 0 0 1>
<eq           double_new_axe 0 0 1>
<eq           random_coin_purse 0 0 1>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<1060>
# Thief GuildMaster 
<type         NORMAL 401>
<frequency    100>
<region       THIEVESGUILD >
<regionlimit  { THIEVESGUILD 1 } >
<job          thief guildmistress>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 3>
<script       human>
<script       thief>
<script       gm>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_THIEF>
<convfrag     BRITANNIA_GUILDMASTER>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !10d5+25>
<strength     1d15+90>
<dexterity    1d15+90>
<intelligence 1d15+90>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           25d10+725>
<sk           skill_magic_defense   25d10+625>
<sk           skill_battle_defense  25d10+725>
<sk           skill_weapon_slashing 25d10+525>
<sk           skill_weapon_bashing  25d10+425>
<sk           skill_weapon_piercing 25d10+725>
<sk           skill_weapon_hand     25d10+525>
<sk           skill_poisoning       25d10+625>
<sk           skill_locksmith       25d10+625>
<sk           skill_hide            25d10+625>
<sk           skill_detect_hidden   25d10+525>
<sk           skill_peek            25d10+625>
<sk           skill_steal           25d10+625>
<sk           skill_remove_trap     25d10+625>
<immunities   poison>
<immunities   piercing>
<eq           female_hair all_hair_colors 1>
<eq           fancy_shirt all_colors 1>
<eq           skirt all_colors 1>
<eq           dagger_1 0 0 1>
<eq           random_coin_purse 0 0 1>
<eq           lockpick 0 0 1 SELFCONTAINED>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<1061>
# Ranger GuildMaster 
<type         NORMAL 401>
<frequency    100>
<region       RANGERGUILD>
<regionlimit  { RANGERGUILD 1 } >
<job          ranger guildmistress>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 4>
<script       human>
<script       gm>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_RANGER>
<convfrag     BRITANNIA_GUILDMASTER>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !10d5+25>
<strength     1d15+90>
<dexterity    1d15+95>
<intelligence 1d15+80>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           25d10+725>
<sk           skill_magic_defense   25d10+725>
<sk           skill_battle_defense  25d10+725>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_ranged_weapons  25d10+725>
<sk           skill_hide            25d10+625>
<sk           skill_camping         25d10+625>
<sk           skill_animal_lore     25d10+625>
<sk           skill_herding         25d10+525>
<sk           skill_tracking        25d10+625>
<immunities   ranged>
<eq           female_hair all_hair_colors 1>
<eq           fancy_shirt green_colors 1>
<eq           skirt brown_colors 1>
<eq           random_coin_purse 0 0 1>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter    64  1    FOREST>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<1062>
# Healer GuildMaster 
<type         NORMAL 401>
<frequency    100>
<region       HEALER>
<regionlimit  { HEALER 1 } >
<job          healer guildmistress>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 5>
<script       human>
<script       gm>
<script       healer>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_HEALER>
<convfrag     BRITANNIA_GUILDMASTER>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !10d5+25>
<strength     1d15+80>
<dexterity    1d15+95>
<intelligence 1d15+95>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           25d10+625>
<sk           skill_magic_defense   25d10+625>
<sk           skill_battle_defense  25d10+625>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_first_aid       25d10+625>
<sk           skill_anatomy         25d10+625>
<sk           skill_seance          25d10+625>
<sk           skill_forensics       25d10+425>
<resistances  slashing>
<resistances  piercing>
<resistances  bashing>
<resistances  ranged>
<resistances  poison>
<resistances  magic>
<resistances  fire>
<resistances  lightning>
<resistances  ice>
<eq           female_hair all_hair_colors 1>
<eq           robe yellow_colors 1>
<eq           sandals 0 0 1>
<eq           random_coin_purse 0 0 1>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<1063>
# Miner GuildMaster 
<type         NORMAL 401>
<frequency    100>
<region       { MINERSGUILD 0 MINEGUILD 0 } >
<regionlimit  { MINERSGUILD 1 MINEGUILD 1 } >
<job          miner guildmistress>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 6>
<script       human>
<script       gm>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_MINER>
<convfrag     BRITANNIA_GUILDMASTER>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !10d5+25>
<strength     1d15+85>
<dexterity    1d15+60>
<intelligence 1d15+70>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_mining          25d10+725>
<sk           skill_melee           25d10+625>
<sk           skill_magic_defense   25d10+625>
<sk           skill_battle_defense  25d10+625>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_appraise        25d10+625>
<eq           female_hair all_hair_colors 1>
<eq           fancy_shirt grey_colors 1>
<eq           skirt brown_colors 1>
<eq           black_boots neutral_colors 1>
<eq           random_coin_purse 0 0 1>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<1064>
# Merchant GuildMaster 
<type         NORMAL 401>
<frequency    100>
<region       MERCHANTGUILD>
<regionlimit  { MERCHANTGUILD 1 } >
<job          merchant guildmistress>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 7>
<script       human>
<script       gm>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_PROVISIONER>
<convfrag     BRITANNIA_GUILDMASTER>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !10d5+25>
<strength     1d15+70>
<dexterity    1d15+85>
<intelligence 1d15+85>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+250>
<sk           skill_magic_defense  25d10+250>
<sk           skill_battle_defense 25d10+250>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_appraise       25d10+525>
<eq           female_hair all_hair_colors 1>
<eq           fancy_shirt all_colors 1>
<eq           skirt all_colors 1>
<eq           plain_shoes neutral_colors 1>
<eq           random_coin_purse 0 0 1>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<1065>
# Tinker GuildMaster 
<type         NORMAL 401>
<frequency    100>
<region       TINKERGUILD>
<regionlimit  { TINKERGUILD 1 } >
<job          tinker guildmistress>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 8>
<script       human>
<script       gm>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_TINKER>
<convfrag     BRITANNIA_GUILDMASTER>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !10d5+25>
<strength     1d15+70>
<dexterity    1d15+85>
<intelligence 1d15+85>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+625>
<sk           skill_magic_defense  25d10+525>
<sk           skill_battle_defense 25d10+625>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_tinker         25d10+625>
<sk           skill_locksmith      25d10+625>
<sk           skill_remove_trap    25d10+625>
<eq           female_hair all_hair_colors 1>
<eq           fancy_shirt orange_colors 1>
<eq           skirt black_colors 1>
<eq           plain_shoes neutral_colors 1>
<eq           random_coin_purse 0 0 1>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<1067>
# Fishing GuildMaster 
<type         NORMAL 401>
<frequency    100>
<region       FISHERGUILD>
<regionlimit  { FISHERGUILD 1 } >
<job          fisher guildmistress>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 10>
<script       human>
<script       gm>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_FISHER>
<convfrag     BRITANNIA_GUILDMASTER>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !10d5+25>
<strength     1d15+80>
<dexterity    1d15+85>
<intelligence 1d15+80>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+625>
<sk           skill_magic_defense  25d10+625>
<sk           skill_battle_defense 25d10+525>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_fishing        25d10+625>
<eq           female_hair all_hair_colors 1>
<eq           fancy_shirt blue_colors 1>
<eq           skirt green_colors 1>
<eq           black_boots neutral_colors 1>
<eq           random_coin_purse 0 0 1>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<1068>
# Magincia Council Member 
<type         NORMAL 401>
<frequency    100>
<region       CITY_MAGINCIA>
<regionlimit  { CITY_MAGINCIA 9 } >
<job          councilmember>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_M_PARLIAMENT>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !20d4+20>
<strength     1d15+40>
<dexterity    1d15+40>
<intelligence 1d15+40>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+225>
<sk           skill_magic_defense  25d10+225>
<sk           skill_battle_defense 25d10+225>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<eq           female_hair all_hair_colors 1>
<eq           fancy_shirt all_colors 1>
<eq           skirt all_colors 1>
<eq           sash_1 red_colors 1>
<eq           long_sword 0 0 1>
<eq           filthy_rich_backpack 0 0 1>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      3 -6    MEAT>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<resource     desire     10  1    NOTORIETY>
<@@@ END @@@>
<1069>
# Magincia Servant 
<type         NORMAL 401>
<frequency    100>
<region       CITY_MAGINCIA>
<regionlimit  { CITY_MAGINCIA 12 } >
<job          servant>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int hirelingWages 2>
<script       human>
<script       pet>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_M_SERVANT>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+15>
<dexterity    1d15+20>
<intelligence 1d15+25>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+125>
<sk           skill_magic_defense  25d10+125>
<sk           skill_battle_defense 25d10+125>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<eq           female_hair all_hair_colors 1>
<eq           plain_shirt all_colors 1>
<eq           skirt all_colors 1>
<eq           random_coin_purse 0 0 1>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      3 -6    MEAT>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<1070>
# Ocllo Cashual 
<type         SHOPKEEPER 401>
<frequency    100>
<region       MAGEGUILD_OCLLO>
<regionlimit  { MAGEGUILD_OCLLO 1 } >
<job          cashual>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int spellCastersLevel 1d2+6>
<script       human>
<script       spellai>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_CASHUAL>
<convfrag     BRITANNIA_SHOPKEEPER>
<convfrag     BRITANNIA_MERCHANT_GREETING>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+60>
<dexterity    1d15+70>
<intelligence 1d15+85>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+525>
<sk           skill_magic_defense  25d10+625>
<sk           skill_battle_defense 25d10+525>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_alchemy        25d10+525>
<sk           skill_taste          25d10+525>
<sk           skill_magic          1d150+850>
<sk           skill_inscribe       1d150+500>
<resistances  magic>
<eq           female_hair all_hair_colors 1>
<eq           robe red_colors 1>
<eq           sandals 0 0 1>
<eq           random_coin_purse 0 0 1>
<eq           random_upper_scroll 0 0 1 SELFCONTAINED>
<eq           random_upper_scroll 0 0 1 SELFCONTAINED>
<eq           { basic_mage 18 second_circle 13 third_circle 8 fourth_circle 3 } 0 0 1 NONE>
<resource     food         5  1    FOOD>
<resource     food         5  1    EGGS>
<resource     food         5  1    FRUIT>
<resource     food         5  1    FISH>
<resource     shelter      1  1    HOME>
<resource     shelter     16  0    HOUSES>
<resource     production   8  0    MEAT>
<resource     desire       1 -3    DANGER>
<resource     desire       1 -3    SPOOKINESS>
<resource     desire      10  2    GOLD>
<resource     desire       1  1    MAGIC>
<resource     desire      10  2    BONE>
<resource     desire      10  2    DAEMON_BONE>
<resource     desire      10  2    DIRT>
<resource     desire      10  2    DRAGON_BLOOD>
<resource     desire      10  2    MANDRAKE>
<resource     desire      10  2    INK>
<resource     desire      10  2    SERPENT_SCALES>
<resource     desire      10  2    SILK>
<resource     desire      10  2    SPIDER_SILK>
<resource     desire      10  2    SULPHEROUS ASH>
<resource     desire      10  2    BLACK_PEARL>
<resource     desire      10  2    BLOOD_MOSS>
<resource     desire      10  2    GARLIC>
<resource     desire      10  2    GINSENG>
<resource     desire      10  2    NIGHTSHADE>
<resource     desire      10  2    VOLCANIC ASH>
<@@@ END @@@>
<1071>
# Ocllo Priestess 
<type         NORMAL 401>
<frequency    100>
<region       CITY_OCLLO>
<regionlimit  { CITY_OCLLO 5 } >
<job          priest>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_O_PRIEST>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+40>
<dexterity    1d15+50>
<intelligence 1d15+60>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+325>
<sk           skill_magic_defense  25d10+325>
<sk           skill_battle_defense 25d10+325>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<eq           female_hair all_hair_colors 1>
<eq           robe grey_colors 1>
<eq           sandals 0 0 1>
<eq           random_coin_purse 0 0 1>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1  1    HOME>
<resource     shelter     16  0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<1072>
# Ocllo Runner  
<type         NORMAL 401>
<frequency    100>
<region       CITY_OCLLO>
<regionlimit  { CITY_OCLLO 3 } >
<job          runner>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_O_RUNNER>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+25>
<dexterity    1d15+30>
<intelligence 1d15+15>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+125>
<sk           skill_magic_defense  25d10+125>
<sk           skill_battle_defense 25d10+125>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<eq           female_hair all_hair_colors 1>
<eq           poor_shirt all_colors 1>
<eq           skirt all_colors 1>
<eq           sandals 0 0 1>
<eq           poor_backpack 0 0 1>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<1073>
# Prisoner 
<type         NORMAL 401>
<frequency    100>
<region       CELL>
<regionlimit  { CELL 1 } >
<job          prisoner>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_PRISONER>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+10>
<dexterity    1d15+10>
<intelligence 1d15+30>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+125>
<sk           skill_magic_defense  25d10+125>
<sk           skill_battle_defense 25d10+125>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<eq           female_hair all_hair_colors 1>
<eq           poor_shirt all_colors 1>
<eq           skirt all_colors 1>
<eq           poor_backpack 0 0 1>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<1074>
# Paladin 
<type         NORMAL 401>
<frequency    100>
<region       { PALADIN 0 CITY_TRINSIC 0 } >
<regionlimit  { PALADIN 6 CITY_TRINSIC 23 } >
<job          paladin>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 2>
<objvar       int hirelingWages 8>
<script       human>
<script       pet>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_PALADIN>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+35>
<strength     4d8+60>
<dexterity    6d8+40>
<intelligence 2d7+35>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           25d10+525>
<sk           skill_magic_defense   25d10+525>
<sk           skill_battle_defense  25d10+525>
<sk           skill_weapon_slashing 25d10+525>
<sk           skill_weapon_bashing  25d10+525>
<sk           skill_weapon_piercing 25d10+525>
<sk           skill_weapon_hand     25d10+525>
<sk           skill_armslore        25d10+500>
<eq           female_hair all_hair_colors 1>
<eq           plate_chest 0 0 1>
<eq           plate_legs 0 0 1>
<eq           plate_arms 0 0 1>
<eq           plate_gloves 0 0 1>
<eq           gorget 0 0 1>
<eq           random_helmet 0 0 1>
<eq           random_over_armor all_colors 1>
<eq           heater_shield_1 all_colors 1>
<eq           viking_sword 0 0 1>
<eq           random_boots 0 0 1>
<eq           random_coin_purse 0 0 1>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<1075>
# Ranger  
<type         NORMAL 401>
<frequency    100>
<region       { RANGER 0 } >
<regionlimit  { RANGER 3 } >
<job          ranger>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 4>
<objvar       int hirelingWages 7>
<script       human>
<script       pet>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_RANGER>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+70>
<dexterity    1d15+75>
<intelligence 1d15+60>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           25d10+625>
<sk           skill_magic_defense   25d10+625>
<sk           skill_battle_defense  25d10+625>
<sk           skill_weapon_slashing 25d10+325>
<sk           skill_weapon_bashing  25d10+325>
<sk           skill_weapon_piercing 25d10+325>
<sk           skill_weapon_hand     25d10+325>
<sk           skill_ranged_weapons  25d10+525>
<sk           skill_hide            25d10+425>
<sk           skill_camping         25d10+525>
<sk           skill_animal_lore     25d10+525>
<sk           skill_herding         25d10+425>
<sk           skill_tracking        25d10+425>
<resistances  ranged>
<eq           female_hair all_hair_colors 1>
<eq           plain_shirt green_colors 1>
<eq           skirt brown_colors 1>
<eq           random_coin_purse 0 0 1>
<eq           bow 0 0 1>
<eq           arrows 0 0 40 SELFCONTAINED>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter    64  1    FOREST>
<resource     shelter     1  1    FOLIAGE>
<resource     shelter    16  0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<1076>
# Mage (non-shopkeeper)
<type         NORMAL 401>
<frequency    100>
<region       { CITY 0 } >
<regionlimit  { CITY 3 } >
<job          mage>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 1>
<objvar       int hirelingWages 6>
<objvar       int spellCastersLevel 1d2+6>
<script       human>
<script       spellai>
<script       pet>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_MAGE>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+60>
<dexterity    1d15+70>
<intelligence 1d15+85>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+525>
<sk           skill_magic_defense  25d10+625>
<sk           skill_battle_defense 25d10+525>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_magic          1d150+850>
<sk           skill_inscribe       1d150+500>
<resistances  magic>
<eq           female_hair all_hair_colors 1>
<eq           robe all_colors 1>
<eq           random_coin_purse 0 0 1>
<resource     food         5  1    FOOD>
<resource     food         5  1    EGGS>
<resource     food         5  1    FRUIT>
<resource     food         5  1    FISH>
<resource     shelter      1  1    HOME>
<resource     shelter     16  0    HOUSES>
<resource     production   8  0    MEAT>
<resource     desire       1 -3    DANGER>
<resource     desire       1 -3    SPOOKINESS>
<resource     desire      10  2    GOLD>
<resource     desire       1  1    MAGIC>
<resource     desire      10  2    MANDRAKE>
<resource     desire      10  2    SPIDER_SILK>
<resource     desire      10  2    SULPHEROUS ASH>
<resource     desire      10  2    BLACK_PEARL>
<resource     desire      10  2    BLOOD_MOSS>
<resource     desire      10  2    GARLIC>
<resource     desire      10  2    GINSENG>
<resource     desire      10  2    NIGHTSHADE>
<@@@ END @@@>
<1077>
#  Beekeeper 
<type         SHOPKEEPER 401>
<frequency    100>
<region       BEEKEEPER>
<regionlimit	{ BEEKEEPER 1 } >
<job          beekeeper>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_BEEKEEPER>
<convfrag     BRITANNIA_SHOPKEEPER>
<convfrag     BRITANNIA_MERCHANT_GREETING>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+20>
<dexterity    1d15+35>
<intelligence 1d15+35>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+125>
<sk           skill_magic_defense  25d10+125>
<sk           skill_battle_defense 25d10+125>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<eq           female_hair all_hair_colors 1>
<eq           plain_shirt all_colors 1>
<eq           skirt all_colors 1>
<eq           black_boots neutral_colors 1>
<eq           random_coin_purse 0 0 1>
<eq             honey_obj 0 0 1 SELLABLE>
<eq             honey_obj 0 0 1 BUYABLE>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<resource     desire      1  1    BEEHIVES>
<resource     desire      1  1    HONEY>
<@@@ END @@@>
<1078>
# Shepherdess 
<type         SHOPKEEPER 401>
<frequency    100>
<region       SHEEP>
<regionlimit  { SHEEP 1 } >
<job          shepherd>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_SHEPHERD>
<convfrag     BRITANNIA_MERCHANT_GREETING>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+50>
<dexterity    1d15+40>
<intelligence 1d15+30>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           25d10+225>
<sk           skill_magic_defense   25d10+225>
<sk           skill_battle_defense  25d10+225>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_camping         25d10+525>
<sk           skill_herding         25d10+525>
<eq           female_hair all_hair_colors 1>
<eq           poor_shirt all_colors 1>
<eq           skirt all_colors 1>
<eq           bumpkin_straw_hat neutral_colors 1>
<eq           random_boots 0 0 1>
<eq           shepherd_crook 0 0 1>
<eq           random_coin_purse 0 0 1>
<eq             raw_wool 0 0 1 SELLABLE>
<eq             sheperds_crook 0 0 1 SELLABLE>
<eq             hay 0 0 1 BUYABLE>
<eq             loaf_bread_1 0 0 1 BUYABLE>
<eq             loaf_bread_2 0 0 1 BUYABLE>
<eq             french_bread 0 0 1 BUYABLE>
<eq             cookie_plate 0 0 1 BUYABLE>
<eq             baked_pie 0 0 1 BUYABLE>
<eq             cake 0 0 1 BUYABLE>
<eq             muffin 0 0 1 BUYABLE>
<eq             cheese 0 0 1 BUYABLE>
<eq             cooked_bird 0 0 1 BUYABLE>
<eq             cooked_ribs 0 0 1 BUYABLE>
<eq             cooked_mutton 0 0 1 BUYABLE>
<eq             cooked_chick_leg 0 0 1 BUYABLE>
<eq             bowl_carrots 0 0 1 BUYABLE>
<eq             bowl_corn 0 0 1 BUYABLE>
<eq             bowl_lettuce 0 0 1 BUYABLE>
<eq             bowl_peas 0 0 1 BUYABLE>
<eq             bowl_potatoes 0 0 1 BUYABLE>
<eq             bowl_stew 0 0 1 BUYABLE>
<eq             bowl_tomato_soup 0 0 1 BUYABLE>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter    16  1    GRASS>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    SHEEP>
<@@@ END @@@>
<1079>
# Fur Trader
<type         SHOPKEEPER 401>
<frequency    100>
<region       { FURRIER 0 FURTRADER 0 TANNER 0 } >
<regionlimit  { FURRIER 1 FURTRADER 1 TANNER 1 } >
<job          furtrader>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_FUR_TRADER>
<convfrag     BRITANNIA_SHOPKEEPER>
<convfrag     BRITANNIA_MERCHANT_GREETING>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+65>
<dexterity    1d15+50>
<intelligence 1d15+40>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+525>
<sk           skill_magic_defense  25d10+525>
<sk           skill_battle_defense 25d10+425>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_animal_lore    25d10+625>
<sk           skill_camping        25d10+525>
<eq           female_hair all_hair_colors 1>
<eq           plain_shirt brown_colors 1>
<eq           skirt black_colors 1>
<eq           random_boots 0 0 1>
<eq           skinning_knife 0 0 1>
<eq           random_coin_purse 0 0 1>
<eq             pile_hides 0 0 1 SELLABLE>
<eq             skinning_knife 0 0 1>
<eq             pile_hides 0 0 1 BUYABLE>
<eq             pile_hides_2 0 0 1 BUYABLE>
<eq             llama_hides 0 0 1 BUYABLE>
<eq             llama_hides_2 0 0 1 BUYABLE>
<eq             llama_hides_3 0 0 1 BUYABLE>
<eq             llama_hides_4 0 0 1 BUYABLE>
<eq             llama_hides_5 0 0 1 BUYABLE>
<eq             llama_hides_6 0 0 1 BUYABLE>
<eq             llama_hides_7 0 0 1 BUYABLE>
<eq             llama_hides_8 0 0 1 BUYABLE>
<eq             llama_hides_9 0 0 1 BUYABLE>
<eq             loaf_bread_1 0 0 1 BUYABLE>
<eq             loaf_bread_2 0 0 1 BUYABLE>
<eq             french_bread 0 0 1 BUYABLE>
<eq             cookie_plate 0 0 1 BUYABLE>
<eq             baked_pie 0 0 1 BUYABLE>
<eq             cake 0 0 1 BUYABLE>
<eq             muffin 0 0 1 BUYABLE>
<eq             cheese 0 0 1 BUYABLE>
<eq             cooked_bird 0 0 1 BUYABLE>
<eq             cooked_ribs 0 0 1 BUYABLE>
<eq             cooked_mutton 0 0 1 BUYABLE>
<eq             cooked_chick_leg 0 0 1 BUYABLE>
<eq             bowl_carrots 0 0 1 BUYABLE>
<eq             bowl_corn 0 0 1 BUYABLE>
<eq             bowl_lettuce 0 0 1 BUYABLE>
<eq             bowl_peas 0 0 1 BUYABLE>
<eq             bowl_potatoes 0 0 1 BUYABLE>
<eq             bowl_stew 0 0 1 BUYABLE>
<eq             bowl_tomato_soup 0 0 1 BUYABLE>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter    16  1    FOLIAGE>
<resource     shelter    32  1    FOREST>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<resource     desire      1  1    FUR>
<@@@ END @@@>
<1080>
# Banker 
<type         NORMAL 401>
<frequency    100>
<region       BANK>
<regionlimit  { BANK 1 } >
<job          banker>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<script       banker>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_BANKER>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+70>
<dexterity    1d15+65>
<intelligence 1d15+65>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+425>
<sk           skill_magic_defense  25d10+425>
<sk           skill_battle_defense 25d10+425>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<eq           female_hair all_hair_colors 1>
<eq           plain_shirt all_colors 1>
<eq           skirt all_colors 1>
<eq           plain_shoes neutral_colors 1>
<eq           random_coin_purse 0 0 1>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<1081>
# Healer (non-shopkeeper)
<type         NORMAL 401>
<frequency    100>
<region       { CITY 0 WANDHEAL 0 FORESTNOTNEARTOWN 0 DARKFOREST 0 DARKERFOREST 0 NEWBIE 0 } >
<regionlimit  { CITY 1 WANDHEAL 5 FORESTNOTNEARTOWN 5 DARKFOREST 1 DARKERFOREST 1 NEWBIE 5 } >
<job          wandering healer>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 5>
<script       human>
<script       healer>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_WANDERHEALER>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !127d1>
<strength     1d15+70>
<dexterity    1d15+80>
<intelligence 1d15+85>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           25d10+625>
<sk           skill_magic_defense   25d10+625>
<sk           skill_battle_defense  25d10+625>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_first_aid       25d10+525>
<sk           skill_anatomy         25d10+525>
<sk           skill_seance          25d10+525>
<sk           skill_forensics       25d10+325>
<sk           skill_camping         25d10+325>
<sk           skill_fishing         25d10+325>
<resistances  slashing>
<resistances  piercing>
<resistances  bashing>
<resistances  ranged>
<resistances  poison>
<resistances  magic>
<resistances  fire>
<resistances  lightning>
<resistances  ice>
<eq           female_hair all_hair_colors 1>
<eq           robe yellow_colors 1>
<eq           sandals 0 0 1>
<eq           random_coin_purse 0 0 1>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter     1  1    FOLIAGE>
<resource     shelter    16  0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<1082>
# Veggie Seller 
<type         SHOPKEEPER 401>
<frequency    100>
<region       VEGGIESTALL>
<regionlimit  { VEGGIESTALL 1 } >
<job          farmer>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_SHOPKEEPER>
<convfrag     BRITANNIA_MERCHANT_GREETING>
<convfrag     BRITANNIA_FARMER>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+50>
<dexterity    1d15+40>
<intelligence 1d15+30>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           25d10+225>
<sk           skill_magic_defense   25d10+225>
<sk           skill_battle_defense  25d10+225>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_animal_lore     25d10+325>
<sk           skill_vet             25d10+325>
<sk           skill_herding         25d10+325>
<eq           female_hair all_hair_colors 1>
<eq           poor_shirt all_colors 1>
<eq           skirt all_colors 1>
<eq           bumpkin_straw_hat neutral_colors 1>
<eq           random_boots 0 0 1>
<eq           random_coin_purse 0 0 1>
<eq             head_of_cabbage 0 0 1 SELLABLE>
<eq             cantelope 0 0 1 SELLABLE>
<eq             carrot_obj 0 0 1 SELLABLE>
<eq             melon 0 0 1 SELLABLE>
<eq             squash 0 0 1 SELLABLE>
<eq             head_of_lettuce 0 0 1 SELLABLE>
<eq             onion_obj 0 0 1 SELLABLE>
<eq             pumpkin 0 0 1 SELLABLE>
<eq             gourd_1 0 0 1 SELLABLE>
<eq             gourd_2 0 0 1 SELLABLE>
<eq             turnip_1 0 0 1 SELLABLE>
<eq             watermelon 0 0 1 SELLABLE>
<eq             corn 0 0 1 SELLABLE>
<eq             fresh_eggs 0 0 1 SELLABLE>
<eq             milk_pitcher 0 0 1 SELLABLE>
<eq             peach 0 0 1 SELLABLE>
<eq             pear 0 0 1 SELLABLE>
<eq             lemon 0 0 1 SELLABLE>
<eq             lime 0 0 1 SELLABLE>
<eq             grapes 0 0 1 SELLABLE>
<eq             apple 0 0 1 SELLABLE>
<eq             bundle_of_grain 0 0 1 SELLABLE>
<eq             head_of_cabbage 0 0 1 BUYABLE>
<eq             cantelope 0 0 1 BUYABLE>
<eq             carrot_obj 0 0 1 BUYABLE>
<eq             melon 0 0 1 BUYABLE>
<eq             squash 0 0 1 BUYABLE>
<eq             head_of_lettuce 0 0 1 BUYABLE>
<eq             onion_obj 0 0 1 BUYABLE>
<eq             pumpkin 0 0 1 BUYABLE>
<eq             gourd_1 0 0 1 BUYABLE>
<eq             gourd_2 0 0 1 BUYABLE>
<eq             turnip_1 0 0 1 BUYABLE>
<eq             watermelon 0 0 1 BUYABLE>
<eq             corn 0 0 1 BUYABLE>
<eq             fresh_eggs 0 0 1 BUYABLE>
<eq             milk_pitcher 0 0 1 BUYABLE>
<eq             peach 0 0 1 BUYABLE>
<eq             pear 0 0 1 BUYABLE>
<eq             lemon 0 0 1 BUYABLE>
<eq             lime 0 0 1 BUYABLE>
<eq             grapes 0 0 1 BUYABLE>
<eq             apple 0 0 1 BUYABLE>
<eq             bundle_of_grain 0 0 1 BUYABLE>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<1083>
# Blackthorn Guard
<type         GUARD 401>
<frequency    100>
<region       { BLACKTHORN 0 BLACKTHORNGUARD 0 } >
<regionlimit  { BLACKTHORN 3 BLACKTHORNGUARD 1 } >
<job          guard>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<script       cityguard>
<script       btguard>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_GUARD>
<strength     9000>
<dexterity    9000>
<intelligence 9000>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    GOOD>
<attitude     1d41-21>
<notoriety    100d1>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           1d100+900>
<sk           skill_magic_defense   1d100+900>
<sk           skill_battle_defense  1d100+900>
<sk           skill_weapon_slashing 1d100+900>
<sk           skill_weapon_bashing  1d100+900>
<sk           skill_weapon_piercing 1d100+900>
<sk           skill_weapon_hand     1d100+900>
<sk           skill_detect_hidden   1d100+900>
<sk           skill_forensics       1d100+900>
<immunities   slashing>
<immunities   piercing>
<immunities   bashing>
<immunities   ranged>
<immunities   poison>
<immunities   magic>
<immunities   fire>
<immunities   lightning>
<immunities   ice>
<eq           female_hair all_hair_colors 1>
<eq           plain_shirt all_colors 1>
<eq           skirt all_colors 1>
<eq           plate_chest 0 0 1>
<eq           plate_legs 0 0 1>
<eq           plate_arms 0 0 1>
<eq           random_over_armor red_colors 1>
<eq           viking_sword 0 0 1>
<eq           chaos_shield 0 0 1>
<eq           random_coin_purse 0 0 1>
<resource     shelter      5   1    GUARDPOST>
<resource     production   8   0    MEAT>
<resource     production   1   1    GUARD>
<resource     desire     -50  -1    NOTORIETY>
<resource     desire       5   1    GUARDPOST>
<@@@ END @@@>
<1084>
# LB Guard
<type         GUARD 401>
<frequency    100>
<region       { CITY_BRITAIN 0 LBCASTLEGUARD 0 LBCASTLE 0 } >
<regionlimit  { CITY_BRITAIN 4 LBCASTLEGUARD 2 LBCASTLE 2 } >
<job          guard>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<script       cityguard>
<script       lbguard>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_GUARD>
<strength     9000>
<dexterity    9000>
<intelligence 9000>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    GOOD>
<attitude     1d41-21>
<notoriety    100d1>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           1d100+900>
<sk           skill_magic_defense   1d100+900>
<sk           skill_battle_defense  1d100+900>
<sk           skill_weapon_slashing 1d100+900>
<sk           skill_weapon_bashing  1d100+900>
<sk           skill_weapon_piercing 1d100+900>
<sk           skill_weapon_hand     1d100+900>
<sk           skill_detect_hidden   1d100+900>
<sk           skill_forensics       1d100+900>
<immunities   slashing>
<immunities   piercing>
<immunities   bashing>
<immunities   ranged>
<immunities   poison>
<immunities   magic>
<immunities   fire>
<immunities   lightning>
<immunities   ice>
<eq           female_hair all_hair_colors 1>
<eq           plain_shirt all_colors 1>
<eq           skirt all_colors 1>
<eq           plate_chest 0 0 1>
<eq           plate_legs 0 0 1>
<eq           plate_arms 0 0 1>
<eq           random_over_armor blue_colors 1>
<eq           viking_sword 0 0 1>
<eq           lb_shield 0 0 1>
<eq           random_coin_purse 0 0 1>
<resource     shelter      5   1    GUARDPOST>
<resource     production   8   0    MEAT>
<resource     production   1   1    GUARD>
<resource     production   1   1    HUMANS>
<resource     desire     -50  -1    NOTORIETY>
<resource     desire       5   1    GUARDPOST>
<@@@ END @@@>
<1085>
# Harbor Master
<type         NORMAL 401>
<frequency    100>
<region       { DOCKS 0 } >
<regionlimit  { DOCKS 1 } >
<job          harbor master>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 10>
<script       human>
<script       gm>
<script       harbormaster>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+85>
<dexterity    1d15+65>
<intelligence 1d15+70>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+425>
<sk           skill_magic_defense  25d10+525>
<sk           skill_battle_defense 25d10+525>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<eq           hair all_hair_colors 1>
<eq           plain_shirt all_colors 1>
<eq           plain_pants all_colors 1>
<eq           random_boots 0 0 1>
<eq           quarter_staff 0 0 1>
<eq           random_coin_purse 0 0 1>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<1086>
#  Brigand 
<type         NORMAL 401>
<frequency    100>
<region       { BRIGANDSMALL 0 BRIGANDMEDIUM 0 BRIGANDLARGE 0 BRIGAND 0 } >
<regionlimit  { BRIGANDSMALL 2 BRIGANDMEDIUM 4 BRIGANDLARGE 6 BRIGAND 1 } >
<job          brigand>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<script       human>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_BRIGAND>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    2d15-77>
<strength     1d15+65>
<dexterity    1d15+80>
<intelligence 1d15+60>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           25d10+525>
<sk           skill_magic_defense   25d10+525>
<sk           skill_battle_defense  25d10+525>
<sk           skill_weapon_slashing 25d10+325>
<sk           skill_weapon_bashing  25d10+225>
<sk           skill_weapon_piercing 25d10+425>
<sk           skill_weapon_hand     25d10+325>
<sk           skill_poisoning       25d10+325>
<sk           skill_locksmith       25d10+325>
<sk           skill_hide            25d10+425>
<sk           skill_peek            25d10+325>
<sk           skill_steal           25d10+425>
<sk           skill_remove_trap     25d10+325>
<sk           skill_camping         25d10+425>
<resistances  piercing>
<eq           female_hair all_hair_colors 1>
<eq           poor_shirt all_colors 1>
<eq           skirt all_colors 1>
<eq           random_footwear 0 0 1>
<eq           random_weapon 0 0 1>
<eq           random_coin_purse 0 0 1>
<resource     food        5  1    FOOD>
<resource     food        5  1    EGGS>
<resource     food        5  1    FRUIT>
<resource     food        5  1    FISH>
<resource     shelter      1   1    HOME>
<resource     shelter     16   0    HOUSES>
<resource     production  8  0    MEAT>
<resource     desire      1 -3    DANGER>
<resource     desire      1 -3    SPOOKINESS>
<resource     desire     10  2    GOLD>
<@@@ END @@@>
<1087>
# Mage (non-shopkeeper)
<type         NORMAL 401>
<frequency    100>
<region       { WANDER_MAGE 0 WINDFOREST 0 } >
<regionlimit  { WANDER_MAGE 4 WINDFOREST 5 } >
<job          mage>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int guildMember 1>
<objvar       int hirelingWages 6>
<objvar       int spellCastersLevel 1d2+6>
<script       human>
<script       spellai>
<script       pet>
<convfrag     BRITANNIA_WIND>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_MAGE>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+60>
<dexterity    1d15+70>
<intelligence 1d15+85>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+525>
<sk           skill_magic_defense  25d10+625>
<sk           skill_battle_defense 25d10+525>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_magic          1d150+850>
<sk           skill_inscribe       1d150+500>
<resistances  magic>
<eq           female_hair all_hair_colors 1>
<eq           robe all_colors 1>
<eq           random_coin_purse 0 0 1>
<eq           sash all_colors 1>
<resource     food         5  1    FOOD>
<resource     food         5  1    EGGS>
<resource     food         5  1    FRUIT>
<resource     food         5  1    FISH>
<resource     shelter      1  1    HOME>
<resource     shelter     16  0    HOUSES>
<resource     production   8  0    MEAT>
<resource     desire       1 -3    DANGER>
<resource     desire       1 -3    SPOOKINESS>
<resource     desire      10  2    GOLD>
<resource     desire       1  1    MAGIC>
<resource     desire      10  2    MANDRAKE>
<resource     desire      10  2    SPIDER_SILK>
<resource     desire      10  2    SULPHEROUS ASH>
<resource     desire      10  2    BLACK_PEARL>
<resource     desire      10  2    BLOOD_MOSS>
<resource     desire      10  2    GARLIC>
<resource     desire      10  2    GINSENG>
<resource     desire      10  2    NIGHTSHADE>
<@@@ END @@@>
<1088>
#  Town Crier 
<type         NORMAL 401>
<frequency    100>
<region       CITY 0>
<regionlimit  CITY 1>
<job          town crier>
<sex          FEMALE>
<name         0>
<partialhue   all_skin_colors>
<script       towncrier>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<strength     9000>
<dexterity    9000>
<intelligence 9000>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     80d1>
<notoriety    127d1>
<hp           STR>
<mana         INT>
<stamina      0>
<movetype     MT_NONMOVER>
<sk           skill_melee           1d100+900>
<sk           skill_magic_defense   1d100+900>
<sk           skill_battle_defense  1d100+900>
<sk           skill_weapon_slashing 1d100+900>
<sk           skill_weapon_bashing  1d100+900>
<sk           skill_weapon_piercing 1d100+900>
<sk           skill_weapon_ranged   1d100+900>
<sk           skill_weapon_hand     1d100+900>
<sk           skill_detect_hidden   1d100+900>
<immunities   slashing>
<immunities   piercing>
<immunities   bashing>
<immunities   ranged>
<immunities   poison>
<immunities   magic>
<immunities   fire>
<immunities   lightning>
<immunities   ice>
<eq           hair all_hair_colors 1>
<eq           fancy_shirt blue_colors 1>
<eq           skirt green_colors 1>
<eq           turban green_colors 1>
<eq           random_boots 0 0 1>
<resource     shelter      5   1    GUARDPOST>
<resource     production   8   0    MEAT>
<resource     production   1   1    HUMANS>
<resource     desire       5   1    GUARDPOST>
<@@@ END @@@>
<1401>
# GemBit 1
<type           ITEM 7955>
<objvar string lookAtText "a greater shard of Astaroth">
<@@@ END @@@>
<1402>
# GemBit 2
<type           ITEM 7847>
<objvar string lookAtText "a lesser shard of Astaroth">
<@@@ END @@@>
<1403>
# GemBit 3
<type           ITEM 7955>
<objvar string lookAtText "a greater shard of Nosfentor">
<@@@ END @@@>
<1404>
# GemBit 4
<type           ITEM 7847>
<objvar string lookAtText "a lesser shard of Nosfentor">
<@@@ END @@@>
<1405>
# GemBit 5
<type           ITEM 7955>
<objvar string lookAtText "a greater shard of Faulinei">
<@@@ END @@@>
<1406>
# GemBit 6
<type           ITEM 7847>
<objvar string lookAtText "a lesser shard of Faulinei">
<@@@ END @@@>
<1407>
# First Halloween gravestone 
<type           ITEM 3797>
<objvar string lookAtText "One: 'Pon this eve the aether flows and dances madly in the air">
<objvar int overloadedWeight 255>
<@@@ END @@@>
<1408>
# First Halloween gravestone line two
<type           ITEM 3797>
<objvar string lookAtText "Two: The spirits rise and walk again and slaughter in the moon's red glare">
<objvar int overloadedWeight 255>
<@@@ END @@@>
<1409>
# First Halloween gravestone line three
<type           ITEM 3797>
<objvar string lookAtText "Three: Beware, ye men of mortal flesh, lest ghosts seize all thy lifespan's time">
<objvar int overloadedWeight 255>
<@@@ END @@@>
<1410>
# First Halloween gravestone line four 
<type           ITEM 3797>
<objvar string lookAtText "Four: For soon the night shall come and soon shall set the sun">
<objvar int overloadedWeight 255>
<@@@ END @@@>
<1411>
# First Halloween gravestone line five 
<type           ITEM 3797>
<objvar string lookAtText "Five: And soon shall rise the bones to walk and seek the magic sign...">
<objvar int overloadedWeight 255>
<@@@ END @@@>
<1412>
# Second Halloween gravestone line one 
<type           ITEM 3799>
<objvar string lookAtText "One: Soon the world shall split, and lives will lose their luster.">
<objvar int overloadedWeight 255>
<@@@ END @@@>
<1413>
# Second Halloween gravestone line two 
<type           ITEM 3799>
<objvar string lookAtText "Two: The cadavers shall rise from their restless aching sleep!">
<objvar int overloadedWeight 255>
<@@@ END @@@>
<1414>
# Second Halloween gravestone line three 
<type           ITEM 3799>
<objvar string lookAtText "Three: Soon shall monsters walk with bones broke all asunder,">
<objvar int overloadedWeight 255>
<@@@ END @@@>
<1415>
# Second Halloween gravestone line four 
<type           ITEM 3799>
<objvar string lookAtText "Four: For a magic sign doth dwell in caverns dark and deep!">
<objvar int overloadedWeight 255>
<@@@ END @@@>
<1416>
# Third Halloween gravestone line one 
<type           ITEM 4476>
<objvar string lookAtText "One: Where bones of land rise broken from the earth">
<objvar int overloadedWeight 255>
<@@@ END @@@>
<1417>
# Third Halloween gravestone line two 
<type           ITEM 4476>
<objvar string lookAtText "Two: And where the wind whistles 'til the rock itself speaks,">
<objvar int overloadedWeight 255>
<@@@ END @@@>
<1418>
# Third Halloween gravestone line 3 
<type           ITEM 4476>
<objvar string lookAtText "Three: By the sea, north of sandstone, south of swamp,">
<objvar int overloadedWeight 255>
<@@@ END @@@>
<1419>
# Third Halloween gravestone line 4 
<type           ITEM 4476>
<objvar string lookAtText "Four: A magic sign doth rest 'pon the smallest of peaks.">
<objvar int overloadedWeight 255>
<@@@ END @@@>
<1420>
# Fourth Halloween gravestone line 1 
<type           ITEM 4471>
<objvar string lookAtText "One: Some say a message floated in a corked and sunburnt bottle">
<objvar int overloadedWeight 255>
<@@@ END @@@>
<1421>
# Fourth Halloween gravestone line 2 
<type           ITEM 4471>
<objvar string lookAtText "Two: And washed ashore where fisherfolk found it with a smile--">
<objvar int overloadedWeight 255>
<@@@ END @@@>
<1422>
# Fourth Halloween gravestone line 3 
<type           ITEM 4471>
<objvar string lookAtText "Three: 'Til wounds did grow upon their flesh and disease did rot:">
<objvar int overloadedWeight 255>
<@@@ END @@@>
<1423>
# Fourth Halloween gravestone line 4 
<type           ITEM 4471>
<objvar string lookAtText "Four: A magic sign must live lonely lost upon a deserted isle.">
<objvar int overloadedWeight 255>
<@@@ END @@@>
<1424>
# Fifth Halloween gravestone line 1 
<type           ITEM 4466>
<objvar string lookAtText "One: Where swords were shattered and brothers fell">
<objvar int overloadedWeight 255>
<@@@ END @@@>
<1425>
# Fifth Halloween gravestone line 2 
<type           ITEM 4466>
<objvar string lookAtText "Two: In battles well divided">
<objvar int overloadedWeight 255>
<@@@ END @@@>
<1426>
# Fifth Halloween gravestone line 3 
<type           ITEM 4466>
<objvar string lookAtText "Three: Where naught can live save pride and sting">
<objvar int overloadedWeight 255>
<@@@ END @@@>
<1427>
# Fifth Halloween gravestone line 4 
<type           ITEM 4466>
<objvar string lookAtText "Four: And dry is air in hiding">
<objvar int overloadedWeight 255>
<@@@ END @@@>
<1428>
# Fifth Halloween gravestone line 5 
<type           ITEM 4466>
<objvar string lookAtText "Five: A magic sign is caught in sand and sun">
<objvar int overloadedWeight 255>
<@@@ END @@@>
<1429>
# Fifth Halloween gravestone line 6 
<type           ITEM 4466>
<objvar string lookAtText "Six: Where blood lays idle">
<objvar int overloadedWeight 255>
<@@@ END @@@>
<1430>
# Sixth Halloween gravestone line 1 
<type           ITEM 4461>
<objvar string lookAtText "One: Seek ye signs of shattered stones! Seek ye gatherings of glimmers!">
<objvar int overloadedWeight 255>
<@@@ END @@@>
<1431>
# Sixth Halloween gravestone line 2
<type           ITEM 4461>
<objvar string lookAtText "Two: For alas and alack and lo! they fall from heavens to tempt all the sinners...">
<objvar int overloadedWeight 255>
<@@@ END @@@>
<1432>
# Sixth Halloween gravestone line 3
<type           ITEM 4461>
<objvar string lookAtText "Three: Complete the prophecy to find the secret of the days to come">
<objvar int overloadedWeight 255>
<@@@ END @@@>
<1433>
# Sixth Halloween gravestone line 4
<type           ITEM 4461>
<objvar string lookAtText "Four: For runes and crystals whisper rhymes to frighten everyone...">
<objvar int overloadedWeight 255>
<@@@ END @@@>
<1434>
# Seventh Halloween gravestone line 1
<type           ITEM 4470>
<objvar string lookAtText "One: Hast thou heard the dead shall walk?">
<objvar int overloadedWeight 255>
<@@@ END @@@>
<1435>
# Seventh Halloween gravestone line 2
<type           ITEM 4470>
<objvar string lookAtText "Two: 'Tis prophesied here that castles fall.">
<objvar int overloadedWeight 255>
<@@@ END @@@>
<1436>
# Seventh Halloween gravestone line 3
<type           ITEM 4470>
<objvar string lookAtText "Three: When crystals shatter and magic gathers">
<objvar int overloadedWeight 255>
<@@@ END @@@>
<1437>
# Seventh Halloween gravestone line 4
<type           ITEM 4470>
<objvar string lookAtText "Four: And spirits make their ghastly call.">
<objvar int overloadedWeight 255>
<@@@ END @@@>
<1438>
# Magic Halloween crystal 1 
<type           ITEM 7955>
<objvar string lookAtText "One: Upon a day when snow doth fall">
<objvar int overloadedWeight 255>
<@@@ END @@@>
<1439>
# Magic Halloween crystal 2 
<type           ITEM 7955>
<objvar string lookAtText "Two: A gathering will form of noblemen">
<objvar int overloadedWeight 255>
<@@@ END @@@>
<1440>
# Magic Halloween crystal 3 
<type           ITEM 7955>
<objvar string lookAtText "Three: Among them some who quarrel still">
<objvar int overloadedWeight 255>
<@@@ END @@@>
<1441>
# Magic Halloween crystal 4 
<type           ITEM 7955>
<objvar string lookAtText "Four: Between free will and civil men">
<objvar int overloadedWeight 255>
<@@@ END @@@>
<1442>
# Magic Halloween crystal 5 
<type           ITEM 7847>
<objvar string lookAtText "Five: Whilst watched by mice and monsters both">
<objvar int overloadedWeight 255>
<@@@ END @@@>
<1443>
# Magic Halloween crystal 6 
<type           ITEM 7847>
<objvar string lookAtText "Six: A challenge shall be made">
<objvar int overloadedWeight 255>
<@@@ END @@@>
<1444>
# Magic Halloween crystal 7 
<type           ITEM 7847>
<objvar string lookAtText "Seven: That breaketh lances and severs growth">
<objvar int overloadedWeight 255>
<@@@ END @@@>
<1445>
# Magic Halloween crystal 8 
<type           ITEM 7847>
<objvar string lookAtText "Eight: And stains fair grass with hate">
<objvar int overloadedWeight 255>
<@@@ END @@@>
<1446>
# Magic Halloween rune 9 
<type           ITEM 3688>
<objvar string lookAtText "Nine: Someday perhaps shall reconcile">
<objvar int overloadedWeight 255>
<@@@ END @@@>
<1447>
# Magic Halloween rune 10 
<type           ITEM 3676>
<objvar string lookAtText "Ten: Two men whose hearts were once the same">
<objvar int overloadedWeight 255>
<@@@ END @@@>
<1448>
# Magic Halloween rune 11 
<type           ITEM 3679>
<objvar string lookAtText "Eleven: 'Til then the world shall tremble dire">
<objvar int overloadedWeight 255>
<@@@ END @@@>
<1449>
# Magic Halloween rune 12 
<type           ITEM 3682>
<objvar string lookAtText "Twelve: And none shall fix the blame...">
<objvar int overloadedWeight 255>
<@@@ END @@@>
<1470>
#Master Level Swordsman Advance Moongate 
<type           ITEM 3546>
<hue            250 255 1>
<objvar string lookAtText "Master Swordsman Moongate">
<objvar int setInt		50>
<objvar int setStr      	95>
<objvar int setDex      	80>
<objvar int setMaxHP		95>
<objvar int setMaxFatigue       80>
<objvar int setMaxMana          50>
<objvar int setSkill27 		940>
<objvar int setSkill40 		940>
<objvar int setSkill5 		940>
<objvar int setSkill21          450>
<objvar int setSkill26		500>
<objvar int putObject0 		101599>
<objvar int playerOnly    0>
<script set>
<@@@ END @@@>
<1471>
#Master Level Fencer Advance Moongate 
<type           ITEM 3546>
<hue            270 275 1>
<objvar string lookAtText "Master Fencer Moongate">
<objvar int setInt		50>
<objvar int setStr      	95>
<objvar int setDex      	80>
<objvar int setMaxHP		95>
<objvar int setMaxFatigue       80>
<objvar int setMaxMana          50>
<objvar int setSkill27 		940>
<objvar int setSkill42 		940>
<objvar int setSkill5 		940>
<objvar int setSkill21          450>
<objvar int setSkill26		500>
<objvar int putObject0 		101599>
<objvar int playerOnly    0>
<script set>
<@@@ END @@@>
<1472>
#Master Level Armsman Advance Moongate 
<type           ITEM 3546>
<hue            210 215 1>
<objvar string lookAtText "Master Armsman Moongate">
<objvar int setInt		50>
<objvar int setStr      	95>
<objvar int setDex      	80>
<objvar int setMaxHP		95>
<objvar int setMaxFatigue       80>
<objvar int setMaxMana          50>
<objvar int setSkill27 		940>
<objvar int setSkill41 		940>
<objvar int setSkill5 		940>
<objvar int setSkill21          450>
<objvar int setSkill26		500>
<objvar int putObject0 		101599>
<objvar int playerOnly    0>
<script set>
<@@@ END @@@>
<1473>
#Master Level Archer Advance Moongate 
<type           ITEM 3546>
<hue            220 225 1>
<objvar string lookAtText "Master Archer Moongate">
<objvar int setInt		50>
<objvar int setStr      	85>
<objvar int setDex      	90>
<objvar int setMaxHP		85>
<objvar int setMaxFatigue       90>
<objvar int setMaxMana          50>
<objvar int setSkill27 		940>
<objvar int setSkill31 		940>
<objvar int setSkill5 		940>
<objvar int setSkill21          450>
<objvar int setSkill26		500>
<objvar int putObject0 		101599>
<objvar int playerOnly    0>
<script set>
<@@@ END @@@>
<1474>
#Master Level Mage Advance Moongate 
<type           ITEM 3546>
<hue            1109 1109 1>
<objvar string lookAtText "Master Mage Moongate">
<objvar int setInt		95>
<objvar int setStr      	65>
<objvar int setDex      	65>
<objvar int setMaxHP		65>
<objvar int setMaxFatigue       65>
<objvar int setMaxMana          95>
<objvar int setSkill25 		940>
<objvar int setSkill23 		940>
<objvar int setSkill0 		940>
<objvar int setSkill21          450>
<objvar int setSkill26		800>
<objvar int putObject0 		101599>
<objvar int putObject1          103501>
<objvar int playerOnly    0>
<script set>
<@@@ END @@@>
<1475>
#Master Level Smith Advance Moongate 
<type           ITEM 3546>
<hue            10 15 1>
<objvar string lookAtText "Master Smith Moongate">
<objvar int setInt		50>
<objvar int setStr      	95>
<objvar int setDex      	80>
<objvar int setMaxHP		95>
<objvar int setMaxFatigue       80>
<objvar int setMaxMana          50>
<objvar int setSkill45 		940>
<objvar int setSkill7 		940>
<objvar int setSkill37 		940>
<objvar int setSkill21          450>
<objvar int setSkill26		500>
<objvar int putObject0 		101599>
<objvar int playerOnly    0>
<script set>
<@@@ END @@@>
<1500>
# Gold Pile Template "Poor" quality
<type          ITEM 3821>
<quantity      15>
<resource      food       1 1 INTEREST>
<resource      production 1 0 GOLD>
<@@@ END @@@>
<1501>
# Gold Pile Template "Meager" quality
<type          ITEM 3821>
<quantity      30>
<resource      food       1 1 INTEREST>
<resource      production 1 0 GOLD>
<@@@ END @@@>
<1502>
# Gold Pile Template "Average" quality
<type          ITEM 3821>
<quantity      50>
<resource      food       1 1 INTEREST>
<resource      production 1 0 GOLD>
<@@@ END @@@>
<1503>
# Gold Pile Template "Rich" quality
<type          ITEM 3821>
<quantity      75>
<resource      food       1 1 INTEREST>
<resource      production 1 0 GOLD>
<@@@ END @@@>
<1504>
# Gold Pile Template "Filthy Rich" quality
<type          ITEM 3821>
<quantity      100>
<resource      food       1 1 INTEREST>
<resource      production 1 0 GOLD>
<@@@ END @@@>
<1505>
# Backpack Template "Poor" quality
<type         ITEM BACKPACK>
<eq           loaf_bread_1 0 0 2 SELFCONTAINED>
<eq           random_bottle 0 0 1 SELFCONTAINED>
<eq           torch 0 0 1 SELFCONTAINED>
<eq           { poor_shirt 1 0 4 } all_colors 1 SELFCONTAINED>
<eq           { poor_pants 1 0 4 } all_colors 1 SELFCONTAINED>
<eq           { 301516 1 301517 1 301518 1 301519 1 } 0 0 -1 SELFCONTAINED>
<@@@ END @@@>
<1506>
# Backpack Template "Meager" quality
<type         ITEM BACKPACK>
<eq           loaf_bread_1 0 0 2 SELFCONTAINED>
<eq           random_bottle 0 0 1 SELFCONTAINED>
<eq           torch 0 0 1 SELFCONTAINED>
<eq           { banded_straw_hat 1 bumpkin_straw_hat 1 0 9 } 0 0 1 SELFCONTAINED>
<eq           { 301521 1 301522 1 301523 1 301524 1 } 0 0 -1 SELFCONTAINED>
<@@@ END @@@>
<1507>
# Backpack Template "Average" quality
<type         ITEM BACKPACK>
<eq           loaf_bread_1 0 0 2 SELFCONTAINED>
<eq           random_bottle 0 0 1 SELFCONTAINED>
<eq           torch 0 0 1 SELFCONTAINED>
<eq           { cloak 1 0 9 } all_colors SELFCONTAINED>
<eq           { 301526 1 301527 1 301528 1 301529 1 } 0 0 -1 SELFCONTAINED>
<@@@ END @@@>
<1508>
# Backpack Template "Rich" quality
<type         ITEM BACKPACK>
<eq           loaf_bread_1 0 0 2 SELFCONTAINED>
<eq           random_bottle 0 0 1 SELFCONTAINED>
<eq           torch 0 0 1 SELFCONTAINED>
<eq           { cape 1 0 9 } all_colors 1 SELFCONTAINED>
<eq           { 301531 1 301532 1 301533 1 301534 1 } 0 0 -1 SELFCONTAINED>
<@@@ END @@@>
<1509>
# Backpack Template "Filthy Rich" quality
<type         ITEM BACKPACK>
<eq           loaf_bread_1 0 0 2 SELFCONTAINED>
<eq           random_bottle 0 0 1 SELFCONTAINED>
<eq           torch 0 0 1 SELFCONTAINED>
<eq           { 301536 1 301537 1 301538 1 301539 1 } 0 0 -1 SELFCONTAINED>
<@@@ END @@@>
<1510>
# Pouch Template "Poor" quality
<type         ITEM 3702>
<eq           poor_gold_pile 0 0 -1 SELFCONTAINED>
<@@@ END @@@>
<1511>
# Pouch Template "Meager" quality
<type         ITEM 3702>
<eq           meager_gold_pile 0 0 -1 SELFCONTAINED>
<@@@ END @@@>
<1512>
# Pouch Template "Average" quality
<type         ITEM 3702>
<eq           average_gold_pile 0 0 -1 SELFCONTAINED>
<@@@ END @@@>
<1513>
# Pouch Template "Rich" quality
<type         ITEM 3702>
<eq           rich_gold_pile 0 0 -1 SELFCONTAINED>
<eq           { random_jewel 1 0 1 } 0 0 1 SELFCONTAINED>
<@@@ END @@@>
<1514>
# Pouch Template "Filthy Rich" quality
<type         ITEM 3702>
<eq           filthy_rich_gold_pile 0 0 -1 SELFCONTAINED>
<eq           { random_jewel 1 0 1 } 0 0 1 SELFCONTAINED>
<eq           { random_jewel 1 0 1 } 0 0 1 SELFCONTAINED>
<@@@ END @@@>
<1515>
# Poor Goodie Template 
<type         ITEM random_crate>
<script       poi_cleanup>
<objvar       int GoodieTemplate 2>
<frequency    60>
<region       { POOR 0 RUINS 0 } >
<regionlimit  { POOR 6 RUINS 1 } >
<eq           { 301516 1 301517 1 301518 1 301519 1 } 0 0 -1 SELFCONTAINED>
<resource     food         1 1 HUMANS>
<resource     production   1 0 INTEREST>
<@@@ END @@@>
<1516>
# Poor Goodie Template variation 1
<type         NONE 0>
<eq           { 101500 1 101505 1 101510 1 } 0 0 -1 SELFCONTAINED>
<eq           loaf_of_bread 0 0 3 SELFCONTAINED>
<eq           pitcher_of_ale 0 0 1 SELFCONTAINED>
<eq           candle 0 0 1 SELFCONTAINED>
<@@@ END @@@>
<1517>
# Poor Goodie Template variation 2
<type         NONE 0>
<eq           { 101500 1 101505 1 101510 1 } 0 0 -1 SELFCONTAINED>
<eq           cheese 0 0 3 SELFCONTAINED>
<eq           wine_bottle 0 0 1 SELFCONTAINED>
<eq           torch 0 0 1 SELFCONTAINED>
<@@@ END @@@>
<1518>
# Poor Goodie Template variation 3
<type         NONE 0>
<eq           { 101500 1 101505 1 101510 1 } 0 0 -1 SELFCONTAINED>
<eq           loaf_bread_1 0 0 2 SELFCONTAINED>
<eq           cheese 0 0 1 SELFCONTAINED>
<eq           ale_bottle 0 0 2 SELFCONTAINED>
<eq           candle 0 0 1 SELFCONTAINED>
<@@@ END @@@>
<1519>
# Poor Goodie Template variation 4
<type         NONE 0>
<eq           { 101500 1 101505 1 101510 1 } 0 0 -1 SELFCONTAINED>
<eq           cider_jug 0 0 3 SELFCONTAINED>
<eq           loaf_bread_1 0 0 2 SELFCONTAINED>
<eq           liquor_bottle 0 0 1 SELFCONTAINED>
<eq           cheese 0 0 2 SELFCONTAINED>
<eq           torch 0 0 1 SELFCONTAINED>
<@@@ END @@@>
<1520>
# Broke Goodie Template
<type         ITEM random_crate>
<script       poi_cleanup>
<objvar       int GoodieTemplate 2>
<frequency    60>
<region       { BROKE 0 AVERAGE 0 } >
<regionlimit  { BROKE 3 AVERAGE 1 } >
<eq           { 301521 1 301522 1 301523 1 301524 1 } 0 0 -1 SELFCONTAINED>
<eq           { 301516 1 301517 1 301518 1 301519 1 0 4 } 0 0 -1 SELFCONTAINED>
<resource     food         1 1 HUMANS>
<resource     production   1 0 INTEREST>
<@@@ END @@@>
<1521>
# Broke Goodie Template variation 1
<type         NONE 0>
<eq           { 101501 1 101506 1 101511 1 } 0 0 -1 SELFCONTAINED>
<eq           { random_boots 1 0 4 } 0 0 1 SELFCONTAINED>
<eq           { random_gorget 1 0 4 } 0 0 1 SELFCONTAINED>
<eq           { random_staff 1 0 4 } 0 0 1 SELFCONTAINED>
<eq           { random_necklace 1 0 4 } 0 0 1 SELFCONTAINED>
<eq           { cloak 1 0 9 } all_colors 1 SELFCONTAINED>
<@@@ END @@@>
<1522>
# Broke Goodie Template variation 2
<type         NONE 0>
<eq           { 101501 1 101506 1 101511 1 } 0 0 -1 SELFCONTAINED>
<eq           { random_shield 1 0 4 } 0 0 1 SELFCONTAINED>
<eq           { random_missile 1 0 4 } 0 0 1 SELFCONTAINED>
<eq           { arrows 1 bolts 1 0 3 } 0 0 10 SELFCONTAINED>
<eq           { random_potion 1 0 4 } 0 0 1 SELFCONTAINED>
<eq           { tunic 1 0 9 } all_colors 1 SELFCONTAINED>
<@@@ END @@@>
<1523>
# Broke Goodie Template variation 3
<type         NONE 0>
<eq           { 101501 1 101506 1 101511 1 } 0 0 -1 SELFCONTAINED>
<eq           { random_arm_armor 1 0 4 } 0 0 1 SELFCONTAINED>
<eq           { random_leg_armor 1 0 4 } 0 0 1 SELFCONTAINED>
<eq           { random_mace 1 0 4 } 0 0 1 SELFCONTAINED>
<eq           { random_sword 1 0 4 } 0 0 1 SELFCONTAINED>
<eq           { doublet 1 0 9 } all_colors 1 SELFCONTAINED>
<@@@ END @@@>
<1524>
# Broke Goodie Template variation 4
<type         NONE 0>
<eq           { 101501 1 101506 1 101511 1 } 0 0 -1 SELFCONTAINED>
<eq           { random_head_armor 1 0 4 } 0 0 1 SELFCONTAINED>
<eq           { random_chest_armor 1 0 4 } 0 0 1 SELFCONTAINED>
<eq           { random_axe 1 0 4 } 0 0 1 SELFCONTAINED>
<eq           { random_pole_arm 1 0 4 } 0 0 1 SELFCONTAINED>
<eq           { random_jewel 1 0 4 } 0 0 1 SELFCONTAINED>
<eq           { random_reagent 1 0 4 } 0 0 3 SELFCONTAINED>
<@@@ END @@@>
<1525>
# Average Goodie Template
<type         ITEM random_container>
<script       poi_cleanup>
<objvar       int GoodieTemplate 2>
<frequency    60>
<region       { AVERAGE 0 RICH 0 } >
<regionlimit  { AVERAGE 2 RICH 1 } >
<eq           { 301526 1 301527 1 301528 1 301529 1 } 0 0 -1 SELFCONTAINED>
<eq           { 301516 1 301517 1 301518 1 301519 1 0 4 } 0 0 -1 SELFCONTAINED>
<resource     food         1 1 HUMANS>
<resource     production   1 0 INTEREST>
<@@@ END @@@>
<1526>
# Goodie Template "average" quality, variation 2
<type         NONE 0>
<eq           { 101502 1 101507 1 101512 1 } 0 0 -1 SELFCONTAINED>
<eq           random_boots MAGIC 5 1 10 0 0 1 SELFCONTAINED>
<eq           random_gorget MAGIC 5 1 10 0 0 1 SELFCONTAINED>
<eq           random_staff MAGIC 5 1 10 0 0 1 SELFCONTAINED>
<eq           random_necklace MAGIC 5 1 10 0 0 1 SELFCONTAINED>
<@@@ END @@@>
<1527>
# Goodie Template "average" quality, variation 3
<type         NONE 0>
<eq           { 101502 1 101507 1 101512 1 } 0 0 -1 SELFCONTAINED>
<eq           random_shield MAGIC 5 5 15 0 0 1 SELFCONTAINED>
<eq           random_missile MAGIC 5 5 15 0 0 1 SELFCONTAINED>
<eq           arrows 0 0 10 SELFCONTAINED>
<eq           random_potion 0 0 1 SELFCONTAINED>
<@@@ END @@@>
<1528>
# Goodie Template "average" quality, variation 4
<type         NONE 0>
<eq           { 101502 1 101507 1 101512 1 } 0 0 -1 SELFCONTAINED>
<eq           random_arm_armor MAGIC 5 1 10 0 0 1 SELFCONTAINED>
<eq           random_leg_armor MAGIC 5 1 10 0 0 1 SELFCONTAINED>
<eq           random_mace MAGIC 5 1 10 0 0 1 SELFCONTAINED>
<eq           random_sword MAGIC 5 1 10 0 0 1 SELFCONTAINED>
<eq           { random_scroll 1 0 1 } 0 0 1 SELFCONTAINED>
<eq           { random_reagent 1 0 1 } 0 0 3 SELFCONTAINED>
<@@@ END @@@>
<1529>
# Goodie Template "average" quality, variation 5
<type         NONE 0>
<eq           { 101502 1 101507 1 101512 1 } 0 0 -1 SELFCONTAINED>
<eq           random_head_armor MAGIC 5 1 10 0 0 1 SELFCONTAINED>
<eq           random_chest_armor MAGIC 5 1 10 0 0 1 SELFCONTAINED>
<eq           random_axe MAGIC 5 1 10 0 0 1 SELFCONTAINED>
<eq           random_pole_arm MAGIC 5 1 10 0 0 1 SELFCONTAINED>
<eq           random_shield MAGIC 5 1 10 0 0 1 SELFCONTAINED>
<eq           random_jewel 0 0 1 SELFCONTAINED>
<@@@ END @@@>
<1530>
# Rich Goodie Template
<type         ITEM random_chest>
<script       poi_cleanup>
<objvar       int GoodieTemplate 2>
<frequency    60>
<region       { RICH 0 FILTHYRICH 0 } >
<regionlimit  { RICH 2 FILTHYRICH 1 } >
<eq           { 301531 1 301532 1 301533 1 301534 1 } 0 0 -1 SELFCONTAINED>
<eq           { 301516 1 301517 1 301518 1 301519 1 0 4 } 0 0 -1 SELFCONTAINED>
<resource     food         1 1 HUMANS>
<resource     production   1 0 INTEREST>
<@@@ END @@@>
<1531>
# Goodie Template "rich" quality, variation 2
<type         NONE 0>
<eq           { 101503 1 101508 1 101513 1 } 0 0 -1 SELFCONTAINED>
<eq           random_boots MAGIC 10 10 50 0 0 1 SELFCONTAINED>
<eq           random_gorget MAGIC 10 10 50 0 0 1 SELFCONTAINED>
<eq           random_staff MAGIC 10 10 50 0 0 1 SELFCONTAINED>
<eq           random_necklace MAGIC 10 10 50 0 0 1 SELFCONTAINED>
<eq           { random_scroll 1 0 1 } 0 0 1 SELFCONTAINED>
<@@@ END @@@>
<1532>
# Goodie Template "rich" quality, variation 3
<type         NONE 0>
<eq           { 101503 1 101508 1 101513 1 } 0 0 -1 SELFCONTAINED>
<eq           random_shield MAGIC 10 10 50 0 0 1 SELFCONTAINED>
<eq           random_missile MAGIC 10 10 50 0 0 1 SELFCONTAINED>
<eq           arrows 0 0 10 SELFCONTAINED>
<eq           random_potion 0 0 1 SELFCONTAINED>
<@@@ END @@@>
<1533>
# Goodie Template "rich" quality, variation 4
<type         NONE 0>
<eq           { 101503 1 101508 1 101513 1 } 0 0 -1 SELFCONTAINED>
<eq           random_arm_armor MAGIC 10 10 50 0 0 1 SELFCONTAINED>
<eq           random_leg_armor MAGIC 10 10 50 0 0 1 SELFCONTAINED>
<eq           random_mace MAGIC 10 10 50 0 0 1 SELFCONTAINED>
<eq           random_sword MAGIC 10 10 50 0 0 1 SELFCONTAINED>
<@@@ END @@@>
<1534>
# Goodie Template "rich" quality, variation 5
<type         NONE 0>
<eq           { 101503 1 101508 1 101513 1 } 0 0 -1 SELFCONTAINED>
<eq           random_head_armor MAGIC 10 10 50 0 0 1 SELFCONTAINED>
<eq           random_chest_armor MAGIC 10 10 50 0 0 1 SELFCONTAINED>
<eq           random_axe MAGIC 10 10 50 0 0 1 SELFCONTAINED>
<eq           random_pole_arm MAGIC 10 10 50 0 0 1 SELFCONTAINED>
<eq           random_jewel 0 0 1 SELFCONTAINED>
<@@@ END @@@>
<1535>
# FilthyRich Goodie Template
<type         ITEM random_chest>
<script       poi_cleanup>
<objvar       int GoodieTemplate 2>
<frequency    60>
<region       { FILTHYRICH 0 DRAGON 0 } >
<regionlimit  { FILTHYRICH 2 DRAGON 1 } >
<eq           { 301536 1 301537 1 301538 1 301539 1 } 0 0 -1 SELFCONTAINED>
<eq           { 301516 1 301517 1 301518 1 301519 1 0 4 } 0 0 -1 SELFCONTAINED>
<resource     food         1 1 HUMANS>
<resource     production   1 0 INTEREST>
<@@@ END @@@>
<1536>
# Goodie Template "filthy rich" quality, variation 2
<type         NONE 0>
<eq           { 101504 1 101509 1 101514 1 } 0 0 -1 SELFCONTAINED>
<eq           random_boots MAGIC 25 10 50 0 0 1 SELFCONTAINED>
<eq           random_gorget MAGIC 25 10 50 0 0 1 SELFCONTAINED>
<eq           random_staff MAGIC 25 10 50 0 0 1 SELFCONTAINED>
<eq           random_necklace MAGIC 25 10 50 0 0 1 SELFCONTAINED>
<@@@ END @@@>
<1537>
# Goodie Template "filthy rich" quality, variation 3
<type         NONE 0>
<eq           { 101504 1 101509 1 101514 1 } 0 0 -1 SELFCONTAINED>
<eq           random_shield MAGIC 25 20 100 0 0 1 SELFCONTAINED>
<eq           random_missile MAGIC 25 20 100 0 0 1 SELFCONTAINED>
<eq           arrows 0 0 10 SELFCONTAINED>
<eq           random_potion 0 0 1 SELFCONTAINED>
<@@@ END @@@>
<1538>
# Goodie Template "filthy rich" quality, variation 4
<type         NONE 0>
<eq           { 101504 1 101509 1 101514 1 } 0 0 -1 SELFCONTAINED>
<eq           random_arm_armor MAGIC 25 20 105 0 0 1 SELFCONTAINED>
<eq           random_leg_armor MAGIC 25 20 105 0 0 1 SELFCONTAINED>
<eq           random_mace MAGIC 25 20 105 0 0 1 SELFCONTAINED>
<eq           random_sword MAGIC 25 20 105 0 0 1 SELFCONTAINED>
<eq           { random_scroll 1 0 1 } 0 0 1 SELFCONTAINED>
<@@@ END @@@>
<1539>
# Goodie Template "filthy rich" quality, variation 5
<type         NONE 0>
<eq           { 101504 1 101509 1 101514 1 } 0 0 -1 SELFCONTAINED>
<eq           random_head_armor MAGIC 25 30 105 0 0 1 SELFCONTAINED>
<eq           random_chest_armor MAGIC 25 30 105 0 0 1 SELFCONTAINED>
<eq           random_axe MAGIC 25 30 105 0 0 1 SELFCONTAINED>
<eq           random_pole_arm MAGIC 25 30 105 0 0 1 SELFCONTAINED>
<eq           random_jewel 0 0 1 SELFCONTAINED>
<@@@ END @@@>
<1540>
# sulfurous ash reagent
<type           ITEM SULFUROUS_ASH_REAGENT>
<frequency      333>
<region         { DUNGN 0 SASHSMALL 0 SASHMEDIUM 0 SASHLARGE 0 FORESTNOTNEARTOWN 0 FORESTNEARTOWN 0 NEWBIE 0 } >
<regionlimit    { DUNGN 40 SASHSMALL 10 SASHMEDIUM 20 SASHLARGE 40 FORESTNOTNEARTOWN 150 FORESTNEARTOWN 100 NEWBIE 100 } >
<resource       food        1  1    DUNGEONS>
<resource       production  2  0    MAGIC>
<resource       production  1  0    SULPHEROUS ASH>
<@@@ END @@@>
<1541>
# ginseng reagent
<type           ITEM GINSENG_REAGENT>
<frequency      333>
<region         { PLAINS 0 FORESTNOTNEARTOWN 0 DARKFOREST 0 DARKERFOREST 0 FORESTNEARTOWN 0 NEWBIE 0 } >
<regionlimit    { PLAINS 30 FORESTNOTNEARTOWN 150 DARKFOREST 100 DARKERFOREST 100 FORESTNEARTOWN 100 NEWBIE 100 } >
<resource       food        1  1    GRASS>
<resource       production  2  0    MAGIC>
<resource       production  1  0    GINSENG>
<@@@ END @@@>
<1542>
# garlic reagent
<type           ITEM GARLIC_REAGENT>
<frequency      333>
<region         { FORESTNEARTOWN 0 FORESTNOTNEARTOWN 0 DARKFOREST 0 DARKERFOREST 0 NEWBIE 0 } >
<regionlimit    { FORESTNEARTOWN 100 FORESTNOTNEARTOWN 150 DARKFOREST 100 DARKERFOREST 100 NEWBIE 100 } >
<resource       food        1  1    FOLIAGE>
<resource       production  1  0    MAGIC>
<resource       production  1  0    GARLIC>
<@@@ END @@@>
<1543>
# blood moss reagent
<type           ITEM BLOOD_MOSS_REAGENT>
<frequency      333>
<region         { SWAMP 0 BMOSSSMALL 0 BMOSSMEDIUM 0 BMOSSLARGE 0 FORESTNOTNEARTOWN 0 FORESTNEARTOWN 0 DARKFOREST 0 DARKERFOREST 0 NEWBIE 0 } >
<regionlimit    { SWAMP 100 BMOSSSMALL 10 BMOSSMEDIUM 20 BMOSSLARGE 40 FORESTNOTNEARTOWN 150 FORESTNEARTOWN 100 DARKFOREST 100 DARKERFOREST 100 NEWBIE 100 } >
<resource       food        1  1    SWAMP>
<resource       food        1  1    FOREST>
<resource       production  3  0    MAGIC>
<resource       production  2  0    BLOOD_MOSS>
<@@@ END @@@>
<1544>
# mandrake reagent
<type           ITEM MANDRAKE_ROOT>
<frequency      333>
<region         { SWAMP 0 MANDRAKESMALL 0 MANDRAKEMEDIUM 0 MANDRAKELARGE 0 FORESTNOTNEARTOWN 0 DARKFOREST 0 DARKERFOREST 0 FORESTNEARTOWN 0 NEWBIE 0 } >
<regionlimit    { SWAMP 90 MANDRAKESMALL 10 MANDRAKEMEDIUM 20 MANDRAKELARGE 40 FORESTNOTNEARTOWN 150 DARKFOREST 100 DARKERFOREST 100 FORESTNEARTOWN 100 NEWBIE 100 } >
<resource       food        1  1    SWAMP>
<resource       food        1  1    FOREST>
<resource       production  2  0    MAGIC>
<resource       production  2  0    MANDRAKE>
<@@@ END @@@>
<1545>
# nightshade reagent
<type           ITEM NIGHTSHADE_REAGENT>
<frequency      333>
<region         { DARKFOREST 0 DARKERFOREST 0 FORESTNOTNEARTOWN 0 FORESTNEARTOWN 0 NEWBIE 0 } >
<regionlimit    { DARKFOREST 100 DARKERFOREST 100 FORESTNOTNEARTOWN 150 FORESTNEARTOWN 100 NEWBIE 100 } >
<resource       food        1  1    FOREST>
<resource       production  2  0    MAGIC>
<resource       production  1  0    NIGHTSHADE>
<@@@ END @@@>
<1546>
# cabbage crop
<type           ITEM CROP_CABBAGE>
<frequency      333>
<region         CABBAGE>
<regionlimit    { CABBAGE 50 } >
<resource       food        1  1    CROPLAND>
<resource       production  1  0    CROPS>
<resource       production  1  0    FOOD>
<@@@ END @@@>
<1547>
# carrot crop
<type           ITEM CROP_CARROT>
<frequency      333>
<region         CARROT>
<regionlimit    { CARROT 50 } >
<resource       food        1  1    CROPLAND>
<resource       production  1  0    CROPS>
<@@@ END @@@>
<1548>
# cotton crop
<type           ITEM CROP_COTTON>
<frequency      333>
<region         COTTON>
<regionlimit    { COTTON 50 } >
<resource       food        1  1    CROPLAND>
<resource       production  5  0    CLOTH>
<resource       production  5  0    COTTON>
<@@@ END @@@>
<1549>
# lettuce crop
<type           ITEM CROP_LETTUCE>
<frequency      333>
<region         LETTUCE>
<regionlimit    { LETTUCE 50 } >
<resource       food        1  1    CROPLAND>
<resource       production  1  0    FOOD>
<resource       production  1  0    CROPS>
<@@@ END @@@>
<1550>
# onion crop
<type           ITEM CROP_ONION>
<frequency      333>
<region         ONION>
<regionlimit    { ONION 50 } >
<resource       food        1  1    CROPLAND>
<resource       production  1  0    CROPS>
<@@@ END @@@>
<1551>
# turnip crop
<type           ITEM CROP_TURNIP>
<frequency      333>
<region         TURNIP>
<regionlimit    { TURNIP 50 } >
<resource       food        1  1    CROPLAND>
<resource       production  1  0    CROPS>
<@@@ END @@@>
<1552>
# wheat crop
<type           ITEM CROP_WHEAT>
<frequency      333>
<region         WHEAT>
<regionlimit    { WHEAT 75 } >
<resource       food        1  1    CROPLAND>
<resource       production  5  0    CROPS>
<resource       production  5  0    FLOUR>
<resource       production  5  0    WHEAT>
<resource       production  5  0    GRAIN>
<@@@ END @@@>
<1553>
# spider silk reagent
<type		        ITEM SPIDER_SILK_REAGENT>
<frequency      333>
<region         { DUNGN 0 CEMETERY 0 GIANTSPIDER 0 GIANTSPIDERSMALL 0 GIANTSPIDERMEDIUM 0 GIANTSPIDERLARGE 0 DARKFOREST 0 DARKERFOREST 0 FORESTNOTNEARTOWN 0 FORESTNEARTOWN 0 NEWBIE 0 } >
<regionlimit    { DUNGN 20 CEMETERY 25 GIANTSPIDER 6 GIANTSPIDERSMALL 6 GIANTSPIDERMEDIUM 12 GIANTSPIDERLARGE 20 DARKFOREST 100 DARKERFOREST 100 FORESTNOTNEARTOWN 150 FORESTNEARTOWN 100 NEWBIE 100 } >
<resource       food        1  1    DUNGEONS>
<resource       production  1  0    MAGIC>
<resource       production  1  0    SPIDER_SILK>
<@@@ END @@@>
<1554>
# black pearl reagent
<type           ITEM BLACK_PEARL_REAGENT>
<frequency      333>
<region         { BEACH 0 BPEARLSMALL 0 BPEARLMEDIUM 0 BPEARLLARGE 0 FORESTNOTNEARTOWN 0 DARKFOREST 0 DARKERFOREST 0 FORESTNEARTOWN 0 DUNGN 0 NEWBIE 0 } >
<regionlimit    { BEACH 30 BPEARLSMALL 10 BPEARLMEDIUM 20 BPEARLLARGE 30 FORESTNOTNEARTOWN 150 DARKFOREST 100 DARKERFOREST 100 FORESTNEARTOWN 100 DUNGN 20 NEWBIE 100 } >
<resource       food        1  1    SAND>
<resource       production  3  0    MAGIC>
<resource       production  2  0    BLACK_PEARL>
<@@@ END @@@>
<1555>
# exploding shrooms 
<type           ITEM 4389>
<frequency      20>
<script         mushroom>
<region         { FOREST 0 JUNGLE 0 SWAMP 0 } >
<regionlimit    { FOREST 1 JUNGLE 1 SWAMP 1 } >
<resource       production  1  1    DANGER>
<@@@ END @@@>
<1556>
# Quest Egg 
<type        ITEM 6515>
<frequency   30>
<region      { CITY 0 FARM 0 } >
<regionlimit { CITY 3 FARM 3 } >
<script      quest>
<resource    food       1 1 HUMANS>
<resource    production 1 0 QUEST_EGG>
<@@@ END @@@>
<1557>
# ORC GROUP 
<type         ITEM 1>
<createsnpcs  1>
<frequency    110>
<region       { ORCCAMP 10 DARKFOREST 1 } >
<regionlimit  { ORCCAMP 10 DARKFOREST 2 } >
<eq           100522 0 0 -1 AT  1 -1 0 >
<eq           100538 0 0 -1 AT  2  2 0 >
<eq           100538 0 0 -1 AT  2 -2 0 >
<eq           100538 0 0 -1 AT -2  2 0 >
<eq           100538 0 0 -1 AT -2 -2 0 >
<eq           100528 0 0 -1 AT -3 -3 0 >
<eq	      100602 0 0 -1 AT 0 0 0 >
<@@@ END @@@>
<1558>
# Small Lizardman Camp
<type         ITEM 1>
<createsnpcs  1>
<frequency    50>
<region       { JUNGLE 0 SWAMP 0 LIZARDMANCAMP 0  } >
<regionlimit  { JUNGLE 2 SWAMP 5 LIZARDMANCAMP 1  } >
<script       poi_cleanup>
<eq           200112 0 0 -1 AT  0  0 0 poi_cleanup>
<eq             4012 0 0  1 AT  0  7 0 poi_cleanup>
<eq             3555 0 0  1 AT  0  7 0 poi_cleanup>
<eq           { 101590 1 101591 1 0 3 } 0 0 -1 AT 1 1 0 poi_cleanup>
<eq             2420 0 0  1 AT  0  7 0 poi_cleanup>
<eq             4334 0 0  1 AT  0  0 0 poi_cleanup>
<eq           100535 0 0 -1 AT  4  4 0 poi_cleanup>
<eq           100535 0 0 -1 AT  4 -4 0 poi_cleanup>
<eq           100535 0 0 -1 AT -4  4 0 poi_cleanup>
<eq           100535 0 0 -1 AT -4 -4 0 poi_cleanup>
<eq             1055 0 0  1 AT  5  5 0 poi_cleanup>
<eq             1065 0 0  1 AT  5 -4 0 poi_cleanup>
<eq             1056 0 0  1 AT -4  5 0 poi_cleanup>
<eq             1064 0 0  1 AT -4 -4 0 poi_cleanup>
<eq           101525 0 0 -1 AT -2  2 0 poi_cleanup>
<eq           101530 0 0 -1 AT  2 -2 0 poi_cleanup>
<resource     food       1 1 MEAT>
<resource     production 1 0 INTEREST>
<@@@ END @@@>
<1559>
# Small Ratman Camp
<type         ITEM 1>
<createsnpcs  1>
<frequency    50>
<region       { JUNGLE 0 MOUNTAIN 0 SWAMP 0 RATMENCAMP 0  } >
<regionlimit  { JUNGLE 2 MOUNTAIN 1 SWAMP 1 RATMENCAMP 1  } >
<script       poi_cleanup>
<eq           200113 0 0 -1 AT  0  0 0 poi_cleanup>
<eq             4012 0 0  1 AT  0  7 0 poi_cleanup>
<eq             3555 0 0  1 AT  0  7 0 poi_cleanup>
<eq             2420 0 0  1 AT  0  7 0 poi_cleanup>
<eq           { 101592 1 101593 1 0 3 } 0 0 -1 AT 1 1 0 poi_cleanup>
<eq             4334 0 0  1 AT  0  0 0 poi_cleanup>
<eq           100561 0 0 -1 AT  4  4 0 poi_cleanup>
<eq           100561 0 0 -1 AT  4 -4 0 poi_cleanup>
<eq           100561 0 0 -1 AT -4  4 0 poi_cleanup>
<eq           100561 0 0 -1 AT -4 -4 0 poi_cleanup>
<eq             1055 0 0  1 AT  5  5 0 poi_cleanup>
<eq             1065 0 0  1 AT  5 -4 0 poi_cleanup>
<eq             1056 0 0  1 AT -4  5 0 poi_cleanup>
<eq             1064 0 0  1 AT -4 -4 0 poi_cleanup>
<eq           101525 0 0 -1 AT  2  2 0 poi_cleanup>
<eq           101530 0 0 -1 AT -2 -2 0 poi_cleanup>
<resource     food       1 1 MEAT>
<resource     production 1 0 INTEREST>
<@@@ END @@@>
<1560>
# UNDEAD Backpack Template "Rich" quality
<type         ITEM BACKPACK>
<eq           { 101503 1 101513 1} 0 0 -1 SELFCONTAINED>
<eq           { 7389 1 7397 1 6931 1 6932 1 7407 1 7393 1 6929 1 6930 1 7408 1 7405 1 6921 1 7406 1 3786 1 3787 1 3788 1 3789 1 3790 1 3791 1 3792 1 3793 1 3794 1 } 0 0 1 SELFCONTAINED>
<eq           random_scroll 0 0 1 SELFCONTAINED>
<eq           { random_potion 1 0 3 } 0 0 1 SELFCONTAINED>
<eq           all MAGIC 10 2 3 0 0 1 SELFCONTAINED>
<@@@ END @@@>
<1561>
# Small Orc Camp
<type         ITEM 1>
<createsnpcs  1>
<frequency    50>
<region       { ARCTIC 0 MOUNTAIN 0 FORESTNOTNEARTOWN 0 DARKFOREST 0 } >
<regionlimit  { ARCTIC 3 MOUNTAIN 1 FORESTNOTNEARTOWN 3 DARKFOREST 2 } >
<script       poi_cleanup>
<eq           200112 0 0 -1 AT  0  0 0 poi_cleanup>
<eq             4012 0 0  1 AT  0  7 0 poi_cleanup>
<eq             3555 0 0  1 AT  0  7 0 poi_cleanup>
<eq             2420 0 0  1 AT  0  7 0 poi_cleanup>
<eq             4334 0 0  1 AT  0  0 0 poi_cleanup>
<eq           { 101594 1 101595 1 0 3 } 0 0 -1 AT 1 1 0 poi_cleanup>
<eq           100522 0 0 -1 AT  4  4 0 poi_cleanup>
<eq           100538 0 0 -1 AT  4 -4 0 poi_cleanup>
<eq           100538 0 0 -1 AT -4  4 0 poi_cleanup>
<eq           100538 0 0 -1 AT -4 -4 0 poi_cleanup>
<eq           100538 0 0 -1 AT -4 -4 0 poi_cleanup>
<eq             1055 0 0  1 AT  5  5 0 poi_cleanup>
<eq             1065 0 0  1 AT  5 -4 0 poi_cleanup>
<eq             1056 0 0  1 AT -4  5 0 poi_cleanup>
<eq             1064 0 0  1 AT -4 -4 0 poi_cleanup>
<eq           101525 0 0 -1 AT -2  2 0 poi_cleanup>
<eq           101530 0 0 -1 AT  2 -2 0 poi_cleanup>
<resource     food        1 1 MEAT>
<resource     production  1 0 INTEREST>
<resource     production 16 0 ORCCAMP>
<@@@ END @@@>
<1562>
# Band of 5 Lizardmen 
<type         ITEM 1>
<createsnpcs  1>
<frequency    50>
<region       { SWAMP 0 LIZARDMANCAMP 0  } >
<regionlimit  { SWAMP 5 LIZARDMANCAMP 1  } >
<script       poi_cleanup>
<eq           100535 0 0 -1 AT  0  0 0>
<eq           100535 0 0 -1 AT  4  4 0>
<eq           100535 0 0 -1 AT  4 -4 0>
<eq           100535 0 0 -1 AT -4  4 0>
<eq           100535 0 0 -1 AT -4 -4 0>
<resource     food       1 1 HUMANS>
<resource     production 1 0 INTEREST>
<@@@ END @@@>
<1563>
# Band of 5 Ratman
<type         ITEM 1>
<createsnpcs  1>
<frequency    50>
<region       { RATMENCAMP 0  } >
<regionlimit  { RATMENCAMP 1  } >
<script       poi_cleanup>
<eq           100561 0 0 -1 AT  0  0 0>
<eq           100561 0 0 -1 AT  4  4 0>
<eq           100561 0 0 -1 AT  4 -4 0>
<eq           100561 0 0 -1 AT -4  4 0>
<eq           100561 0 0 -1 AT -4 -4 0>
<resource     food       1 1 HUMANS>
<resource     production 1 0 INTEREST>
<@@@ END @@@>
<1564>
# Plus Int Mage Hat
<type    ITEM mage_like_hat>
<script  magehat>
<@@@ END @@@>
<1565>
# crystal of communication
<type    ITEM crystal_of_com>
<@@@ END @@@>
<1566>
# crystal of communication
<type    ITEM crystal_of_com>
<objvar	int	newcharges 100>
<@@@ END @@@>
<1567>
# crystal of communication
<type    ITEM crystal_of_com>
<objvar	int	newcharges 200>
<@@@ END @@@>
<1568>
# checkerboard template
<type       ITEM 4006>
<objvar     int isCheckers 1>
<objvar     string lookAtText "a checker board">
<@@@ END @@@>
<1569>
# chessboard template
<type       ITEM 4006>
<objvar     string lookAtText "a chessboard">
<@@@ END @@@>
<1570>
# Evil Mage Tower 
<type         ITEM 1>
<createsnpcs  1>
<frequency    50>
<region       { DARKFOREST 0 } >
<regionlimit  { DARKFOREST 1 } >
<script       poi_cleanup>
<req           200123 0 0 -1 AT  0  0 0 poi_cleanup>
<eq           4628 0 0 -1 AT  2  3  6 poi_cleanup>
<eq           4629 0 0 -1 AT  2  2  6 poi_cleanup>
<eq           4622 0 0 -1 AT  2  1  6 poi_cleanup>
<eq           4627 0 0 -1 AT  3  3  6 poi_cleanup>
<eq           4630 0 0 -1 AT  3  2  6 poi_cleanup>
<eq           4623 0 0 -1 AT  3  1  6 poi_cleanup>
<eq           4626 0 0 -1 AT  4  3  6 poi_cleanup>
<eq           4625 0 0 -1 AT  4  2  6 poi_cleanup>
<eq           4624 0 0 -1 AT  4  1  6 poi_cleanup>
<eq           100549 0 0 -1 AT 3 2 7 poi_cleanup>
<eq           6665 0 0 -1 AT -1 -4  6 poi_cleanup>
<eq           6661 0 0 -1 AT -1 -6  6 poi_cleanup>
<eq           6658 0 0 -1 AT  3 -6  6 poi_cleanup>
<eq           6659 0 0 -1 AT  6 -6  6 poi_cleanup>
<eq           5645 0 0 -1 AT  2  5 26 poi_cleanup>
<eq           5645 0 0 -1 AT  2  3 26 poi_cleanup>
<eq           5645 0 0 -1 AT  2  2 26 poi_cleanup>
<eq           5645 0 0 -1 AT  2  1 26 poi_cleanup>
<eq           5645 0 0 -1 AT  2  0 26 poi_cleanup>
<eq           5645 0 0 -1 AT  2 -1 26 poi_cleanup>
<eq           5645 0 0 -1 AT  2 -2 26 poi_cleanup>
<eq           5645 0 0 -1 AT  2 -3 26 poi_cleanup>
<eq           5645 0 0 -1 AT  2 -4 26 poi_cleanup>
<eq           5645 0 0 -1 AT  2 -5 26 poi_cleanup>
<eq           5645 0 0 -1 AT  2 -6 26 poi_cleanup>
<eq           5646 0 0 -1 AT  2 -6 26 poi_cleanup>
<eq           5646 0 0 -1 AT  3 -6 26 poi_cleanup>
<eq           5646 0 0 -1 AT  4 -6 26 poi_cleanup>
<eq           5646 0 0 -1 AT  5 -6 26 poi_cleanup>
<eq           5646 0 0 -1 AT  6 -6 26 poi_cleanup>
<eq           5646 0 0 -1 AT  7 -6 26 poi_cleanup>
<eq           7576 0 0 -1 AT  4 -1 26 poi_cleanup>
<eq           7575 0 0 -1 AT  4  0 26 poi_cleanup>
<eq           7420 0 0 -1 AT  5 -1 26 poi_cleanup>
<eq           7418 0 0 -1 AT  5  0 26 poi_cleanup>
<eq           100549 0 0 -1 AT 3 2 27 poi_cleanup>
<eq           4609 0 0 -1 AT  5  0 46 poi_cleanup>
<eq           4611 0 0 -1 AT  5 -1 46 poi_cleanup>
<eq           4611 0 0 -1 AT  5 -2 46 poi_cleanup>
<eq           4610 0 0 -1 AT  5 -3 46 poi_cleanup>
<eq           7400 0 0 -1 AT  5 -2 52 poi_cleanup>
<eq           7399 0 0 -1 AT  5 -1 52 poi_cleanup>
<eq           100549 0 0 -1 AT 3 2 47 poi_cleanup>
<eq           4073 0 0 -1 AT  1  1 66 poi_cleanup>
<eq           4070 0 0 -1 AT  1  0 66 poi_cleanup>
<eq           4071 0 0 -1 AT  1 -1 66 poi_cleanup>
<eq           4076 0 0 -1 AT  2  1 66 poi_cleanup>
<eq           4074 0 0 -1 AT  2  0 66 poi_cleanup>
<eq           4072 0 0 -1 AT  2 -1 66 poi_cleanup>
<eq           4077 0 0 -1 AT  3  1 66 poi_cleanup>
<eq           4078 0 0 -1 AT  3  0 66 poi_cleanup>
<eq           4075 0 0 -1 AT  3 -1 66 poi_cleanup>
<eq           { 101582 1 101583 1 } 0 0 -1 AT 2 0 66 poi_cleanup>
<eq           100549 0 0 -1 AT 2 3 67 poi_cleanup>
<eq           100549 0 0 -1 AT 3 2 67 poi_cleanup>
<resource     food       1 1 MEAT>
<resource     production 1 0 INTEREST>
<@@@ END @@@>
<1571>
# Good Mage Tower 
<type         ITEM 1>
<createsnpcs  1>
<frequency    50>
<region       { DARKFOREST 0 } >
<regionlimit  { DARKFOREST 1 } >
<script       poi_cleanup>
<req           200123 0 0 -1 AT  0  0 0 poi_cleanup>
<eq           4628 0 0 -1 AT  2  3  6 poi_cleanup>
<eq           4629 0 0 -1 AT  2  2  6 poi_cleanup>
<eq           4622 0 0 -1 AT  2  1  6 poi_cleanup>
<eq           4627 0 0 -1 AT  3  3  6 poi_cleanup>
<eq           4630 0 0 -1 AT  3  2  6 poi_cleanup>
<eq           4623 0 0 -1 AT  3  1  6 poi_cleanup>
<eq           4626 0 0 -1 AT  4  3  6 poi_cleanup>
<eq           4625 0 0 -1 AT  4  2  6 poi_cleanup>
<eq           4624 0 0 -1 AT  4  1  6 poi_cleanup>
<eq           100076 0 0 -1 AT 3 2 7 poi_cleanup>
<eq           5645 0 0 -1 AT  2  5 26 poi_cleanup>
<eq           5645 0 0 -1 AT  2  3 26 poi_cleanup>
<eq           5645 0 0 -1 AT  2  2 26 poi_cleanup>
<eq           5645 0 0 -1 AT  2  1 26 poi_cleanup>
<eq           5645 0 0 -1 AT  2  0 26 poi_cleanup>
<eq           5645 0 0 -1 AT  2 -1 26 poi_cleanup>
<eq           5645 0 0 -1 AT  2 -2 26 poi_cleanup>
<eq           5645 0 0 -1 AT  2 -3 26 poi_cleanup>
<eq           5645 0 0 -1 AT  2 -4 26 poi_cleanup>
<eq           5645 0 0 -1 AT  2 -5 26 poi_cleanup>
<eq           5645 0 0 -1 AT  2 -6 26 poi_cleanup>
<eq           5646 0 0 -1 AT  2 -6 26 poi_cleanup>
<eq           5646 0 0 -1 AT  3 -6 26 poi_cleanup>
<eq           5646 0 0 -1 AT  4 -6 26 poi_cleanup>
<eq           5646 0 0 -1 AT  5 -6 26 poi_cleanup>
<eq           5646 0 0 -1 AT  6 -6 26 poi_cleanup>
<eq           5646 0 0 -1 AT  7 -6 26 poi_cleanup>
<eq           100076 0 0 -1 AT 3 2 27 poi_cleanup>
<eq           4609 0 0 -1 AT  5  0 46 poi_cleanup>
<eq           4611 0 0 -1 AT  5 -1 46 poi_cleanup>
<eq           4611 0 0 -1 AT  5 -2 46 poi_cleanup>
<eq           4610 0 0 -1 AT  5 -3 46 poi_cleanup>
<eq           100076 0 0 -1 AT 3 2 47 poi_cleanup>
<eq           4073 0 0 -1 AT  1  1 66 poi_cleanup>
<eq           4070 0 0 -1 AT  1  0 66 poi_cleanup>
<eq           4071 0 0 -1 AT  1 -1 66 poi_cleanup>
<eq           4076 0 0 -1 AT  2  1 66 poi_cleanup>
<eq           4074 0 0 -1 AT  2  0 66 poi_cleanup>
<eq           4072 0 0 -1 AT  2 -1 66 poi_cleanup>
<eq           4077 0 0 -1 AT  3  1 66 poi_cleanup>
<eq           4078 0 0 -1 AT  3  0 66 poi_cleanup>
<eq           4075 0 0 -1 AT  3 -1 66 poi_cleanup>
<eq           { 101584 1 101584 1 } 0 0 -1 AT 2 0 66 poi_cleanup>
<eq           100076 0 0 -1 AT 2 3 67 poi_cleanup>
<eq           100076 0 0 -1 AT 3 2 67 poi_cleanup>
<resource     food       1 1 MEAT>
<resource     production 1 0 INTEREST>
<@@@ END @@@>
<1572>
# Warlord's Keep
<type         ITEM 1>
<createsnpcs  1>
<frequency    50>
<region       { DARKFOREST 0 } >
<regionlimit  { DARKFOREST 1 } >
<script       poi_cleanup>
<req           200123 0 0 -1 AT  0  0 0 poi_cleanup>
<eq           100054 0 0 -1 AT 3 2 7 poi_cleanup>
<eq           5484 0 0 1 AT  1 -1  6 poi_cleanup>
<eq           5472 0 0 1 AT  2 -1  6 poi_cleanup>
<eq           5472 0 0 1 AT  4 -1  6 poi_cleanup>
<eq           5484 0 0 1 AT  6 -1  6 poi_cleanup>
<eq           5472 0 0 1 AT -2  2  6 poi_cleanup>
<eq           5472 0 0 1 AT -6  2  6 poi_cleanup>
<eq           5482 0 0 1 AT -1 -4  6 poi_cleanup>
<eq           5483 0 0 1 AT -1 -5  6 poi_cleanup>
<eq           5480 0 0 1 AT  0 -6  6 poi_cleanup>
<eq           5481 0 0 1 AT  1 -6  6 poi_cleanup>
<eq           5468 0 0 1 AT  2 -6  6 poi_cleanup>
<eq           5469 0 0 1 AT  3 -6  6 poi_cleanup>
<eq           5468 0 0 1 AT  4 -6  6 poi_cleanup>
<eq           5480 0 0 1 AT  5 -6  6 poi_cleanup>
<eq           5481 0 0 1 AT  6 -6  6 poi_cleanup>
<eq           100054 0 0 -1 AT 6 -6  6 poi_cleanup>
<eq           5645 0 0 -1 AT  2  5 26 poi_cleanup>
<eq           5645 0 0 -1 AT  2  3 26 poi_cleanup>
<eq           5645 0 0 -1 AT  2  2 26 poi_cleanup>
<eq           5645 0 0 -1 AT  2  1 26 poi_cleanup>
<eq           5645 0 0 -1 AT  2  0 26 poi_cleanup>
<eq           5645 0 0 -1 AT  2 -1 26 poi_cleanup>
<eq           5645 0 0 -1 AT  2 -2 26 poi_cleanup>
<eq           5645 0 0 -1 AT  2 -3 26 poi_cleanup>
<eq           5645 0 0 -1 AT  2 -4 26 poi_cleanup>
<eq           5645 0 0 -1 AT  2 -5 26 poi_cleanup>
<eq           5645 0 0 -1 AT  2 -6 26 poi_cleanup>
<eq           5646 0 0 -1 AT  2 -6 26 poi_cleanup>
<eq           5646 0 0 -1 AT  3 -6 26 poi_cleanup>
<eq           5646 0 0 -1 AT  4 -6 26 poi_cleanup>
<eq           5646 0 0 -1 AT  5 -6 26 poi_cleanup>
<eq           5646 0 0 -1 AT  6 -6 26 poi_cleanup>
<eq           5646 0 0 -1 AT  7 -6 26 poi_cleanup>
<eq           100054 0 0 -1 AT 3 2 27 poi_cleanup>
<eq           4609 0 0 -1 AT  5  0 46 poi_cleanup>
<eq           4611 0 0 -1 AT  5 -1 46 poi_cleanup>
<eq           4611 0 0 -1 AT  5 -2 46 poi_cleanup>
<eq           4610 0 0 -1 AT  5 -3 46 poi_cleanup>
<eq           100054 0 0 -1 AT 3 2 47 poi_cleanup>
<eq           { 101586 1 101587 1 0 3 } 0 0 -1 AT 2 0 66 poi_cleanup>
<eq           100054 0 0 -1 AT 2 3 67 poi_cleanup>
<eq           100054 0 0 -1 AT 3 2 67 poi_cleanup>
<resource     food       1 1 MEAT>
<resource     production 1 0 INTEREST>
<@@@ END @@@>
<1573>
# Gypsy Camp
<type         ITEM 1>
<createsnpcs  1>
<frequency    50>
<region       { FORESTNEARTOWN 0 PLAINS 0 } >
<regionlimit  { FORESTNEARTOWN 3 PLAINS 2 } >
<script       poi_cleanup>
<eq           200113 0 0 -1 AT  0  0 0 poi_cleanup>
<eq             4012 0 0  1 AT  0  7 0 poi_cleanup>
<eq             3555 0 0  1 AT  0  7 0 poi_cleanup>
<eq             2420 0 0  1 AT  0  7 0 poi_cleanup>
<eq             4334 0 0  1 AT  0  0 0 poi_cleanup>
<eq           { 101596 1 101597 1 0 3 } 0 0 -1 AT 1 1 0 poi_cleanup>
<eq           { 100043 1 101043 1 } 0 0 -1 AT  4  4 0 poi_cleanup>
<eq           { 100043 1 101043 1 } 0 0 -1 AT  4 -4 0 poi_cleanup>
<eq           { 100043 1 101043 1 } 0 0 -1 AT -4  4 0 poi_cleanup>
<eq           { 100043 1 101043 1 } 0 0 -1 AT -4 -4 0 poi_cleanup>
<eq           101525 0 0 -1 AT  2  2 0 poi_cleanup>
<eq           101530 0 0 -1 AT -2 -2 0 poi_cleanup>
<resource     food       1 1 MEAT>
<resource     production 1 0 INTEREST>
<@@@ END @@@>
<1574>
# Brigand Camp
<type         ITEM 1>
<createsnpcs  1>
<frequency    50>
<region       { FORESTNOTNEARTOWN 0 PLAINS 0 } >
<regionlimit  { FORESTNOTNEARTOWN 1 PLAINS 2 } >
<script       poi_cleanup>
<eq             4012 0 0  1 AT  0  7 0 poi_cleanup>
<eq             3555 0 0  1 AT  0  7 0 poi_cleanup>
<eq             2420 0 0  1 AT  0  7 0 poi_cleanup>
<eq             4334 0 0  1 AT  0  0 0 poi_cleanup>
<eq           { 101588 1 101589 1 0 3 } 0 0 -1 AT 1 1 0 poi_cleanup>
<eq           { 100086 1 101086 1 } 0 0 -1 AT  4  4 0 poi_cleanup>
<eq           { 100086 1 101086 1 } 0 0 -1 AT  4 -4 0 poi_cleanup>
<eq           { 100086 1 101086 1 } 0 0 -1 AT -4  4 0 poi_cleanup>
<eq           { 100086 1 101086 1 } 0 0 -1 AT -4 -4 0 poi_cleanup>
<eq           101525 0 0 -1 AT  2  2 0 poi_cleanup>
<eq           101530 0 0 -1 AT -2 -2 0 poi_cleanup>
<resource     food       1 1 MEAT>
<resource     production 1 0 INTEREST>
<@@@ END @@@>
<1575>
# Herd of Cows 
<type         ITEM 1>
<createsnpcs  1>
<frequency    50>
<region       { FORESTNEARTOWN 0 PLAINS 0 } >
<regionlimit  { FORESTNEARTOWN 1 PLAINS 2 } >
<script       poi_cleanup>
<eq           100508 0 0 -1 AT  0  0 0 poi_cleanup>
<eq           100508 0 0 -1 AT  4  4 0 poi_cleanup>
<eq           100508 0 0 -1 AT  4 -4 0 poi_cleanup>
<eq           100508 0 0 -1 AT -4  4 0 poi_cleanup>
<eq           100508 0 0 -1 AT -4 -4 0 poi_cleanup>
<resource     food       1 1 GRASS>
<resource     production 1 0 INTEREST>
<@@@ END @@@>
<1576>
# Herd of Deer 
<type         ITEM 1>
<createsnpcs  1>
<frequency    50>
<region       { FORESTNEARTOWN 0 FORESTNOTNEARTOWN 0 PLAINS 0 } >
<regionlimit  { FORESTNEARTOWN 2 FORESTNOTNEARTOWN 2 PLAINS 2 } >
<script       poi_cleanup>
<eq           100576 0 0 -1 AT  4  4 0 poi_cleanup>
<eq           100510 0 0 -1 AT  4  4 0 poi_cleanup>
<eq           100510 0 0 -1 AT  4 -4 0 poi_cleanup>
<eq           100510 0 0 -1 AT -4  4 0 poi_cleanup>
<eq           100510 0 0 -1 AT -4 -4 0 poi_cleanup>
<resource     food       1 1 GRASS>
<resource     production 1 0 INTEREST>
<@@@ END @@@>
<1577>
# Flock of Sheep 
<type         ITEM 1>
<createsnpcs  1>
<frequency    50>
<region       { FORESTNEARTOWN 0 PLAINS 0 } >
<regionlimit  { FORESTNEARTOWN 1 PLAINS 2 } >
<script       poi_cleanup>
<eq           { 100078 1 101078 1 } 0 0 -1 AT 0 0 0 poi_cleanup>
<eq           100524 0 0 -1 AT  4  4 0 poi_cleanup>
<eq           100524 0 0 -1 AT  4 -4 0 poi_cleanup>
<eq           100524 0 0 -1 AT -4  4 0 poi_cleanup>
<eq           100524 0 0 -1 AT -4 -4 0 poi_cleanup>
<resource     food       1 1 MEAT>
<resource     production 1 0 INTEREST>
<@@@ END @@@>
<1578>
# Pack of wolves 
<type         ITEM 1>
<createsnpcs  1>
<frequency    50>
<region       { FORESTNOTNEARTOWN 0 DARKFOREST 0 } >
<regionlimit  { FORESTNOTNEARTOWN 2 DARKFOREST 3 } >
<script       poi_cleanup>
<eq           100505 0 0 -1 AT  0  0 0 poi_cleanup>
<eq           100505 0 0 -1 AT  4  4 0 poi_cleanup>
<eq           100505 0 0 -1 AT  4 -4 0 poi_cleanup>
<eq           100505 0 0 -1 AT -4  4 0 poi_cleanup>
<eq           100505 0 0 -1 AT -4 -4 0 poi_cleanup>
<resource     food       1 1 MEAT>
<resource     production 1 0 INTEREST>
<@@@ END @@@>
<1579>
# Undead Group 
<type         ITEM 1>
<createsnpcs  1>
<frequency    50>
<region       { CEMETERY 0 } >
<regionlimit  { CEMETERY 1 } >
<script       poi_cleanup>
<eq           100534 0 0 -1 AT  0  0 0 poi_cleanup>
<eq           100541 0 0 -1 AT  4  4 0 poi_cleanup>
<eq           100541 0 0 -1 AT  4 -4 0 poi_cleanup>
<eq           100544 0 0 -1 AT -4  4 0 poi_cleanup>
<eq           100544 0 0 -1 AT -4 -4 0 poi_cleanup>
<resource     food       1 1 SPOOKINESS>
<resource     production 1 0 INTEREST>
<@@@ END @@@>
<1580>
# Herd of Goats 
<type         ITEM 1>
<createsnpcs  1>
<frequency    50>
<region       { FORESTNEARTOWN 0 PLAINS 0 } >
<regionlimit  { FORESTNEARTOWN 1 PLAINS 2 } >
<script       poi_cleanup>
<eq           100513 0 0 -1 AT  0  0 0 poi_cleanup>
<eq           100513 0 0 -1 AT  4  4 0 poi_cleanup>
<eq           100513 0 0 -1 AT  4 -4 0 poi_cleanup>
<eq           100513 0 0 -1 AT -4  4 0 poi_cleanup>
<eq           100513 0 0 -1 AT -4 -4 0 poi_cleanup>
<resource     food       1 1 GRASS>
<resource     production 1 0 INTEREST>
<@@@ END @@@>
<1581>
# Swarm of Easy Mongbats 
<type         ITEM 1>
<createsnpcs  1>
<frequency    50>
<region       { FORESTNOTNEARTOWN 0 DARKFOREST 0 } >
<regionlimit  { FORESTNOTNEARTOWN 2 DARKFOREST 3 } >
<script       poi_cleanup>
<eq           100558 0 0 -1 AT  0  0 0 poi_cleanup>
<eq           100558 0 0 -1 AT  4  4 0 poi_cleanup>
<eq           100558 0 0 -1 AT  4 -4 0 poi_cleanup>
<eq           100558 0 0 -1 AT -4  4 0 poi_cleanup>
<eq           100558 0 0 -1 AT -4 -4 0 poi_cleanup>
<resource     food       1 1 GRASS>
<resource     production 1 0 INTEREST>
<@@@ END @@@>
<1582>
# Male Evil Mage Prisoner Template
<type         NORMAL 400>
<sex          MALE>
<name         000>
<job          nobleman>
<partialhue   all_skin_colors>
<objvar       string questVillains "a group of Evil Mages">
<script       prisoner>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_ACCEPTITEM>
<convfrag     BRITANNIA_PERSONALSPACE>
<convfrag     BRITANNIA_REFUSEITEM>
<convfrag     BRITANNIA_SCAVENGER>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-16>
<notoriety    20d4+20>
<strength     1d15+30>
<dexterity    1d15+40>
<intelligence 1d15+50>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           25d10+225>
<sk           skill_magic_defense   25d10+225>
<sk           skill_battle_defense  25d10+225>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           fancy_shirt all_colors 1>
<eq           fancy_pants all_colors 1>
<eq           random_boots 0 0 1>
<@@@ END @@@>
<1583>
# Female Evil Mage Prisoner Template
<type         NORMAL 401>
<sex          FEMALE>
<name         000>
<job          noblewoman>
<partialhue   all_skin_colors>
<objvar       string questVillains "a group of Evil Mages">
<script       prisoner>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_ACCEPTITEM>
<convfrag     BRITANNIA_PERSONALSPACE>
<convfrag     BRITANNIA_REFUSEITEM>
<convfrag     BRITANNIA_SCAVENGER>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-16>
<notoriety    20d4+20>
<strength     1d15+30>
<dexterity    1d15+40>
<intelligence 1d15+50>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           25d10+225>
<sk           skill_magic_defense   25d10+225>
<sk           skill_battle_defense  25d10+225>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<eq           hair all_hair_colors 1>
<eq           full_dress all_colors 1>
<eq           random_boots 0 0 1>
<@@@ END @@@>
<1584>
# Male Good Mage Prisoner Template
<type         NORMAL 400>
<sex          MALE>
<name         000>
<job          peasant>
<partialhue   all_skin_colors>
<objvar       string questVillains "a group of Good Mages">
<script       prisoner>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_ACCEPTITEM>
<convfrag     BRITANNIA_PERSONALSPACE>
<convfrag     BRITANNIA_REFUSEITEM>
<convfrag     BRITANNIA_SCAVENGER>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-16>
<notoriety    20d4-80>
<strength     1d15+30>
<dexterity    1d15+40>
<intelligence 1d15+50>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           25d10+225>
<sk           skill_magic_defense   25d10+225>
<sk           skill_battle_defense  25d10+225>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           fancy_shirt all_colors 1>
<eq           fancy_pants all_colors 1>
<eq           random_boots 0 0 1>
<@@@ END @@@>
<1585>
# Female Good Mage Prisoner Template
<type         NORMAL 401>
<sex          FEMALE>
<name         000>
<job          peasant>
<partialhue   all_skin_colors>
<objvar       string questVillains "a group of Good Mages">
<script       prisoner>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_ACCEPTITEM>
<convfrag     BRITANNIA_PERSONALSPACE>
<convfrag     BRITANNIA_REFUSEITEM>
<convfrag     BRITANNIA_SCAVENGER>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-16>
<notoriety    20d4-20>
<strength     1d15+30>
<dexterity    1d15+40>
<intelligence 1d15+50>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           25d10+225>
<sk           skill_magic_defense   25d10+225>
<sk           skill_battle_defense  25d10+225>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<eq           hair all_hair_colors 1>
<eq           plain_dress all_colors 1>
<eq           random_boots 0 0 1>
<@@@ END @@@>
<1586>
# Male Warlord Prisoner Template
<type         NORMAL 400>
<sex          MALE>
<name         000>
<job          nobleman>
<partialhue   all_skin_colors>
<objvar       string questVillains "an upstart warlord">
<script       prisoner>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_ACCEPTITEM>
<convfrag     BRITANNIA_PERSONALSPACE>
<convfrag     BRITANNIA_REFUSEITEM>
<convfrag     BRITANNIA_SCAVENGER>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-16>
<notoriety    20d4+20>
<strength     1d15+30>
<dexterity    1d15+40>
<intelligence 1d15+50>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           25d10+225>
<sk           skill_magic_defense   25d10+225>
<sk           skill_battle_defense  25d10+225>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           fancy_shirt all_colors 1>
<eq           fancy_pants all_colors 1>
<eq           random_boots 0 0 1>
<@@@ END @@@>
<1587>
# Female Warlord Prisoner Template
<type         NORMAL 401>
<sex          FEMALE>
<name         000>
<job          noblewoman>
<partialhue   all_skin_colors>
<objvar       string questVillains "an upstart warlord">
<script       prisoner>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_ACCEPTITEM>
<convfrag     BRITANNIA_PERSONALSPACE>
<convfrag     BRITANNIA_REFUSEITEM>
<convfrag     BRITANNIA_SCAVENGER>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-16>
<notoriety    20d4+20>
<strength     1d15+30>
<dexterity    1d15+40>
<intelligence 1d15+50>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           25d10+225>
<sk           skill_magic_defense   25d10+225>
<sk           skill_battle_defense  25d10+225>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<eq           hair all_hair_colors 1>
<eq           full_dress all_colors 1>
<eq           random_boots 0 0 1>
<@@@ END @@@>
<1588>
# Male Brigand Prisoner Template
<type         NORMAL 400>
<sex          MALE>
<name         000>
<job          nobleman>
<partialhue   all_skin_colors>
<objvar       string questVillains "a band of brigands">
<script       prisoner>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_ACCEPTITEM>
<convfrag     BRITANNIA_PERSONALSPACE>
<convfrag     BRITANNIA_REFUSEITEM>
<convfrag     BRITANNIA_SCAVENGER>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-16>
<notoriety    20d4+20>
<strength     1d15+30>
<dexterity    1d15+40>
<intelligence 1d15+50>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           25d10+225>
<sk           skill_magic_defense   25d10+225>
<sk           skill_battle_defense  25d10+225>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           fancy_shirt all_colors 1>
<eq           fancy_pants all_colors 1>
<eq           random_boots 0 0 1>
<@@@ END @@@>
<1589>
# Female Brigand Prisoner Template
<type         NORMAL 401>
<sex          FEMALE>
<name         000>
<job          noblewoman>
<partialhue   all_skin_colors>
<objvar       string questVillains "a band of brigands">
<script       prisoner>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_ACCEPTITEM>
<convfrag     BRITANNIA_PERSONALSPACE>
<convfrag     BRITANNIA_REFUSEITEM>
<convfrag     BRITANNIA_SCAVENGER>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-16>
<notoriety    20d4+20>
<strength     1d15+30>
<dexterity    1d15+40>
<intelligence 1d15+50>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           25d10+225>
<sk           skill_magic_defense   25d10+225>
<sk           skill_battle_defense  25d10+225>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<eq           hair all_hair_colors 1>
<eq           full_dress all_colors 1>
<eq           random_boots 0 0 1>
<@@@ END @@@>
<1590>
# Male Lizardman Prisoner Template
<type         NORMAL 400>
<sex          MALE>
<name         000>
<job          nobleman>
<partialhue   all_skin_colors>
<objvar       string questVillains "a tribe of lizardmen">
<script       prisoner>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_ACCEPTITEM>
<convfrag     BRITANNIA_PERSONALSPACE>
<convfrag     BRITANNIA_REFUSEITEM>
<convfrag     BRITANNIA_SCAVENGER>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-16>
<notoriety    20d4+20>
<strength     1d15+30>
<dexterity    1d15+40>
<intelligence 1d15+50>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           25d10+225>
<sk           skill_magic_defense   25d10+225>
<sk           skill_battle_defense  25d10+225>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           fancy_shirt all_colors 1>
<eq           fancy_pants all_colors 1>
<eq           random_boots 0 0 1>
<@@@ END @@@>
<1591>
# Female Lizardman Prisoner Template
<type         NORMAL 401>
<sex          FEMALE>
<name         000>
<job          noblewoman>
<partialhue   all_skin_colors>
<objvar       string questVillains "a tribe of lizardmen">
<script       prisoner>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_ACCEPTITEM>
<convfrag     BRITANNIA_PERSONALSPACE>
<convfrag     BRITANNIA_REFUSEITEM>
<convfrag     BRITANNIA_SCAVENGER>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-16>
<notoriety    20d4+20>
<strength     1d15+30>
<dexterity    1d15+40>
<intelligence 1d15+50>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           25d10+225>
<sk           skill_magic_defense   25d10+225>
<sk           skill_battle_defense  25d10+225>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<eq           hair all_hair_colors 1>
<eq           full_dress all_colors 1>
<eq           random_boots 0 0 1>
<@@@ END @@@>
<1592>
# Male Ratman Prisoner Template
<type         NORMAL 400>
<sex          MALE>
<name         000>
<job          nobleman>
<partialhue   all_skin_colors>
<objvar       string questVillains "a pack of Ratmen">
<script       prisoner>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_ACCEPTITEM>
<convfrag     BRITANNIA_PERSONALSPACE>
<convfrag     BRITANNIA_REFUSEITEM>
<convfrag     BRITANNIA_SCAVENGER>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-16>
<notoriety    20d4+20>
<strength     1d15+30>
<dexterity    1d15+40>
<intelligence 1d15+50>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           25d10+225>
<sk           skill_magic_defense   25d10+225>
<sk           skill_battle_defense  25d10+225>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           fancy_shirt all_colors 1>
<eq           fancy_pants all_colors 1>
<eq           random_boots 0 0 1>
<@@@ END @@@>
<1593>
# Female Ratman Prisoner Template
<type         NORMAL 401>
<sex          FEMALE>
<name         000>
<job          noblewoman>
<partialhue   all_skin_colors>
<objvar       string questVillains "a pack of ratmen">
<script       prisoner>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_ACCEPTITEM>
<convfrag     BRITANNIA_PERSONALSPACE>
<convfrag     BRITANNIA_REFUSEITEM>
<convfrag     BRITANNIA_SCAVENGER>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-16>
<notoriety    20d4+20>
<strength     1d15+30>
<dexterity    1d15+40>
<intelligence 1d15+50>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           25d10+225>
<sk           skill_magic_defense   25d10+225>
<sk           skill_battle_defense  25d10+225>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<eq           hair all_hair_colors 1>
<eq           full_dress all_colors 1>
<eq           random_boots 0 0 1>
<@@@ END @@@>
<1594>
# Male Orc Prisoner Template
<type         NORMAL 400>
<sex          MALE>
<name         000>
<job          nobleman>
<partialhue   all_skin_colors>
<objvar       string questVillains "a band of orcs">
<script       prisoner>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_ACCEPTITEM>
<convfrag     BRITANNIA_PERSONALSPACE>
<convfrag     BRITANNIA_REFUSEITEM>
<convfrag     BRITANNIA_SCAVENGER>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-16>
<notoriety    20d4+20>
<strength     1d15+30>
<dexterity    1d15+40>
<intelligence 1d15+50>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           25d10+225>
<sk           skill_magic_defense   25d10+225>
<sk           skill_battle_defense  25d10+225>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           fancy_shirt all_colors 1>
<eq           fancy_pants all_colors 1>
<eq           random_boots 0 0 1>
<@@@ END @@@>
<1595>
# Female Orc Prisoner Template
<type         NORMAL 401>
<sex          FEMALE>
<name         000>
<job          noblewoman>
<partialhue   all_skin_colors>
<objvar       string questVillains "a band of orcs">
<script       prisoner>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_ACCEPTITEM>
<convfrag     BRITANNIA_PERSONALSPACE>
<convfrag     BRITANNIA_REFUSEITEM>
<convfrag     BRITANNIA_SCAVENGER>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-16>
<notoriety    20d4+20>
<strength     1d15+30>
<dexterity    1d15+40>
<intelligence 1d15+50>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           25d10+225>
<sk           skill_magic_defense   25d10+225>
<sk           skill_battle_defense  25d10+225>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<eq           hair all_hair_colors 1>
<eq           full_dress all_colors 1>
<eq           random_boots 0 0 1>
<@@@ END @@@>
<1599>
# Gold Pile Template "Special" quality
<type          ITEM 3821>
<quantity      2000>
<resource      food       1 1 INTEREST>
<resource      production 1 0 GOLD>
<@@@ END @@@>
<1600>
# Shadowlord Nosfentor
<type           normal 400>
<name 1600>
<objvar string lookAtText "Nosfentor">
<job          Shadowlord of Cowardice>
<eq  301603 0 0 1>
<@@@ END @@@>
<1601>
# Shadowlord Faulinei
<type           normal 400>
<name 1601>
<objvar string lookAtText "Faulinei">
<job          Shadowlord of Falsehood>
<eq  301603 0 0 1>
<@@@ END @@@>
<1602>
# Shadowlord Astaroth
<type           normal 400>
<name 1602>
<objvar string lookAtText "Astaroth">
<job          Shadowlord of Hatred>
<eq  301603 0 0 1>
<@@@ END @@@>
<1603>
# Shadowlord inclusion template
<type           none 0>
<sex other>
<eq 8270 2306 2306 1>
<hue 2306>
<strength 1000>
<intelligence 1000>
<dexterity 1000>
<hp str>
<mana int>
<stamina dex>
<alignment    EVIL>
<attitude     1d41-21>
<notoriety    -1000d1>
<movetype MT_GHOST>
<sk           skill_melee           9999>
<sk           skill_magic_defense   9999>
<sk           skill_battle_defense  9999>
<sk           skill_weapon_slashing 9999>
<sk           skill_weapon_bashing  9999>
<sk           skill_weapon_piercing 9999>
<sk           skill_weapon_hand     9999>
<sk           skill_detect_hidden   9999>
<sk           skill_forensics       9999>
<immunities   slashing>
<immunities   piercing>
<immunities   bashing>
<immunities   ranged>
<immunities   poison>
<immunities   magic>
<immunities   fire>
<immunities   lightning>
<immunities   ice>
<@@@ END @@@>
<1604>
# Male Healer Escort Template
<type         NORMAL 400>
<frequency    100>
<region       { CITY 0 } >
<regionlimit  { CITY 1 } >
<job          wandering healer>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int questEscortType 0>
<script       escort>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_WANDERHEALER>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+70>
<dexterity    1d15+80>
<intelligence 1d15+85>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           25d10+625>
<sk           skill_magic_defense   25d10+625>
<sk           skill_battle_defense  25d10+625>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_first_aid       25d10+525>
<sk           skill_anatomy         25d10+525>
<sk           skill_seance          25d10+525>
<sk           skill_forensics       25d10+325>
<resistances  slashing>
<resistances  piercing>
<resistances  bashing>
<resistances  ranged>
<resistances  poison>
<resistances  magic>
<resistances  fire>
<resistances  lightning>
<resistances  ice>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           robe yellow_colors 1>
<eq           sandals 0 0 1>
<eq           random_coin_purse 0 0 1>
<@@@ END @@@>
<1605>
# Female Healer Escort Template
<type         NORMAL 401>
<frequency    100>
<region       { CITY 0 } >
<regionlimit  { CITY 1 } >
<job          wandering healer>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int questEscortType 0>
<script       escort>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_WANDERHEALER>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+70>
<dexterity    1d15+80>
<intelligence 1d15+85>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           25d10+625>
<sk           skill_magic_defense   25d10+625>
<sk           skill_battle_defense  25d10+625>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_first_aid       25d10+525>
<sk           skill_anatomy         25d10+525>
<sk           skill_seance          25d10+525>
<sk           skill_forensics       25d10+325>
<resistances  slashing>
<resistances  piercing>
<resistances  bashing>
<resistances  ranged>
<resistances  poison>
<resistances  magic>
<resistances  fire>
<resistances  lightning>
<resistances  ice>
<eq           female_hair all_hair_colors 1>
<eq           robe yellow_colors 1>
<eq           sandals 0 0 1>
<eq           random_coin_purse 0 0 1>
<@@@ END @@@>
<1606>
# Male Student Escort Template
<type         NORMAL 400>
<frequency    100>
<region       { CITY 0 } >
<regionlimit  { CITY 1 } >
<job          peasant>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int questEscortType 1>
<script       escort>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_LABORER>
<convfrag     BRITANNIA_ACCEPTITEM>
<convfrag     BRITANNIA_PERSONALSPACE>
<convfrag     BRITANNIA_NEEDRESPONSE>
<convfrag     BRITANNIA_REFUSEITEM>
<convfrag     BRITANNIA_SCAVENGER>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !1d10>
<strength     1d15+35>
<dexterity    1d15+30>
<intelligence 1d15+35>
<hp           STR>
<mana         INT>
<stamina      DEX>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           plain_shirt all_colors 1>
<eq           plain_pants all_colors 1>
<eq           poor_backpack 0 0 1>
<@@@ END @@@>
<1607>
# Female Student Escort Template
<type         NORMAL 401>
<frequency    100>
<region       { CITY 0 } >
<regionlimit  { CITY 1 } >
<job          peasant>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int questEscortType 1>
<script       escort>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_LABORER>
<convfrag     BRITANNIA_ACCEPTITEM>
<convfrag     BRITANNIA_PERSONALSPACE>
<convfrag     BRITANNIA_NEEDRESPONSE>
<convfrag     BRITANNIA_REFUSEITEM>
<convfrag     BRITANNIA_SCAVENGER>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !1d10>
<strength     1d15+35>
<dexterity    1d15+30>
<intelligence 1d15+35>
<hp           STR>
<mana         INT>
<stamina      DEX>
<eq           female_hair all_hair_colors 1>
<eq           plain_shirt all_colors 1>
<eq           skirt all_colors 1>
<eq           poor_backpack 0 0 1>
<@@@ END @@@>
<1608>
# Groom Escort Template
<type         NORMAL 400>
<frequency    100>
<region       { CITY 0 } >
<regionlimit  { CITY 1 } >
<job          peasant>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int questEscortType 1>
<script       escort>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_LABORER>
<convfrag     BRITANNIA_ACCEPTITEM>
<convfrag     BRITANNIA_PERSONALSPACE>
<convfrag     BRITANNIA_NEEDRESPONSE>
<convfrag     BRITANNIA_REFUSEITEM>
<convfrag     BRITANNIA_SCAVENGER>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !1d10>
<strength     1d15+35>
<dexterity    1d15+30>
<intelligence 1d15+35>
<hp           STR>
<mana         INT>
<stamina      DEX>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           plain_shirt all_colors 1>
<eq           plain_pants all_colors 1>
<eq           poor_backpack 0 0 1>
<@@@ END @@@>
<1609>
# Bride Escort Template
<type         NORMAL 401>
<frequency    100>
<region       { CITY 0 } >
<regionlimit  { CITY 1 } >
<job          peasant>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int questEscortType 1>
<script       escort>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_LABORER>
<convfrag     BRITANNIA_ACCEPTITEM>
<convfrag     BRITANNIA_PERSONALSPACE>
<convfrag     BRITANNIA_NEEDRESPONSE>
<convfrag     BRITANNIA_REFUSEITEM>
<convfrag     BRITANNIA_SCAVENGER>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !1d10>
<strength     1d15+35>
<dexterity    1d15+30>
<intelligence 1d15+35>
<hp           STR>
<mana         INT>
<stamina      DEX>
<eq           female_hair all_hair_colors 1>
<eq           plain_shirt all_colors 1>
<eq           skirt all_colors 1>
<eq           poor_backpack 0 0 1>
<@@@ END @@@>
<1610>
# Male Mage Escort Template
<type         NORMAL 400>
<frequency    100>
<region       { CITY 0 } >
<regionlimit  { CITY 1 } >
<job          mage>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int questEscortType 3>
<objvar       int spellCastersLevel 1d6+2>
<script       escort>
<script       spellai>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_MAGE>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+60>
<dexterity    1d15+70>
<intelligence 1d15+85>
<hp           STR>
<mana         INT>
<stamina      DEX>
<resistances  magic>
<sk           skill_melee          25d10+525>
<sk           skill_magic_defense  25d10+625>
<sk           skill_battle_defense 25d10+525>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_magic          1d150+850>
<sk           skill_inscribe       1d150+500>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           robe blue_colors 1>
<eq           random_coin_purse 0 0 1>
<@@@ END @@@>
<1611>
# Female Mage Escort Template
<type         NORMAL 401>
<frequency    100>
<region       { CITY 0 } >
<regionlimit  { CITY 1 } >
<job          mage>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int questEscortType 3>
<objvar       int spellCastersLevel 1d6+2>
<script       escort>
<script       spellai>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_MAGE>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !2d30+15>
<strength     1d15+60>
<dexterity    1d15+70>
<intelligence 1d15+85>
<hp           STR>
<mana         INT>
<stamina      DEX>
<resistances  magic>
<sk           skill_melee           25d10+525>
<sk           skill_magic_defense   25d10+625>
<sk           skill_battle_defense  25d10+525>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_magic           1d150+850>
<sk           skill_inscribe        1d150+500>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           robe blue_colors 1>
<eq           random_coin_purse 0 0 1>
<@@@ END @@@>
<1612>
# Male Merchant Escort Template
<type         NORMAL 400>
<frequency    100>
<region       { CITY 0 } >
<regionlimit  { CITY 1 } >
<job          merchant>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int questEscortType 4>
<script       escort>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_PROVISIONER>
<convfrag     BRITANNIA_GUILDMASTER>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !10d5+25>
<strength     1d15+70>
<dexterity    1d15+85>
<intelligence 1d15+85>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           25d10+250>
<sk           skill_magic_defense   25d10+250>
<sk           skill_battle_defense  25d10+250>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_appraise        25d10+525>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           fancy_shirt all_colors 1>
<eq           fancy_pants all_colors 1>
<eq           plain_shoes neutral_colors 1>
<eq           random_coin_purse 0 0 1>
<@@@ END @@@>
<1613>
# Female Merchant Escort Template
<type         NORMAL 401>
<frequency    100>
<region       { CITY 0 } >
<regionlimit  { CITY 1 } >
<job          merchant>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int questEscortType 4>
<script       escort>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_PROVISIONER>
<convfrag     BRITANNIA_GUILDMASTER>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !10d5+25>
<strength     1d15+70>
<dexterity    1d15+85>
<intelligence 1d15+85>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           25d10+250>
<sk           skill_magic_defense   25d10+250>
<sk           skill_battle_defense  25d10+250>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<sk           skill_appraise        25d10+525>
<eq           female_hair all_hair_colors 1>
<eq           fancy_shirt all_colors 1>
<eq           skirt all_colors 1>
<eq           plain_shoes neutral_colors 1>
<eq           random_coin_purse 0 0 1>
<@@@ END @@@>
<1614>
# Male Messenger Escort Template
<type         NORMAL 400>
<frequency    100>
<region       { CITY 0 } >
<regionlimit  { CITY 1 } >
<job          messenger>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int questEscortType 5>
<script       escort>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_LABORER>
<convfrag     BRITANNIA_ACCEPTITEM>
<convfrag     BRITANNIA_PERSONALSPACE>
<convfrag     BRITANNIA_NEEDRESPONSE>
<convfrag     BRITANNIA_REFUSEITEM>
<convfrag     BRITANNIA_SCAVENGER>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !1d10>
<strength     1d15+35>
<dexterity    1d15+30>
<intelligence 1d15+35>
<hp           STR>
<mana         INT>
<stamina      DEX>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           plain_shirt all_colors 1>
<eq           plain_pants all_colors 1>
<eq           poor_backpack 0 0 1>
<@@@ END @@@>
<1615>
# Female Messenger Escort Template
<type         NORMAL 401>
<frequency    100>
<job          messenger>
<region       { CITY 0 } >
<regionlimit  { CITY 1 } >
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int questEscortType 5>
<script       escort>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_LABORER>
<convfrag     BRITANNIA_ACCEPTITEM>
<convfrag     BRITANNIA_PERSONALSPACE>
<convfrag     BRITANNIA_NEEDRESPONSE>
<convfrag     BRITANNIA_REFUSEITEM>
<convfrag     BRITANNIA_SCAVENGER>
<alignment    NEUTRAL>
<attitude     1d41-21>
<notoriety    !1d10>
<strength     1d15+35>
<dexterity    1d15+30>
<intelligence 1d15+35>
<hp           STR>
<mana         INT>
<stamina      DEX>
<eq           female_hair all_hair_colors 1>
<eq           plain_shirt all_colors 1>
<eq           skirt all_colors 1>
<eq           poor_backpack 0 0 1>
<@@@ END @@@>
<1616>
# Male Noble Escort Template
<type         NORMAL 400>
<frequency    100>
<region       { CITY 0 } >
<regionlimit  { CITY 1 } >
<job          noble>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int questEscortType 6>
<script       escort>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_NOBLE>
<convfrag     BRITANNIA_ACCEPTITEM>
<convfrag     BRITANNIA_PERSONALSPACE>
<convfrag     BRITANNIA_NEEDRESPONSE>
<convfrag     BRITANNIA_REFUSEITEM>
<convfrag     BRITANNIA_SCAVENGER>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-16>
<notoriety    !20d4+20>
<strength     1d15+30>
<dexterity    1d15+40>
<intelligence 1d15+50>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+225>
<sk           skill_magic_defense  25d10+225>
<sk           skill_battle_defense 25d10+225>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           fancy_shirt all_colors 1>
<eq           fancy_pants all_colors 1>
<eq           cloak all_colors 1>
<eq           sash_1 all_colors 1>
<eq           random_boots 0 0 1>
<eq           long_sword 0 0 1>
<eq           filthy_rich_backpack 0 0 1>
<@@@ END @@@>
<1617>
# Female Noble Escort Template
<type         NORMAL 401>
<frequency    100>
<region       { CITY 0 } >
<regionlimit  { CITY 1 } >
<job          noble>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int questEscortType 6>
<script       escort>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_NOBLE>
<convfrag     BRITANNIA_ACCEPTITEM>
<convfrag     BRITANNIA_PERSONALSPACE>
<convfrag     BRITANNIA_NEEDRESPONSE>
<convfrag     BRITANNIA_REFUSEITEM>
<convfrag     BRITANNIA_SCAVENGER>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-16>
<notoriety    !20d4+20>
<strength     1d15+30>
<dexterity    1d15+40>
<intelligence 1d15+50>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+225>
<sk           skill_magic_defense  25d10+225>
<sk           skill_battle_defense 25d10+225>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<eq           female_hair all_hair_colors 1>
<eq           full_dress neutral_colors 1>
<eq           cloak all_colors 1>
<eq           sash_1 all_colors 1>
<eq           random_boots 0 0 1>
<eq           long_sword 0 0 1>
<eq           filthy_rich_backpack 0 0 1>
<@@@ END @@@>
<1618>
# Male Adventure Seeker Escort Template
<type         NORMAL 400>
<frequency    100>
<region       { CITY 0 } >
<regionlimit  { CITY 1 } >
<job          seeker of adventure>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int questEscortType 7>
<script       escort>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_NOBLE>
<convfrag     BRITANNIA_ACCEPTITEM>
<convfrag     BRITANNIA_PERSONALSPACE>
<convfrag     BRITANNIA_NEEDRESPONSE>
<convfrag     BRITANNIA_REFUSEITEM>
<convfrag     BRITANNIA_SCAVENGER>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-16>
<notoriety    !20d4+20>
<strength     1d15+30>
<dexterity    1d15+40>
<intelligence 1d15+50>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+225>
<sk           skill_magic_defense  25d10+225>
<sk           skill_battle_defense 25d10+225>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           fancy_shirt all_colors 1>
<eq           fancy_pants all_colors 1>
<eq           cloak all_colors 1>
<eq           sash_1 all_colors 1>
<eq           random_boots 0 0 1>
<eq           long_sword 0 0 1>
<eq           filthy_rich_backpack 0 0 1>
<@@@ END @@@>
<1619>
# Female Adventure Seeker Escort Template
<type         NORMAL 401>
<frequency    100>
<region       { CITY 0 } >
<regionlimit  { CITY 1 } >
<job          seeker of adventure>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<objvar       int questEscortType 7>
<script       escort>
<convfrag     BRITANNIA_GENERAL>
<convfrag     BRITANNIA_NEEDS>
<convfrag     BRITANNIA_INIT>
<convfrag     BRITANNIA_NOBLE>
<convfrag     BRITANNIA_ACCEPTITEM>
<convfrag     BRITANNIA_PERSONALSPACE>
<convfrag     BRITANNIA_NEEDRESPONSE>
<convfrag     BRITANNIA_REFUSEITEM>
<convfrag     BRITANNIA_SCAVENGER>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-16>
<notoriety    !20d4+20>
<strength     1d15+30>
<dexterity    1d15+40>
<intelligence 1d15+50>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+225>
<sk           skill_magic_defense  25d10+225>
<sk           skill_battle_defense 25d10+225>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<eq           female_hair all_hair_colors 1>
<eq           full_dress neutral_colors 1>
<eq           cloak all_colors 1>
<eq           sash_1 all_colors 1>
<eq           random_boots 0 0 1>
<eq           long_sword 0 0 1>
<eq           filthy_rich_backpack 0 0 1>
<@@@ END @@@>
<1620>
# LIZARD GROUP
<type         ITEM 1>
<createsnpcs  1>
<script 	poi_cleanup>
<eq           100535 0 0 -1 AT  1 -1 0 >
<eq           100591 0 0 -1 AT  2  2 0 >
<eq           100592 0 0 -1 AT  2 -2 0 >
<eq           100562 0 0 -1 AT -2  2 0 >
<eq           100500 0 0 -1 AT -2 -2 0 >
<eq           100535 0 0 -1 AT -3 -3 0 >
<resource     food       1 1 HUMANS>
<resource     production 1 0 INTEREST>
<@@@ END @@@>
<1621>
# COMMAND ORC GROUP
<type         ITEM 1>
<frequency      100>
<createsnpcs  1>
<script         poi_cleanup>
<eq           100549 0 0 -1 AT  1 -1 0 >
<eq           100522 0 0 -1 AT  2  2 0 >
<eq           100522 0 0 -1 AT  2 -2 0 >
<eq           100528 0 0 -1 AT -2  2 0 >
<eq           100549 0 0 -1 AT -2 -2 0 >
<eq           100522 0 0 -1 AT -3 -3 0 >
<eq           100528 0 0 -1 AT  3 -3 0 >
<resource     food       1 1 HUMANS>
<resource     production 1 0 INTEREST>
<@@@ END @@@>
<1622>
# JUNGLE MIXED GROUP 1
<type         ITEM 1>
<frequency      100>
<createsnpcs  1>
<script         poi_cleanup>
<eq           100561 0 0 -1 AT  1 -1 0 >
<eq           100561 0 0 -1 AT  2  2 0 >
<eq           100532 0 0 -1 AT  2 -2 0 >
<eq           100581 0 0 -1 AT -2  2 0 >
<eq           100577 0 0 -1 AT -2 -2 0 >
<eq           100561 0 0 -1 AT -3 -3 0 >
<eq           100561 0 0 -1 AT  3 -3 0 >
<resource     food       1 1 HUMANS>
<resource     production 1 0 INTEREST>
<@@@ END @@@>
<1623>
# SPIDER AND SCORPION GROUP 
<type         ITEM 1>
<frequency      100>
<createsnpcs  1>
<script         poi_cleanup>
<eq           100556 0 0 -1 AT  1 -1 0 >
<eq           100556 0 0 -1 AT  2  2 0 >
<eq           100532 0 0 -1 AT  2 -2 0 >
<eq           100556 0 0 -1 AT -2  2 0 >
<eq           100532 0 0 -1 AT -2 -2 0 >
<eq           100532 0 0 -1 AT -3 -3 0 >
<eq           100556 0 0 -1 AT  3 -3 0 >
<eq           100532 0 0 -1 AT -3  3 0 >
<resource     food       1 1 HUMANS>
<resource     production 1 0 INTEREST>
<@@@ END @@@>
<1624>
# CORPSER AND REAPER GROUP 
<type         ITEM 1>
<frequency      100>
<createsnpcs  1>
<script         poi_cleanup>
<eq           100539 0 0 -1 AT  1 -1 0 >
<eq           100551 0 0 -1 AT  2  2 0 >
<eq           100539 0 0 -1 AT  2 -2 0 >
<eq           100551 0 0 -1 AT -2  2 0 >
<eq           100539 0 0 -1 AT -2 -2 0 >
<eq           100551 0 0 -1 AT -3 -3 0 >
<resource     food       1 1 HUMANS>
<resource     production 1 0 INTEREST>
<@@@ END @@@>
<1625>
# SPIDER AND SCORPION GROUP 
<type         ITEM 1>
<frequency      100>
<createsnpcs  1>
<script         poi_cleanup>
<eq           100527 0 0 -1 AT  1 -1 0 >
<eq           100556 0 0 -1 AT  2  2 0 >
<eq           100532 0 0 -1 AT  2 -2 0 >
<eq           100556 0 0 -1 AT -2  2 0 >
<eq           100532 0 0 -1 AT -2 -2 0 >
<eq           100532 0 0 -1 AT -3 -3 0 >
<eq           100556 0 0 -1 AT  3 -3 0 >
<eq           100527 0 0 -1 AT -3  3 0 >
<resource     food       1 1 HUMANS>
<resource     production 1 0 INTEREST>
<@@@ END @@@>
<1626>
# SPIDER SCORPION AND SNAKE GROUP 
<type         ITEM 1>
<frequency      100>
<createsnpcs  1>
<script         poi_cleanup>
<eq           100581 0 0 -1 AT  1 -1 0 >
<eq           100556 0 0 -1 AT  2  2 0 >
<eq           100532 0 0 -1 AT  2 -2 0 >
<eq           100581 0 0 -1 AT -2  2 0 >
<eq           100532 0 0 -1 AT -2 -2 0 >
<eq           100581 0 0 -1 AT -3 -3 0 >
<eq           100556 0 0 -1 AT  3 -3 0 >
<eq           100581 0 0 -1 AT -3  3 0 >
<resource     food       1 1 HUMANS>
<resource     production 1 0 INTEREST>
<@@@ END @@@>
<1627>
# SKELETONS ORCS AND GAZERS GROUP 
<type         ITEM 1>
<frequency      100>
<createsnpcs  1>
<script         poi_cleanup>
<eq           100541 0 0 -1 AT  1 -1 0 >
<eq           100560 0 0 -1 AT  2  2 0 >
<eq           100538 0 0 -1 AT  2 -2 0 >
<eq           100541 0 0 -1 AT -2  2 0 >
<eq           100538 0 0 -1 AT -2 -2 0 >
<eq           100538 0 0 -1 AT -3 -3 0 >
<eq           100560 0 0 -1 AT  3 -3 0 >
<eq           100541 0 0 -1 AT -3  3 0 >
<resource     food       1 1 HUMANS>
<resource     production 1 0 INTEREST>
<@@@ END @@@>
<1628>
# LIZARDMEN AND RATMEN 
<type         ITEM 1>
<createsnpcs  1>
<script         poi_cleanup>
<eq           100535 0 0 -1 AT  1 -1 0 >
<eq           100561 0 0 -1 AT  2  2 0 >
<eq           100535 0 0 -1 AT  2 -2 0 >
<eq           100561 0 0 -1 AT -2  2 0 >
<eq           100561 0 0 -1 AT -2 -2 0 >
<eq           100561 0 0 -1 AT -3 -3 0 >
<eq           100535 0 0 -1 AT  3 -3 0 >
<eq           100535 0 0 -1 AT -3  3 0 >
<resource     food       1 1 HUMANS>
<resource     production 1 0 INTEREST>
<@@@ END @@@>
<1700>
# House deed template
<type         ITEM open_map>
<objvar int stockmap 1>
<objvar string lookAtText "map of Trinsic">
<objvar int mapx1 1000>
<objvar int mapy1 1000>
<objvar int mapx2 3000>
<objvar int mapy2 3000>
<objvar int mapwidth 500>
<objvar int mapheight 500>
<script mapstock>
<@@@ END @@@>
<1701>
# Map of Vesper template
<type         ITEM open_map>
<objvar int stockmap 1>
<objvar string lookAtText "map of Vesper">
<objvar int mapx1 2636>
<objvar int mapy1 592>
<objvar int mapx2 3064>
<objvar int mapy2 1012>
<objvar int mapwidth 200>
<objvar int mapheight 200>
<script mapstock>
<@@@ END @@@>
<1702>
# Map of Yew template
<type         ITEM open_map>
<objvar int stockmap 1>
<objvar string lookAtText "map of Yew">
<objvar int mapx1 236>
<objvar int mapy1 741>
<objvar int mapx2 766>
<objvar int mapy2 1269>
<objvar int mapwidth 200>
<objvar int mapheight 200>
<script mapstock>
<@@@ END @@@>
<1703>
# Map of Skara Brae template
<type         ITEM open_map>
<objvar int stockmap 1>
<objvar string lookAtText "map of Skara Brae">
<objvar int mapx1 524>
<objvar int mapy1 2064>
<objvar int mapx2 960>
<objvar int mapy2 2452>
<objvar int mapwidth 200>
<objvar int mapheight 200>
<script mapstock>
<@@@ END @@@>
<1704>
# Map of Jhelom template
<type         ITEM open_map>
<objvar int stockmap 1>
<objvar string lookAtText "map of Jhelom">
<objvar int mapx1 1088>
<objvar int mapy1 3572>
<objvar int mapx2 1528>
<objvar int mapy2 4056>
<objvar int mapwidth 200>
<objvar int mapheight 200>
<script mapstock>
<@@@ END @@@>
<1705>
# Map of Trinsic template
<type         ITEM open_map>
<objvar int stockmap 1>
<objvar string lookAtText "map of Trinsic">
<objvar int mapx1 1792>
<objvar int mapy1 2630>
<objvar int mapx2 2118>
<objvar int mapy2 2952>
<objvar int mapwidth 200>
<objvar int mapheight 200>
<script mapstock>
<@@@ END @@@>
<1706>
# Map of Minoc template
<type         ITEM open_map>
<objvar int stockmap 1>
<objvar string lookAtText "map of Minoc">
<objvar int mapx1 2360>
<objvar int mapy1 356>
<objvar int mapx2 2706>
<objvar int mapy2 702>
<objvar int mapwidth 200>
<objvar int mapheight 200>
<script mapstock>
<@@@ END @@@>
<1707>
# Map of Bucaneer's Den template
<type         ITEM open_map>
<objvar int stockmap 1>
<objvar string lookAtText "map of Bucaneer's Den">
<objvar int mapx1 2616>
<objvar int mapy1 2072>
<objvar int mapx2 2767>
<objvar int mapy2 2263>
<objvar int mapwidth 200>
<objvar int mapheight 200>
<script mapstock>
<@@@ END @@@>
<1708>
# Map of Serpent's Hold template
<type         ITEM open_map>
<objvar int stockmap 1>
<objvar string lookAtText "map of Serpent's Hold">
<objvar int mapx1 2714>
<objvar int mapy1 3329>
<objvar int mapx2 3100>
<objvar int mapy2 3639>
<objvar int mapwidth 200>
<objvar int mapheight 200>
<script mapstock>
<@@@ END @@@>
<1709>
# Map of Nujelm template
<type         ITEM open_map>
<objvar int stockmap 1>
<objvar string lookAtText "map of Nujelm">
<objvar int mapx1 3446>
<objvar int mapy1 1030>
<objvar int mapx2 3832>
<objvar int mapy2 1424>
<objvar int mapwidth 200>
<objvar int mapheight 200>
<script mapstock>
<@@@ END @@@>
<1710>
# Map of Magincia template
<type         ITEM open_map>
<objvar int stockmap 1>
<objvar string lookAtText "map of Magincia">
<objvar int mapx1 3530>
<objvar int mapy1 2022>
<objvar int mapx2 3818>
<objvar int mapy2 2298>
<objvar int mapwidth 200>
<objvar int mapheight 200>
<script mapstock>
<@@@ END @@@>
<1711>
# Map of Ocllo template
<type         ITEM open_map>
<objvar int stockmap 1>
<objvar string lookAtText "map of Ocllo">
<objvar int mapx1 3582>
<objvar int mapy1 2456>
<objvar int mapx2 3770>
<objvar int mapy2 2742>
<objvar int mapwidth 200>
<objvar int mapheight 200>
<script mapstock>
<@@@ END @@@>
<1712>
# Map of Moonglow template
<type         ITEM open_map>
<objvar int stockmap 1>
<objvar string lookAtText "map of Moonglow">
<objvar int mapx1 4156>
<objvar int mapy1 808>
<objvar int mapx2 4732>
<objvar int mapy2 1528>
<objvar int mapwidth 200>
<objvar int mapheight 200>
<script mapstock>
<@@@ END @@@>
<1713>
# Map of Britain template
<type         ITEM open_map>
<objvar int stockmap 1>
<objvar string lookAtText "map of Britain">
<objvar int mapx1 1092>
<objvar int mapy1 1396>
<objvar int mapx2 1736>
<objvar int mapy2 1924>
<objvar int mapwidth 200>
<objvar int mapheight 200>
<script mapstock>
<@@@ END @@@>
<1714>
# Map of Minoc to Yew template
<type         ITEM open_map>
<objvar int stockmap 1>
<objvar string lookAtText "map of Minoc to Yew">
<objvar int mapx1 0>
<objvar int mapy1 256>
<objvar int mapx2 2304>
<objvar int mapy2 3072>
<objvar int mapwidth 200>
<objvar int mapheight 200>
<script mapstock>
<@@@ END @@@>
<1715>
# Map of Minoc to Vesper template
<type         ITEM open_map>
<objvar int stockmap 1>
<objvar string lookAtText "map of Minoc to Vesper">
<objvar int mapx1 2467>
<objvar int mapy1 572>
<objvar int mapx2 2878>
<objvar int mapy2 746>
<objvar int mapwidth 200>
<objvar int mapheight 200>
<script mapstock>
<@@@ END @@@>
<1716>
# Map of Britain to Trinsic template
<type         ITEM open_map>
<objvar int stockmap 1>
<objvar string lookAtText "map of Britain to Trinsic">
<objvar int mapx1 1024>
<objvar int mapy1 1280>
<objvar int mapx2 2304>
<objvar int mapy2 3072>
<objvar int mapwidth 200>
<objvar int mapheight 200>
<script mapstock>
<@@@ END @@@>
<1717>
# Map of Trinsic to Bucaneer's Den template
<type         ITEM open_map>
<objvar int stockmap 1>
<objvar string lookAtText "map of Trinsic to Bucaneer's Den">
<objvar int mapx1 1792>
<objvar int mapy1 1792>
<objvar int mapx2 3072>
<objvar int mapy2 3072>
<objvar int mapwidth 200>
<objvar int mapheight 200>
<script mapstock>
<@@@ END @@@>
<1718>
# Map of Bucaneer's Den to Ocllo template
<type         ITEM open_map>
<objvar int stockmap 1>
<objvar string lookAtText "map of Bucaneer's Den to Ocllo">
<objvar int mapx1 2560>
<objvar int mapy1 1792>
<objvar int mapx2 3840>
<objvar int mapy2 3072>
<objvar int mapwidth 200>
<objvar int mapheight 200>
<script mapstock>
<@@@ END @@@>
<1719>
# Map of Trinsic to Jhelom template
<type         ITEM open_map>
<objvar int stockmap 1>
<objvar string lookAtText "map of Trinsic to Jhelom">
<objvar int mapx1 256>
<objvar int mapy1 1792>
<objvar int mapx2 2304>
<objvar int mapy2 4096>
<objvar int mapwidth 200>
<objvar int mapheight 200>
<script mapstock>
<@@@ END @@@>
<1720>
# Map of Vesper to Nujelm template
<type         ITEM open_map>
<objvar int stockmap 1>
<objvar string lookAtText "map of Vesper to Nujelm">
<objvar int mapx1 2636>
<objvar int mapy1 592>
<objvar int mapx2 3840>
<objvar int mapy2 1536>
<objvar int mapwidth 200>
<objvar int mapheight 200>
<script mapstock>
<@@@ END @@@>
<1721>
# Map of Nujelm to Magincia template
<type         ITEM open_map>
<objvar int stockmap 1>
<objvar string lookAtText "map of Nujelm to Magincia">
<objvar int mapx1 3328>
<objvar int mapy1 1024>
<objvar int mapx2 3840>
<objvar int mapy2 2304>
<objvar int mapwidth 200>
<objvar int mapheight 200>
<script mapstock>
<@@@ END @@@>
<1722>
# Map of Bucden to Magincia template
<type         ITEM open_map>
<objvar int stockmap 1>
<objvar string lookAtText "map of Bucden to Magincia">
<objvar int mapx1 2560>
<objvar int mapy1 1792>
<objvar int mapx2 3840>
<objvar int mapy2 2560>
<objvar int mapwidth 200>
<objvar int mapheight 200>
<script mapstock>
<@@@ END @@@>
<1723>
# Map of Magincia to Ocllo template
<type         ITEM open_map>
<objvar int stockmap 1>
<objvar string lookAtText "map of Magincia to Ocllo">
<objvar int mapx1 3328>
<objvar int mapy1 1792>
<objvar int mapx2 3840>
<objvar int mapy2 2304>
<objvar int mapwidth 200>
<objvar int mapheight 200>
<script mapstock>
<@@@ END @@@>
<1724>
# Map of Serpent's Hold to Ocllo template
<type         ITEM open_map>
<objvar int stockmap 1>
<objvar string lookAtText "map of Serpent's Hold to Ocllo">
<objvar int mapx1 2560>
<objvar int mapy1 2560>
<objvar int mapx2 3840>
<objvar int mapy2 3840>
<objvar int mapwidth 200>
<objvar int mapheight 200>
<script mapstock>
<@@@ END @@@>
<1725>
# Map of Moonglow to Nujelm template
<type         ITEM open_map>
<objvar int stockmap 1>
<objvar string lookAtText "map of Moonglow to Nujelm">
<objvar int mapx1 3328>
<objvar int mapy1 768>
<objvar int mapx2 4864>
<objvar int mapy2 1536>
<objvar int mapwidth 200>
<objvar int mapheight 200>
<script mapstock>
<@@@ END @@@>
<1726>
# Map of Yew to Britain template
<type         ITEM open_map>
<objvar int stockmap 1>
<objvar string lookAtText "map of Yew to Britain">
<objvar int mapx1 0>
<objvar int mapy1 512>
<objvar int mapx2 1792>
<objvar int mapy2 2048>
<objvar int mapwidth 200>
<objvar int mapheight 200>
<script mapstock>
<@@@ END @@@>
<1727>
# Map of Britain to Skara Brae template
<type         ITEM open_map>
<objvar int stockmap 1>
<objvar string lookAtText "map of Britain to Skara Brae">
<objvar int mapx1 256>
<objvar int mapy1 1792>
<objvar int mapx2 1736>
<objvar int mapy2 2560>
<objvar int mapwidth 200>
<objvar int mapheight 200>
<script mapstock>
<@@@ END @@@>
<1728>
# Map of The World template
<type         ITEM open_map>
<objvar int stockmap 1>
<objvar string lookAtText "map of The World">
<objvar int mapx1 0>
<objvar int mapy1 0>
<objvar int mapx2 5120>
<objvar int mapy2 4096>
<objvar int mapwidth 200>
<objvar int mapheight 200>
<script mapstock>
<@@@ END @@@>
<1800>
# Ship deed template
<type         ITEM ship_deed>
<objvar int myshiptype 0>
<objvar string lookAtText "small ship deed">
<script shipdeed>
<@@@ END @@@>
<1801>
# Ship deed template
<type         ITEM ship_deed>
<objvar int myshiptype 1>
<objvar string lookAtText "small dragon ship deed">
<script shipdeed>
<@@@ END @@@>
<1802>
# Ship deed template
<type         ITEM ship_deed>
<objvar int myshiptype 2>
<objvar string lookAtText "medium ship deed">
<script shipdeed>
<@@@ END @@@>
<1803>
# Ship deed template
<type         ITEM ship_deed>
<objvar int myshiptype 3>
<objvar string lookAtText "medium dragon ship deed">
<script shipdeed>
<@@@ END @@@>
<1804>
# Ship deed template
<type         ITEM ship_deed>
<objvar int myshiptype 4>
<objvar string lookAtText "large ship deed">
<script shipdeed>
<@@@ END @@@>
<1805>
# Ship deed template
<type         ITEM ship_deed>
<objvar int myshiptype 5>
<objvar string lookAtText "large dragon ship deed">
<script shipdeed>
<@@@ END @@@>
<1900>
# House deed template
<type         ITEM house_deed>
<objvar int myhousetype 0>
<objvar string lookAtText "deed to a stone-and-plaster house">
<script housedeed>
<@@@ END @@@>
<1901>
# House deed template
<type         ITEM house_deed>
<objvar int myhousetype 1>
<objvar string lookAtText "deed to a field stone house">
<script housedeed>
<@@@ END @@@>
<1902>
# House deed template
<type         ITEM house_deed>
<objvar int myhousetype 2>
<objvar string lookAtText "deed to a small brick house">
<script housedeed>
<@@@ END @@@>
<1903>
# House deed template
<type         ITEM house_deed>
<objvar int myhousetype 3>
<objvar string lookAtText "deed to a wooden house">
<script housedeed>
<@@@ END @@@>
<1904>
# House deed template
<type         ITEM house_deed>
<objvar int myhousetype 4>
<objvar string lookAtText "deed to a wood-and-plaster house">
<script housedeed>
<@@@ END @@@>
<1905>
# House deed template
<type         ITEM house_deed>
<objvar int myhousetype 5>
<objvar string lookAtText "deed to a thatched-roof cottage">
<script housedeed>
<@@@ END @@@>
<1906>
# House deed template
<type         ITEM house_deed>
<objvar int myhousetype 6>
<objvar string lookAtText "deed to a blue tent">
<script housedeed>
<@@@ END @@@>
<1907>
# House deed template
<type         ITEM house_deed>
<objvar int myhousetype 7>
<objvar string lookAtText "deed to a green tent">
<script housedeed>
<@@@ END @@@>
<1908>
# House deed template
<type         ITEM house_deed>
<objvar int myhousetype 8>
<objvar string lookAtText "deed to a brick house">
<script housedeed>
<@@@ END @@@>
<1909>
# House deed template
<type         ITEM house_deed>
<objvar int myhousetype 9>
<objvar string lookAtText "deed to a two-story wood-and-plaster house">
<script housedeed>
<@@@ END @@@>
<1910>
# House deed template
<type         ITEM house_deed>
<objvar int myhousetype 10>
<objvar string lookAtText "a deed to a two-story stone-and-plaster house">
<script housedeed>
<@@@ END @@@>
<1911>
# House deed template
<type         ITEM house_deed>
<objvar int myhousetype 11>
<objvar string lookAtText "deed to a tower">
<script housedeed>
<@@@ END @@@>
<1912>
# House deed template
<type         ITEM house_deed>
<objvar int myhousetype 12>
<objvar string lookAtText "a small stone keep deed">
<script housedeed>
<@@@ END @@@>
<1913>
# House deed template
<type         ITEM house_deed>
<objvar int myhousetype 13>
<objvar string lookAtText "a castle deed">
<script housedeed>
<@@@ END @@@>
<1914>
# House deed template
<type         ITEM house_deed>
<objvar int myhousetype 4>
<objvar string lookAtText "deed to a blacksmith's shop">
<script housedeedsmith>
<@@@ END @@@>
<1915>
# Tailor Shop deed template
<type         ITEM house_deed>
<objvar int myhousetype 4>
<objvar string lookAtText "deed to a clothier's shop">
<script housedeedweaver>
<@@@ END @@@>
<1916>
# Miller deed template
<type         ITEM house_deed>
<objvar int myhousetype 4>
<objvar string lookAtText "deed to a miller's shop">
<script housedeedmiller>
<@@@ END @@@>
<1917>
# Miller deed template
<type         ITEM house_deed>
<objvar int myhousetype 4>
<objvar string lookAtText "deed to a pickpocket's den">
<script housedeedthieftrain>
<@@@ END @@@>
<1918>
# Weapon Training deed template
<type         ITEM house_deed>
<objvar int myhousetype 4>
<objvar string lookAtText "deed to a weapon training hut">
<script housedeedweaptrain>
<@@@ END @@@>
<1919>
# DO NOT USE UNTIL FIXED - Large bakery 
<type         ITEM house_deed>
<objvar       int myhousetype 20>
<objvar       string lookAtText "deed to a large bakery">
<script       dmill>
<@@@ END @@@>
<1920>
# Large Smithy 
<type         ITEM house_deed>
<objvar       int myhousetype 20>
<objvar       string lookAtText "deed to a large smithy">
<script       dsmith>
<@@@ END @@@>
<1921>
# DO NO USE UNTIL FIXED - large tailor shop 
<type         ITEM house_deed>
<objvar       int myhousetype 20>
<objvar       string lookAtText "deed to a large tailor shop">
<script       dtailor>
<@@@ END @@@>
<1922>
# Guild deed template
<type         ITEM house_deed>
<objvar string lookAtText "deed to a guildstone">
<objvar int mybasevalue 10000>
<script guilddeed>
<@@@ END @@@>
<1989>
# daemon        (Summoning Spell)
<type           NORMAL DAEMONS>
<sex            OTHER>
<name           559>
<corpsename     daemon>
<alignment      NEUTRAL>
<notoriety      -125>
<objvar         int spellCastersLevel 10>
<script         nonhumaneq>
<script         monster>
<sfxnotice      monster_daemon1>
<sfxidle        monster_daemon2>
<sfxhit         monster_daemon3>
<sfxwashit      monster_daemon4>
<sfxdie         monster_daemon5>
<strength       1d20+265>
<intelligence   1d15+290>
<dexterity      1d10+265>
<hp             1d20+165>
<mana           1d15+90>
<stamina        1d10+65>
<movetype       MT_FLYING>
<sk             skill_melee          10000>
<sk             skill_magic_defense  10000>
<sk             skill_battle_defense 10000>
<sk             skill_magic          10000>
<sk							skill_weapon_hand   10000>
<naturalac      3d8>
<naturalwc      60>
<resource       shelter    576  1    CAVES>
<resource       shelter    576  1    DUNGEONS>
<resource       production   8  0    DAEMON_BONE>
<resource       desire       -1  -1    HUMANS>
<resource       desire       5  1    SELF>
<resource       desire       5  1    GOLD>
<friends 1989>
<@@@ END @@@>
<1990>
# the Guardian's triumph
<type item 1>
<script blackgate>
<@@@ END @@@>
<1993>
# 1993
<@@@ END @@@>
<1995>
# magic artifact generator
<type         none 0>
<region       { RICH 1 FILTHYRICH 1 } >
<eq           scroll magic 100 1 300 0 0 1 at 0 0 0>
<@@@ END @@@>
<1998>
# magic artifact generator
<type         none 0>
<region       { RICH 1 FILTHYRICH 1 } >
<eq           all magic 100 1 300 0 0 1 at 0 0 0>
<@@@ END @@@>
<1999>
# magic artifact crate generator 
<type         ITEM random_crate>
<region       { RICH 1 FILTHYRICH 1 } >
<eq           all magic 100 1 200 0 0 1 selfcontained>
<@@@ END @@@>
<2000>
# Armorer (what they'll buy regardless)
<type         none 401>
<eq              lumber 0 0 1 BUYABLE>
<eq              studded_gorget 0 0 1 BUYABLE>
<eq              studded_arms 0 0 1 BUYABLE>
<eq              studded_arms_2 0 0 1 BUYABLE>
<eq              studded_chest 0 0 1 BUYABLE>
<eq              studded_chest_2 0 0 1 BUYABLE>
<eq              studded_legs 0 0 1 BUYABLE>
<eq              studded_legs_2 0 0 1 BUYABLE>
<eq              studded_gloves 0 0 1 BUYABLE>
<eq              studded_gloves_2 0 0 1 BUYABLE>
<eq              leather_gorget 0 0 1 BUYABLE>
<eq              leather_cap 0 0 1 BUYABLE>
<eq              leather_arms 0 0 1 BUYABLE>
<eq              leather_arms_2 0 0 1 BUYABLE>
<eq              leather_chest 0 0 1 BUYABLE>
<eq              leather_chest_2 0 0 1 BUYABLE>
<eq              leather_legs 0 0 1 BUYABLE>
<eq              leather_legs_2 0 0 1 BUYABLE>
<eq              leather_gloves 0 0 1 BUYABLE>
<eq              leather_gloves_2 0 0 1 BUYABLE>
<eq              plate_gorget 0 0 1 BUYABLE>
<eq              plate_chest 0 0 1 BUYABLE>
<eq              plate_chest_2 0 0 1 BUYABLE>
<eq              plate_legs 0 0 1 BUYABLE>
<eq              plate_legs_2 0 0 1 BUYABLE>
<eq              plate_arms 0 0 1 BUYABLE>
<eq              plate_arms_2 0 0 1 BUYABLE>
<eq              plate_gloves 0 0 1 BUYABLE>
<eq              plate_gloves_2 0 0 1 BUYABLE>
<eq              plate_helm 0 0 1 BUYABLE>
<eq              plate_helm_2 0 0 1 BUYABLE>
<eq              close_helm 0 0 1 BUYABLE>
<eq              close_helm_2 0 0 1 BUYABLE>
<eq              open_helm 0 0 1 BUYABLE>
<eq              open_helm_2 0 0 1 BUYABLE>
<eq              nose_helm 0 0 1 BUYABLE>
<eq              nose_helm_2 0 0 1 BUYABLE>
<eq              bucket_helm 0 0 1 BUYABLE>
<eq              bascinet 0 0 1 BUYABLE>
<eq              bascinet_2 0 0 1 BUYABLE>
<eq              chain_coif 0 0 1 BUYABLE>
<eq              chain_coif_2 0 0 1 BUYABLE>
<eq              chain_chest 0 0 1 BUYABLE>
<eq              chain_chest_2 0 0 1 BUYABLE>
<eq              chain_legs 0 0 1 BUYABLE>
<eq              chain_legs_2 0 0 1 BUYABLE>
<eq              ring_chest 0 0 1 BUYABLE>
<eq              ring_chest_2 0 0 1 BUYABLE>
<eq              ring_legs 0 0 1 BUYABLE>
<eq              ring_legs_2 0 0 1 BUYABLE>
<eq              ring_arms 0 0 1 BUYABLE>
<eq              ring_arms_2 0 0 1 BUYABLE>
<eq              ring_gloves 0 0 1 BUYABLE>
<eq              ring_gloves_2 0 0 1 BUYABLE>
<eq              bronze_shield 0 0 1 BUYABLE>
<eq              buckler_shield 0 0 1 BUYABLE>
<eq              heater_shield_1 0 0 1 BUYABLE>
<eq              heater_shield_2 0 0 1 BUYABLE>
<eq              heater_shield_3 0 0 1 BUYABLE>
<eq              heater_shield_4 0 0 1 BUYABLE>
<eq              kite_shield_1 0 0 1 BUYABLE>
<eq              kite_shield_2 0 0 1 BUYABLE>
<eq              metal_shield 0 0 1 BUYABLE>
<eq              wooden_shield 0 0 1 BUYABLE>
<eq              fem_armor_a 0 0 1 BUYABLE>
<eq              fem_armor_a_2 0 0 1 BUYABLE>
<eq              fem_armor_b 0 0 1 BUYABLE>
<eq              fem_armor_b_2 0 0 1 BUYABLE>
<eq              fem_armor_c 0 0 1 BUYABLE>
<eq              fem_armor_c_2 0 0 1 BUYABLE>
<eq              fem_armor_shorts 0 0 1 BUYABLE>
<eq              fem_armor_shorts_2 0 0 1 BUYABLE>
<eq              fem_armor_skirt 0 0 1 BUYABLE>
<eq              fem_armor_skirt_2 0 0 1 BUYABLE>
<eq              fem_armor_top_a 0 0 1 BUYABLE>
<eq              fem_armor_top_a_2 0 0 1 BUYABLE>
<eq              fem_armor_top_b 0 0 1 BUYABLE>
<eq              fem_armor_top_b_2 0 0 1 BUYABLE>
<@@@ END @@@>
<2001>
# Armorer (all types of armor)
<type         none 401>
<eq           leather_goods 0 0 1 NONE>
<eq           metal_goods 0 0 1 NONE>
<@@@ END @@@>
<2002>
# Armorer (leather goods)
<type         none 401>
<eq              leather_gorget 0 0 1 SELLABLE>
<eq              leather_cap 0 0 1 SELLABLE>
<eq              leather_arms 0 0 1 SELLABLE>
<eq              leather_chest 0 0 1 SELLABLE>
<eq              leather_legs 0 0 1 SELLABLE>
<eq              leather_gloves 0 0 1 SELLABLE>
<eq              studded_gorget 0 0 1 SELLABLE>
<eq              studded_arms 0 0 1 SELLABLE>
<eq              studded_chest 0 0 1 SELLABLE>
<eq              studded_legs 0 0 1 SELLABLE>
<eq              studded_gloves 0 0 1 SELLABLE>
<eq              fem_armor_a 0 0 1 SELLABLE>
<eq              fem_armor_a_2 0 0 1 SELLABLE>
<eq              fem_armor_b 0 0 1 SELLABLE>
<eq              fem_armor_b_2 0 0 1 SELLABLE>
<eq              fem_armor_c 0 0 1 SELLABLE>
<eq              fem_armor_c_2 0 0 1 SELLABLE>
<eq              fem_armor_shorts 0 0 1 SELLABLE>
<eq              fem_armor_shorts_2 0 0 1 SELLABLE>
<eq              fem_armor_skirt 0 0 1 SELLABLE>
<eq              fem_armor_skirt_2 0 0 1 SELLABLE>
<eq              fem_armor_top_a 0 0 1 SELLABLE>
<eq              fem_armor_top_a_2 0 0 1 SELLABLE>
<eq              fem_armor_top_b 0 0 1 SELLABLE>
<eq              fem_armor_top_b_2 0 0 1 SELLABLE>
<@@@ END @@@>
<2003>
# Armorer (all metal armor)
<type         none 401>
<eq           plate_goods 0 0 1 NONE>
<eq           chain_goods 0 0 1 NONE>
<eq           ring_goods 0 0 1 NONE>
<@@@ END @@@>
<2004>
# Armorer (plate armorer)
<type         none 401>
<eq              plate_gorget metal_colors 1 SELLABLE>
<eq              plate_chest metal_colors 1 SELLABLE>
<eq              plate_legs metal_colors 1 SELLABLE>
<eq              plate_arms metal_colors 1 SELLABLE>
<eq              plate_gloves metal_colors 1 SELLABLE>
<eq              plate_helm metal_colors 1 SELLABLE>
<eq              close_helm metal_colors 1 SELLABLE>
<eq              close_helm_2 metal_colors 1 SELLABLE>
<eq              open_helm metal_colors 1 SELLABLE>
<eq              open_helm_2 metal_colors 1 SELLABLE>
<eq              nose_helm metal_colors 1 SELLABLE>
<eq              nose_helm_2 metal_colors 1 SELLABLE>
<eq              bucket_helm metal_colors 1 SELLABLE>
<eq              bascinet metal_colors SELLABLE>
<eq              bascinet_2 metal_colors 1 SELLABLE>
<@@@ END @@@>
<2005>
# Armorer (Chainmail armorer)
<type         none 401>
<eq              chain_coif metal_colors 1 SELLABLE>
<eq              chain_chest metal_colors 1 SELLABLE>
<eq              chain_legs metal_colors 1 SELLABLE>
<@@@ END @@@>
<2006>
# Armorer (Ringmail armorer)
<type         none 401>
<eq              ring_chest 0 0 1 SELLABLE>
<eq              ring_legs 0 0 1 SELLABLE>
<eq              ring_arms 0 0 1 SELLABLE>
<eq              ring_gloves 0 0 1 SELLABLE>
<@@@ END @@@>
<2007>
# Armorer (Shields)
<type         none 401>
<eq              bronze_shield 0 0 1 SELLABLE>
<eq              buckler_shield 0 0 1 SELLABLE>
<eq              heater_shield_1 all_colors 1 SELLABLE>
<eq              heater_shield_3 0 0 1 SELLABLE>
<eq              kite_shield_2 0 0 1 SELLABLE>
<eq              metal_shield 0 0 1 SELLABLE>
<eq              wooden_shield 0 0 1 SELLABLE>
<@@@ END @@@>
<2008>
# Weaponeer
<type         none 401>
<eq           bladed_weapons 0 0 1 NONE>
<eq           blunt_weapons 0 0 1 NONE>
<@@@ END @@@>
<2009>
# Weaponeer (bladed weapons)
<type         none 401>
<eq             bad_axe 0 0 1 SELLABLE>
<eq             bardiche 0 0 1 SELLABLE>
<eq             battle_axe 0 0 1 SELLABLE>
<eq             double_battle_axe 0 0 1 SELLABLE>
<eq             bow 0 0 1 SELLABLE>
<eq             butcher_knife 0 0 1 SELLABLE>
<eq             crossbow 0 0 1 SELLABLE>
<eq             big_crossbow 0 0 1 SELLABLE>
<eq             cutlass 0 0 1 SELLABLE>
<eq             dagger_1 0 0 1 SELLABLE>
<eq             halberd 0 0 1 SELLABLE>
<eq             hammerpick 0 0 1 SELLABLE>
<eq             kitana 0 0 1 SELLABLE>
<eq             kryss 0 0 1 SELLABLE>
<eq             broad_sword 0 0 1 SELLABLE>
<eq             long_sword 0 0 1 SELLABLE>
<eq             magic_sword 0 0 1 SELLABLE>
<eq             viking_sword 0 0 1 SELLABLE>
<eq             meat_cleaver 0 0 1 SELLABLE>
<eq             new_axe 0 0 1 SELLABLE>
<eq             double_new_axe 0 0 1 SELLABLE>
<eq             pickaxe 0 0 1 SELLABLE>
<eq             pitchfork 0 0 1 SELLABLE>
<eq             scimitar 0 0 1 SELLABLE>
<eq             skinning_knife 0 0 1 SELLABLE>
<eq             two_handed_axe 0 0 1 SELLABLE>
<eq             war_axe 0 0 1 SELLABLE>
<eq             bad_axe 0 0 1 BUYABLE>
<eq             bad_axe_2 0 0 1 BUYABLE>
<eq             bardiche 0 0 1 BUYABLE>
<eq             bardiche_2 0 0 1 BUYABLE>
<eq             battle_axe 0 0 1 BUYABLE>
<eq             battle_axe_2 0 0 1 BUYABLE>
<eq             double_battle_axe 0 0 1 BUYABLE>
<eq             double_battle_axe_2 0 0 1 BUYABLE>
<eq             bow 0 0 1 BUYABLE>
<eq             bow_2 0 0 1 BUYABLE>
<eq             butcher_knife 0 0 1 BUYABLE>
<eq             butcher_knife_2 0 0 1 BUYABLE>
<eq             crossbow 0 0 1 BUYABLE>
<eq             crossbow_2 0 0 1 BUYABLE>
<eq             big_crossbow 0 0 1 BUYABLE>
<eq             big_crossbow_2 0 0 1 BUYABLE>
<eq             cutlass 0 0 1 BUYABLE>
<eq             cutlass_2 0 0 1 BUYABLE>
<eq             dagger_1 0 0 1 BUYABLE>
<eq             dagger_2 0 0 1 BUYABLE>
<eq             halberd 0 0 1 BUYABLE>
<eq             halberd_2 0 0 1 BUYABLE>
<eq             hammerpick 0 0 1 BUYABLE>
<eq             hammerpick_2 0 0 1 BUYABLE>
<eq             kitana 0 0 1 BUYABLE>
<eq             kitana_2 0 0 1 BUYABLE>
<eq             kryss 0 0 1 BUYABLE>
<eq             kryss_2 0 0 1 BUYABLE>
<eq             broad_sword 0 0 1 BUYABLE>
<eq             broad_sword_2 0 0 1 BUYABLE>
<eq             long_sword 0 0 1 BUYABLE>
<eq             long_sword_2 0 0 1 BUYABLE>
<eq             magic_sword 0 0 1 BUYABLE>
<eq             magic_sword_2 0 0 1 BUYABLE>
<eq             viking_sword 0 0 1 BUYABLE>
<eq             viking_sword_2 0 0 1 BUYABLE>
<eq             meat_cleaver 0 0 1 BUYABLE>
<eq             meat_cleaver_2 0 0 1 BUYABLE>
<eq             new_axe 0 0 1 BUYABLE>
<eq             new_axe_2 0 0 1 BUYABLE>
<eq             double_new_axe 0 0 1 BUYABLE>
<eq             double_new_axe_2 0 0 1 BUYABLE>
<eq             pickaxe 0 0 1 BUYABLE>
<eq             pickaxe_2 0 0 1 BUYABLE>
<eq             pitchfork 0 0 1 BUYABLE>
<eq             pitchfork_2 0 0 1 BUYABLE>
<eq             scimitar 0 0 1 BUYABLE>
<eq             scimitar_2 0 0 1 BUYABLE>
<eq             skinning_knife 0 0 1 BUYABLE>
<eq             skinning_knife_2 0 0 1 BUYABLE>
<eq             two_handed_axe 0 0 1 BUYABLE>
<eq             two_handed_axe_2 0 0 1 BUYABLE>
<eq             war_axe 0 0 1 BUYABLE>
<eq             war_axe_2 0 0 1 BUYABLE>
<eq             lumber 0 0 1 BUYABLE>
<eq             iron_ingot 0 0 1 BUYABLE>
<eq             lumber 0 0 1 BUYABLE>
<@@@ END @@@>
<2010>
# Weaponeer
<type         none 401>
<eq             black_staff 0 0 1 SELLABLE>
<eq             club 0 0 1 SELLABLE>
<eq             gnarled_staff 0 0 1 SELLABLE>
<eq             mace 0 0 1 SELLABLE>
<eq             maul 0 0 1 SELLABLE>
<eq             quarter_staff 0 0 1 SELLABLE>
<eq             shepherd_crook 0 0 1 SELLABLE>
<eq             smith_hammer 0 0 1 SELLABLE>
<eq             short_spear 0 0 1 SELLABLE>
<eq             spear 0 0 1 SELLABLE>
<eq             war_hammer 0 0 1 SELLABLE>
<eq             war_mace 0 0 1 SELLABLE>
<eq             black_staff 0 0 1 BUYABLE>
<eq             club 0 0 1 BUYABLE>
<eq             club_2 0 0 1 BUYABLE>
<eq             gnarled_staff 0 0 1 BUYABLE>
<eq             gnarled_staff_2 0 0 1 BUYABLE>
<eq             mace 0 0 1 BUYABLE>
<eq             mace_2 0 0 1 BUYABLE>
<eq             maul 0 0 1 BUYABLE>
<eq             maul_2 0 0 1 BUYABLE>
<eq             quarter_staff 0 0 1 BUYABLE>
<eq             quarter_staff_2 0 0 1 BUYABLE>
<eq             shepherd_crook 0 0 1 BUYABLE>
<eq             shepherd_crook_2 0 0 1 BUYABLE>
<eq             short_spear 0 0 1 BUYABLE>
<eq             short_spear_2 0 0 1 BUYABLE>
<eq             smith_hammer 0 0 1 BUYABLE>
<eq             smith_hammer_2 0 0 1 BUYABLE>
<eq             spear 0 0 1 BUYABLE>
<eq             spear_2 0 0 1 BUYABLE>
<eq             war_hammer 0 0 1 BUYABLE>
<eq             war_hammer_2 0 0 1 BUYABLE>
<eq             war_mace 0 0 1 BUYABLE>
<eq             war_mace_2 0 0 1 BUYABLE>
<eq             iron_ingot 0 0 1 BUYABLE>
<eq             lumber 0 0 1 BUYABLE>
<@@@ END @@@>
<2011>
# Shopkeeper Mages (Basic Stock) 
<type         none 401>
<eq             spell_book 0 0 1 SELLABLE>
<eq             scroll_blank 0 0 1 SELLABLE>
<eq             plus_int_mage_hat all_colors 1 SELLABLE>
<eq             marker_talisman_1 0 0 1 SELLABLE>
<eq             refresh_potion 0 0 1 SELLABLE>
<eq             agility_potion 0 0 1 SELLABLE>
<eq             blind_potion 0 0 1 SELLABLE>
<eq             heal_potion 0 0 1 SELLABLE>
<eq             strength_potion 0 0 1 SELLABLE>
<eq             poison_potion 0 0 1 SELLABLE>
<eq             sleep_potion 0 0 1 SELLABLE>
<eq             kaboom_potion 0 0 1 SELLABLE>
<eq             black_pearl_reagent 0 0 1 SELLABLE>
<eq             blood_moss_reagent 0 0 1 SELLABLE>
<eq             garlic_reagent 0 0 1 SELLABLE>
<eq             ginseng_reagent 0 0 1 SELLABLE>
<eq             mandrake_root 0 0 1 SELLABLE>
<eq             nightshade_reagent 0 0 1 SELLABLE>
<eq             sulfurous_ash_reagent 0 0 1 SELLABLE>
<eq             spider_silk_reagent 0 0 1 SELLABLE>
<eq             scroll_birds_eye 0 0 1 SELLABLE>
<eq             scroll_clumsy 0 0 1 SELLABLE>
<eq             scroll_create_food 0 0 1 SELLABLE>
<eq             scroll_feeblemind 0 0 1 SELLABLE>
<eq             scroll_heal 0 0 1 SELLABLE>
<eq             scroll_magic_arrow 0 0 1 SELLABLE>
<eq             scroll_night_sight 0 0 1 SELLABLE>
<eq             scroll_weaken 0 0 1 SELLABLE>
<eq             spell_book 0 0 1 BUYABLE>
<eq             wand_1 0 0 1 BUYABLE>
<eq             wand_2 0 0 1 BUYABLE>
<eq             wand_3 0 0 1 BUYABLE>
<eq             wand_4 0 0 1 BUYABLE>
<eq             gnarled_staff 0 0 1 BUYABLE>
<eq             gnarled_staff_2 0 0 1 BUYABLE>
<eq             scroll_blank 0 0 1 BUYABLE>
<eq             marker_talisman_1 0 0 1 BUYABLE>
<eq             marker_talisman_2 0 0 1 BUYABLE>
<eq             marker_talisman_3 0 0 1 BUYABLE>
<eq             marker_talisman_4 0 0 1 BUYABLE>
<eq             refresh_potion 0 0 1 BUYABLE>
<eq             agility_potion 0 0 1 BUYABLE>
<eq             blind_potion 0 0 1 BUYABLE>
<eq             heal_potion 0 0 1 BUYABLE>
<eq             strength_potion 0 0 1 BUYABLE>
<eq             poison_potion 0 0 1 BUYABLE>
<eq             sleep_potion 0 0 1 BUYABLE>
<eq             kaboom_potion 0 0 1 BUYABLE>
<eq             black_pearl_reagent 0 0 1 BUYABLE>
<eq             blood_moss_reagent 0 0 1 BUYABLE>
<eq             garlic_reagent 0 0 1 BUYABLE>
<eq             ginseng_reagent 0 0 1 BUYABLE>
<eq             mandrake_root 0 0 1 BUYABLE>
<eq             nightshade_reagent 0 0 1 BUYABLE>
<eq             sulfurous_ash_reagent 0 0 1 BUYABLE>
<eq             spider_silk_reagent 0 0 1 BUYABLE>
<eq             scroll_birds_eye 0 0 1 BUYABLE>
<eq             scroll_clumsy 0 0 1 BUYABLE>
<eq             scroll_create_food 0 0 1 BUYABLE>
<eq             scroll_feeblemind 0 0 1 BUYABLE>
<eq             scroll_heal 0 0 1 BUYABLE>
<eq             scroll_magic_arrow 0 0 1 BUYABLE>
<eq             scroll_night_sight 0 0 1 BUYABLE>
<eq             scroll_weaken 0 0 1 BUYABLE>
<eq             scroll_agility 0 0 1 BUYABLE>
<eq             scroll_cunning 0 0 1 BUYABLE>
<eq             scroll_cure 0 0 1 BUYABLE>
<eq             scroll_harm 0 0 1 BUYABLE>
<eq             scroll_magic_trap 0 0 1 BUYABLE>
<eq             scroll_magic_untrap 0 0 1 BUYABLE>
<eq             scroll_protection 0 0 1 BUYABLE>
<eq             scroll_strength 0 0 1 BUYABLE>
<eq             scroll_bless 0 0 1 BUYABLE>
<eq             scroll_fireball 0 0 1 BUYABLE>
<eq             scroll_magic_lock 0 0 1 BUYABLE>
<eq             scroll_poison 0 0 1 BUYABLE>
<eq             scroll_telekenesis 0 0 1 BUYABLE>
<eq             scroll_teleport 0 0 1 BUYABLE>
<eq             scroll_unlock 0 0 1 BUYABLE>
<eq             scroll_wall_of_stone 0 0 1 BUYABLE>
<eq             scroll_archcure 0 0 1 BUYABLE>
<eq             scroll_archprotection 0 0 1 BUYABLE>
<eq             scroll_curse 0 0 1 BUYABLE>
<eq             scroll_fire_field 0 0 1 BUYABLE>
<eq             scroll_greater_heal 0 0 1 BUYABLE>
<eq             scroll_lightning 0 0 1 BUYABLE>
<eq             scroll_manadrain 0 0 1 BUYABLE>
<eq             scroll_recall 0 0 1 BUYABLE>
<eq             scroll_blade_spirits 0 0 1 BUYABLE>
<eq             scroll_dispel_field 0 0 1 BUYABLE>
<eq             scroll_incognito 0 0 1 BUYABLE>
<eq             scroll_magic_reflection 0 0 1 BUYABLE>
<eq             scroll_mind_blast 0 0 1 BUYABLE>
<eq             scroll_paralyze 0 0 1 BUYABLE>
<eq             scroll_poison_field 0 0 1 BUYABLE>
<eq             scroll_summon_creature 0 0 1 BUYABLE>
<eq             scroll_dispel 0 0 1 BUYABLE>
<eq             scroll_energy_bolt 0 0 1 BUYABLE>
<eq             scroll_explosion 0 0 1 BUYABLE>
<eq             scroll_invisibility 0 0 1 BUYABLE>
<eq             scroll_mark 0 0 1 BUYABLE>
<eq             scroll_mass_curse 0 0 1 BUYABLE>
<eq             scroll_paralyze_field 0 0 1 BUYABLE>
<eq             scroll_reveal 0 0 1 BUYABLE>
<eq             scroll_chain_lightning 0 0 1 BUYABLE>
<eq             scroll_energy_field 0 0 1 BUYABLE>
<eq             scroll_flamestrike 0 0 1 BUYABLE>
<eq             scroll_gate_travel 0 0 1 BUYABLE>
<eq             scroll_mana_vampire 0 0 1 BUYABLE>
<eq             scroll_mass_dispel 0 0 1 BUYABLE>
<eq             scroll_meteor_storm 0 0 1 BUYABLE>
<eq             scroll_polymorph 0 0 1 BUYABLE>
<eq             scroll_earthquake 0 0 1 BUYABLE>
<eq             scroll_energy_vortex 0 0 1 BUYABLE>
<eq             scroll_resurrection 0 0 1 BUYABLE>
<eq             scroll_summon_air_elemental 0 0 1 BUYABLE>
<eq             scroll_summon_daemon 0 0 1 BUYABLE>
<eq             scroll_summon_earth_elemental 0 0 1 BUYABLE>
<eq             scroll_summon_fire_elemental 0 0 1 BUYABLE>
<eq             scroll_summon_water_elemental 0 0 1 BUYABLE>
<@@@ END @@@>
<2012>
# 2nd Circle Mage Stock 
<type         none 401>
<eq             basic_mage 0 0 1 NONE>
<eq             scroll_agility 0 0 1 SELLABLE>
<eq             scroll_cunning 0 0 1 SELLABLE>
<eq             scroll_cure 0 0 1 SELLABLE>
<eq             scroll_harm 0 0 1 SELLABLE>
<eq             scroll_magic_trap 0 0 1 SELLABLE>
<eq             scroll_magic_untrap 0 0 1 SELLABLE>
<eq             scroll_protection 0 0 1 SELLABLE>
<eq             scroll_strength 0 0 1 SELLABLE>
<@@@ END @@@>
<2013>
# 3rd Circle Mage Stock 
<type         none 401>
<eq             second_circle 0 0 1 NONE>
<eq             scroll_bless 0 0 1 SELLABLE>
<eq             scroll_fireball 0 0 1 SELLABLE>
<eq             scroll_magic_lock 0 0 1 SELLABLE>
<eq             scroll_poison 0 0 1 SELLABLE>
<eq             scroll_telekenesis 0 0 1 SELLABLE>
<eq             scroll_teleport 0 0 1 SELLABLE>
<eq             scroll_unlock 0 0 1 SELLABLE>
<eq             scroll_wall_of_stone 0 0 1 SELLABLE>
<@@@ END @@@>
<2014>
# 4th Circle Mage Stock 
<type         none 401>
<eq             third_circle 0 0 1 NONE>
<eq             scroll_archcure 0 0 1 SELLABLE>
<eq             scroll_archprotection 0 0 1 SELLABLE>
<eq             scroll_curse 0 0 1 SELLABLE>
<eq             scroll_fire_field 0 0 1 SELLABLE>
<eq             scroll_greater_heal 0 0 1 SELLABLE>
<eq             scroll_lightning 0 0 1 SELLABLE>
<eq             scroll_manadrain 0 0 1 SELLABLE>
<eq             scroll_recall 0 0 1 SELLABLE>
<@@@ END @@@>
<2047>
# Good Mage Tower 
<type         ITEM 1>
<createsnpcs  1>
<frequency    100>
<region       { DARKFOREST 0 } >
<regionlimit  { DARKFOREST 1 } >
<script       poi_cleanup>
<eq           200123 0 0 -1 AT  0  0 0 poi_cleanup>
<eq           4628 0 0 -1 AT  2  3  6 poi_cleanup>
<eq           4629 0 0 -1 AT  2  2  6 poi_cleanup>
<eq           4622 0 0 -1 AT  2  1  6 poi_cleanup>
<eq           4627 0 0 -1 AT  3  3  6 poi_cleanup>
<eq           4630 0 0 -1 AT  3  2  6 poi_cleanup>
<eq           4623 0 0 -1 AT  3  1  6 poi_cleanup>
<eq           4626 0 0 -1 AT  4  3  6 poi_cleanup>
<eq           4625 0 0 -1 AT  4  2  6 poi_cleanup>
<eq           4624 0 0 -1 AT  4  1  6 poi_cleanup>
<eq           100549 0 0 -1 AT 3 2 7 poi_cleanup>
<eq           6665 0 0 -1 AT -1 -4  6 poi_cleanup>
<eq           6661 0 0 -1 AT -1 -6  6 poi_cleanup>
<eq           6658 0 0 -1 AT  3 -6  6 poi_cleanup>
<eq           6659 0 0 -1 AT  6 -6  6 poi_cleanup>
<eq           5645 0 0 -1 AT  2  5 26 poi_cleanup>
<eq           5645 0 0 -1 AT  2  3 26 poi_cleanup>
<eq           5645 0 0 -1 AT  2  2 26 poi_cleanup>
<eq           5645 0 0 -1 AT  2  1 26 poi_cleanup>
<eq           5645 0 0 -1 AT  2  0 26 poi_cleanup>
<eq           5645 0 0 -1 AT  2 -1 26 poi_cleanup>
<eq           5645 0 0 -1 AT  2 -2 26 poi_cleanup>
<eq           5645 0 0 -1 AT  2 -3 26 poi_cleanup>
<eq           5645 0 0 -1 AT  2 -4 26 poi_cleanup>
<eq           5645 0 0 -1 AT  2 -5 26 poi_cleanup>
<eq           5645 0 0 -1 AT  2 -6 26 poi_cleanup>
<eq           5646 0 0 -1 AT  2 -6 26 poi_cleanup>
<eq           5646 0 0 -1 AT  3 -6 26 poi_cleanup>
<eq           5646 0 0 -1 AT  4 -6 26 poi_cleanup>
<eq           5646 0 0 -1 AT  5 -6 26 poi_cleanup>
<eq           5646 0 0 -1 AT  6 -6 26 poi_cleanup>
<eq           5646 0 0 -1 AT  7 -6 26 poi_cleanup>
<eq           7576 0 0 -1 AT  4 -1 26 poi_cleanup>
<eq           7575 0 0 -1 AT  4  0 26 poi_cleanup>
<eq           7420 0 0 -1 AT  5 -1 26 poi_cleanup>
<eq           7418 0 0 -1 AT  5  0 26 poi_cleanup>
<eq           100549 0 0 -1 AT 3 2 27 poi_cleanup>
<eq           4609 0 0 -1 AT  5  0 46 poi_cleanup>
<eq           4611 0 0 -1 AT  5 -1 46 poi_cleanup>
<eq           4611 0 0 -1 AT  5 -2 46 poi_cleanup>
<eq           4610 0 0 -1 AT  5 -3 46 poi_cleanup>
<eq           7400 0 0 -1 AT  5 -2 52 poi_cleanup>
<eq           7399 0 0 -1 AT  5 -1 52 poi_cleanup>
<eq           100549 0 0 -1 AT 3 2 47 poi_cleanup>
<eq           4073 0 0 -1 AT  1  1 66 poi_cleanup>
<eq           4070 0 0 -1 AT  1  0 66 poi_cleanup>
<eq           4071 0 0 -1 AT  1 -1 66 poi_cleanup>
<eq           4076 0 0 -1 AT  2  1 66 poi_cleanup>
<eq           4074 0 0 -1 AT  2  0 66 poi_cleanup>
<eq           4072 0 0 -1 AT  2 -1 66 poi_cleanup>
<eq           4077 0 0 -1 AT  3  1 66 poi_cleanup>
<eq           4078 0 0 -1 AT  3  0 66 poi_cleanup>
<eq           4075 0 0 -1 AT  3 -1 66 poi_cleanup>
<eq           100549 0 0 -1 AT 2 0 66 prisoner>
<eq           100549 0 0 -1 AT 2 3 67 poi_cleanup>
<eq           100549 0 0 -1 AT 3 2 67 poi_cleanup>
<resource     food       1 1 MEAT>
<resource     production 1 0 INTEREST>
<@@@ END @@@>
<2100>
# Ship deed template
<type         ITEM vendor_deed>
<objvar string lookAtText "a contract of employment">
<script vendordeed>
<@@@ END @@@>
<2101>
# Vendor
<type         NORMAL 400>
<job          vendor>
<sex          MALE>
<name         000>
<partialhue   all_skin_colors>
<movetype     MT_GHOST>
<sfxwashit    human_moomph01>
<sfxdie       human_m_die_01>
<alignment    NEUTRAL>
<attitude     1d41-16>
<notoriety    0>
<strength     1d15+30>
<dexterity    1d15+40>
<intelligence 1d15+50>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+225>
<sk           skill_magic_defense  25d10+225>
<sk           skill_battle_defense 25d10+225>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<eq           hair all_hair_colors 1>
<eq           facial_hair match_hair 1>
<eq           fancy_shirt all_colors 1>
<eq           fancy_pants all_colors 1>
<eq           cloak all_colors 1>
<eq           sash_1 all_colors 1>
<eq           random_boots 0 0 1>
<eq           backpack 0 0 1>
<@@@ END @@@>
<2102>
# Vendor
<type         NORMAL 401>
<job          vendor>
<sex          FEMALE>
<name         000>
<partialhue   all_skin_colors>
<movetype     MT_GHOST>
<sfxwashit    human_foomph01>
<sfxdie       human_f_die_01>
<alignment    NEUTRAL>
<attitude     1d41-16>
<notoriety    0>
<strength     1d15+30>
<dexterity    1d15+40>
<intelligence 1d15+50>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee          25d10+225>
<sk           skill_magic_defense  25d10+225>
<sk           skill_battle_defense 25d10+225>
<sk           skill_weapon_slashing 25d10+125>
<sk           skill_weapon_bashing  25d10+125>
<sk           skill_weapon_piercing 25d10+125>
<sk           skill_weapon_hand     25d10+125>
<eq           hair all_hair_colors 1>
<eq           fancy_shirt all_colors 1>
<eq           fancy_pants all_colors 1>
<eq           cloak all_colors 1>
<eq           sash_1 all_colors 1>
<eq           random_boots 0 0 1>
<eq           backpack 0 0 1>
<@@@ END @@@>
<2111>
# BugKiller (Ragnar's PD char template)
<type         NORMAL 400>
<job          programmer>
<sex          MALE>
<name         PD BugKiller>
<partialhue   2301>
<strength     80>
<dexterity    50>
<intelligence 80>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           1000>
<sk           skill_magic_defense   1000>
<sk           skill_weapon_slashing 1000>
<sk           skill_weapon_hand     1000>
<sk           skill_magic           1000>
<eq           8270 1109 1109 1>
<eq           3910 32 32 1>
<resource     production  8  0    MEAT>
<@@@ END @@@>
<2202>
# big stag      Difficulty 2
<type           NORMAL STAGS>
<sex            OTHER>
<name           2202>
<corpsename     reindeer>
<alignment      NEUTRAL>
<script         reindeer>
<sfxhit         animals_deer3>
<sfxwashit      animals_deer4>
<sfxdie         animals_deer5>
<strength       9000>
<dexterity      9000>
<intelligence   9000>
<hp             STR>
<mana           0>
<stamina        0>
<movetype     MT_NONMOVER>
<sk           skill_melee           1d100+900>
<sk           skill_magic_defense   1d100+900>
<sk           skill_battle_defense  1d100+900>
<sk           skill_weapon_slashing 1d100+900>
<sk           skill_weapon_bashing  1d100+900>
<sk           skill_weapon_piercing 1d100+900>
<sk           skill_weapon_ranged   1d100+900>
<sk           skill_weapon_hand     1d100+900>
<sk           skill_detect_hidden   1d100+900>
<immunities   slashing>
<immunities   piercing>
<immunities   bashing>
<immunities   ranged>
<immunities   poison>
<immunities   magic>
<immunities   fire>
<immunities   lightning>
<immunities   ice>
<naturalwc    2d4+2>
<naturalac    32>
<resource     shelter      5   1    GUARDPOST>
<resource     production   8   0    MEAT>
<resource     production   1   1    GUARD>
<resource     production   1   1    HUMANS>
<resource     desire       5   1    GUARDPOST>
<@@@ END @@@>
<2203>
# big stag      Difficulty 2
<type           NORMAL STAGS>
<sex            OTHER>
<name           2203>
<corpsename     reindeer>
<alignment      NEUTRAL>
<script         reindeer>
<sfxhit         animals_deer3>
<sfxwashit      animals_deer4>
<sfxdie         animals_deer5>
<strength       9000>
<dexterity      9000>
<intelligence   9000>
<hp             STR>
<mana           0>
<stamina        0>
<movetype     MT_NONMOVER>
<sk           skill_melee           1d100+900>
<sk           skill_magic_defense   1d100+900>
<sk           skill_battle_defense  1d100+900>
<sk           skill_weapon_slashing 1d100+900>
<sk           skill_weapon_bashing  1d100+900>
<sk           skill_weapon_piercing 1d100+900>
<sk           skill_weapon_ranged   1d100+900>
<sk           skill_weapon_hand     1d100+900>
<sk           skill_detect_hidden   1d100+900>
<immunities   slashing>
<immunities   piercing>
<immunities   bashing>
<immunities   ranged>
<immunities   poison>
<immunities   magic>
<immunities   fire>
<immunities   lightning>
<immunities   ice>
<naturalwc    2d4+2>
<naturalac    32>
<resource     shelter      5   1    GUARDPOST>
<resource     production   8   0    MEAT>
<resource     production   1   1    GUARD>
<resource     production   1   1    HUMANS>
<resource     desire       5   1    GUARDPOST>
<@@@ END @@@>
<2998>
# Male Generic Starting Clothes
<type none 0>
<eq      plain_shirt all_colors 1>
<eq      plain_pants neutral_colors 1>
<eq      plain_shoes neutral_colors 1>
<eq      dagger_1 0 0 1>
<eq      candle 0 0 1 CONTAINED>
<eq      sm_blank_book 0 0 1 CONTAINED>
<eq      3821 0 0 100 CONTAINED>
<@@@ END @@@>
<2999>
# Female Generic Starting Clothes
<type none 0>
<eq      plain_shirt all_colors 1>
<eq      skirt neutral_colors 1>
<eq      plain_shoes neutral_colors 1>
<eq      dagger_1 0 0 1>
<eq      candle 0 0 1 CONTAINED>
<eq      sm_blank_book 0 0 1 CONTAINED>
<eq      3821 0 0 100 CONTAINED>
<@@@ END @@@>
<3000>
# Alchemy is best skill
<type none 0>
<eq   mortar_pestle 0 0 1>
<eq   empty_vial 0 0 1>
<eq   empty_vial 0 0 1>
<eq   empty_vial 0 0 1>
<eq   empty_vial 0 0 1>
<eq   black_pearl_reagent 0 0 3>
<eq   garlic_reagent 0 0 3>
<eq   ginseng_reagent 0 0 3>
<eq   spider_silk_reagent 0 0 3>
<eq   robe red_colors 1>
<@@@ END @@@>
<3001>
# Anatomy is best skill
<type none 0>
<eq   robe yellow_colors 1>
<eq   bandage 0 0 1>
<eq   bandage 0 0 1>
<eq   bandage 0 0 1>
<@@@ END @@@>
<3002>
# Animal Lore is best skill
<type none 0>
<eq   robe green_colors 1>
<eq   shepherd_crook 0 0 1>
<@@@ END @@@>
<3003>
# Item Identification is best skill
<type none 0>
<eq   gnarled_staff 0 0 1 WEAR starteq>
<@@@ END @@@>
<3004>
# Armslore is best skill
<type none 0>
<eq   random_start_weapon 0 0 1 WEAR starteq>
<@@@ END @@@>
<3005>
# Parrying is best skill
<type none 0>
<eq   wooden_shield 0 0 1>
<@@@ END @@@>
<3006>
# Begging is best skill
<type none 0>
<eq gnarled_staff 0 0 1 WEAR starteq>
<@@@ END @@@>
<3007>
# Blacksmithing is best skill
<type none 0>
<eq   { 4020 1 4021 1 4027 1 4028 1 5091 1 5092 1 } 0 0 1>
<eq   apron brown_colors 1>
<@@@ END @@@>
<3008>
# Bowcraft/Fletching is best skill
<type none 0>
<eq   7127 0 0 14>
<eq   7121 0 0 5>
<eq   7124 0 0 5>
<@@@ END @@@>
<3009>
# Peacemaking is best skill
<type none 0>
<eq   random_instrument 0 0 1>
<@@@ END @@@>
<3010>
# Camping is best skill
<type none 0>
<eq  kindling 0 0 1>
<eq  kindling 0 0 1>
<eq  kindling 0 0 1>
<eq  kindling 0 0 1>
<eq  kindling 0 0 1>
<eq  bedroll 0 0 1>
<@@@ END @@@>
<3011>
# Carpentry is best skill
<type none 0>
<eq  { 4136 1 4137 1 4138 1 4139 1 4140 1 4141 1 4142 1 4143 1 4144 1 4145 1 4146 1 4147 1 4148 1 4149 1 4324 1 4325 1 4326 1 4327 1 } 0 0 1>
<eq  7127 0 0 10>
<eq  apron brown_colors 1>
<@@@ END @@@>
<3012>
# Cartography is best skill
<type none 0>
<eq  5355 0 0 1>
<eq  5355 0 0 1>
<eq  5355 0 0 1>
<eq  5355 0 0 1>
<eq  sextant 0 0 1>
<@@@ END @@@>
<3013>
# Cooking is best skill
<type none 0>
<eq  { 2426 1 2485 1 2489 1 2490 1 2545 1 4157 1 4159 1 4162 1 4227 1 5639 1 5641 1 4153 1 8093 1 } 0 0 1>
<eq  { 2426 1 2485 1 2489 1 2490 1 2545 1 4157 1 4159 1 4162 1 4227 1 5639 1 5641 1 4153 1 8093 1 } 0 0 1>
<eq  { 2426 1 2485 1 2489 1 2490 1 2545 1 4157 1 4159 1 4162 1 4227 1 5639 1 5641 1 4153 1 8093 1 } 0 0 1>
<eq  flour_sack 0 0 1>
<eq  water_pitcher 0 0 1>
<eq  kindling 0 0 1>
<eq  kindling 0 0 1>
<@@@ END @@@>
<3014>
# Detecting Hidden is best skill
<type none 0>
<eq cloak black_colors 1>
<@@@ END @@@>
<3015>
# Enticement is best skill
<type none 0>
<eq  random_instrument 0 0 1>
<@@@ END @@@>
<3016>
# Evaluate Intelligence is best skill
<type none 0>
<@@@ END @@@>
<3017>
# Healing is best skill
<type none 0>
<eq  bandage 0 0 1>
<eq  bandage 0 0 1>
<eq  bandage 0 0 1>
<eq  bandage 0 0 1>
<eq  bandage 0 0 1>
<eq  scissors 0 0 1>
<@@@ END @@@>
<3018>
# Fishing is best skill
<type none 0>
<eq  fishing_pole 0 0 1>
<eq  5907 brown_colors 1>
<@@@ END @@@>
<3020>
# Herding is best skill
<type none 0>
<eq shepherd_crook 0 0 1 WEAR starteq>
<@@@ END @@@>
<3021>
# Hiding is best skill
<type none 0>
<eq cloak black_colors 1>
<@@@ END @@@>
<3022>
# Provocation is best skill
<type none 0>
<eq  random_instrument 0 0 1>
<@@@ END @@@>
<3023>
# Inscription is best skill
<type none 0>
<eq scroll_blank 0 0 1>
<eq scroll_blank 0 0 1>
<eq sm_blank_book 0 0 1>
<@@@ END @@@>
<3024>
# Lockpicking is best skill
<type none 0>
<eq lockpick 0 0 1>
<eq lockpick 0 0 1>
<eq lockpick 0 0 1>
<eq lockpick 0 0 1>
<eq lockpick 0 0 1>
<@@@ END @@@>
<3025>
# Magery is best skill
<type none 0>
<eq  spell_book 0 0 1>
<eq  black_pearl_reagent 0 0 3>
<eq  blood_moss_reagent 0 0 3>
<eq  garlic_reagent 0 0 3>
<eq  ginseng_reagent 0 0 3>
<eq  nightshade_reagent 0 0 3>
<eq  sulfurous_ash_reagent 0 0 3>
<eq  spider_silk_reagent 0 0 3>
<eq  mandrake_root 0 0 3>
<eq  { 7981 1 7982 1 7983 1 } 0 0 1>
<eq  { 7984 1 7985 1 7986 1 } 0 0 1>
<eq  { 7987 1 7988 1 } 0 0 1>
<@@@ END @@@>
<3026>
# Resisting Spells is best skill
<type none 0>
<@@@ END @@@>
<3027>
# Tactics is best skill
<type none 0>
<@@@ END @@@>
<3028>
# Snooping is best skill
<type none 0>
<eq  lockpick 0 0 1>
<eq  lockpick 0 0 1>
<eq  lockpick 0 0 1>
<eq  lockpick 0 0 1>
<@@@ END @@@>
<3029>
# Musicianship is best skill
<type none 0>
<eq  random_instrument 0 0 1>
<@@@ END @@@>
<3030>
# Poisoning is best skill
<type none 0>
<eq  poison_potion 0 0 1>
<eq  poison_potion 0 0 1>
<@@@ END @@@>
<3031>
# Archery is best skill
<type none 0>
<eq  bow 0 0 1 WEAR starteq>
<eq  arrows 0 0 25>
<@@@ END @@@>
<3032>
# Spirit Speak is best skill
<type none 0>
<eq cloak black_colors 1>
<@@@ END @@@>
<3033>
# Steal is best skill
<type none 0>
<eq  lockpick 0 0 1>
<eq  lockpick 0 0 1>
<eq  lockpick 0 0 1>
<eq  lockpick 0 0 1>
<@@@ END @@@>
<3034>
# Tailoring is best skill
<type none 0>
<eq  sewing_kit 0 0 1>
<eq  folded_cloth_1 neutral_colors 1>
<eq  folded_cloth_1 neutral_colors 1>
<eq  folded_cloth_1 neutral_colors 1>
<eq  folded_cloth_1 neutral_colors 1>
<@@@ END @@@>
<3035>
# Animal Training is best skill
<type none 0>
<eq  shepherd_crook 0 0 1 WEAR starteq>
<@@@ END @@@>
<3036>
# Taste Identification is best skill
<type none 0>
<eq random_potion 0 0 1>
<eq random_potion 0 0 1>
<eq random_potion 0 0 1>
<@@@ END @@@>
<3037>
# Tinkering is best skill
<type none 0>
<eq  { 4173 1 4174 1 4175 1 4176 1 4177 1 4178 1 4179 1 4180 1 4181 1 4182 1 4185 1 4186 1 4187 1 4188 1 4189 1 4190 1 7868 1 } 0 0 1>
<eq  tinker_tools 0 0 1>
<eq  apron brown_colors 1>
<@@@ END @@@>
<3038>
# Tracking is best skill
<type none 0>
<eq  skinning_knife 0 0 1 WEAR starteq>
<eq  5899 brown_colors 1>
<@@@ END @@@>
<3039>
# Veterinary is best skill
<type none 0>
<eq bandage 0 0 1>
<eq bandage 0 0 1>
<eq bandage 0 0 1>
<eq bandage 0 0 1>
<eq bandage 0 0 1>
<eq  scissors 0 0 1>
<@@@ END @@@>
<3040>
# Swordsmanship is best skill
<type none 0>
<eq long_sword 0 0 1 WEAR starteq>
<@@@ END @@@>
<3041>
# Mace Fighting is best skill
<type none 0>
<eq  mace 0 0 1 WEAR starteq>
<@@@ END @@@>
<3042>
# Fencing is best skill
<type none 0>
<eq  spear_2 0 0 1 WEAR starteq>
<@@@ END @@@>
<3043>
# Wrestling is best skill
<type none 0>
<eq  leather_gloves 0 0 1>
<@@@ END @@@>
<3044>
# Lumberjacking is best skill
<type NONE 0>
<eq   hatchet 0 0 1 WEAR starteq>
<@@@ END @@@>
<3045>
# Mining is best skill
<type NONE 0>
<eq  { pickaxe 1 shovel 1 } 0 0 1>
<@@@ END @@@>
<3500>
# Guard
<type         none 400>
<partialhue   1002>
<strength     69>
<dexterity    77>
<intelligence 100>
<notoriety    98>
<hp           STR>
<mana         INT>
<stamina      DEX>
<objvar int spellCastersLevel 8>
<sk           skill_melee           660>
<sk           skill_magic           1000>
<sk           skill_magic_defense   1000>
<sk           skill_battle_defense  610>
<sk           skill_weapon_slashing 710>
<sk           skill_weapon_piercing 700>
<sk           skill_weapon_hand     300>
<sk           skill_ranged_weapons  690>
<sk           skill_tailor          500>
<sk           skill_tame_animal     600>
<eq           8252 1109 1109 1>
<eq           8267 1109 1109 1>
<eq						BACKPACK 0 0 1 wear>
<eq           KITANA magic 100 50 250 0 0 1 contained>
<eq           KITANA_2 magic 100 50 250 0 0 1 contained>
<eq           BOW 0 0 1 contained>
<eq           LEATHER_GLOVES 0 0 1>
<eq           CLOAK 902 902 1>
<eq           CHAIN_CHEST magic 100 150 250 757 757 1>
<eq           CHAIN_COIF 757 757 1 contained>
<eq           BLACK_BOOTS 902 902 1>
<eq           FANCY_SHIRT 592 592 1>
<eq           FANCY_PANTS 643 643 1>
<eq						103501 0 0 1 contained>
<eq						103502 0 0 1 contained>
<eq						PICKAXE 0 0 1 contained>
<eq						ARROWS 0 0 75 contained>
<eq						BAD_AXE 0 0 1 contained>
<eq						BAG 0 0 1 contained>
<eq						RICH_POUCH 0 0 1 contained>
<@@@ END @@@>
<3501>
# fully loaded spellbook
<type         item 3834>
<eq SCROLL_BIRDS_EYE       0 0 1 selfcontained>
<eq SCROLL_CLUMSY          0 0 1 selfcontained>
<eq SCROLL_CREATE_FOOD     0 0 1 selfcontained>
<eq SCROLL_FEEBLEMIND      0 0 1 selfcontained>
<eq SCROLL_HEAL            0 0 1 selfcontained>
<eq SCROLL_MAGIC_ARROW     0 0 1 selfcontained>
<eq SCROLL_NIGHT_SIGHT     0 0 1 selfcontained>
<eq SCROLL_WEAKEN          0 0 1 selfcontained>
<eq SCROLL_AGILITY         0 0 1 selfcontained>
<eq SCROLL_CUNNING         0 0 1 selfcontained>
<eq SCROLL_CURE            0 0 1 selfcontained>
<eq SCROLL_HARM            0 0 1 selfcontained>
<eq SCROLL_MAGIC_TRAP      0 0 1 selfcontained>
<eq SCROLL_MAGIC_UNTRAP    0 0 1 selfcontained>
<eq SCROLL_PROTECTION      0 0 1 selfcontained>
<eq SCROLL_STRENGTH        0 0 1 selfcontained>
<eq SCROLL_BLESS           0 0 1 selfcontained>
<eq SCROLL_FIREBALL        0 0 1 selfcontained>
<eq SCROLL_MAGIC_LOCK      0 0 1 selfcontained>
<eq SCROLL_POISON          0 0 1 selfcontained>
<eq SCROLL_TELEKENESIS     0 0 1 selfcontained>
<eq SCROLL_TELEPORT        0 0 1 selfcontained>
<eq SCROLL_UNLOCK          0 0 1 selfcontained>
<eq SCROLL_WALL_OF_STONE   0 0 1 selfcontained>
<eq SCROLL_ARCHCURE        0 0 1 selfcontained>
<eq SCROLL_ARCHPROTECTION  0 0 1 selfcontained>
<eq SCROLL_CURSE           0 0 1 selfcontained>
<eq SCROLL_FIRE_FIELD      0 0 1 selfcontained>
<eq SCROLL_GREATER_HEAL    0 0 1 selfcontained>
<eq SCROLL_LIGHTNING       0 0 1 selfcontained>
<eq SCROLL_MANADRAIN       0 0 1 selfcontained>
<eq SCROLL_RECALL          0 0 1 selfcontained>
<eq SCROLL_BLADE_SPIRITS   0 0 1 selfcontained>
<eq SCROLL_DISPEL_FIELD    0 0 1 selfcontained>
<eq SCROLL_INCOGNITO       0 0 1 selfcontained>
<eq SCROLL_MAGIC_REFLECTION 0 0 1 selfcontained>
<eq SCROLL_MIND_BLAST      0 0 1 selfcontained>
<eq SCROLL_PARALYZE        0 0 1 selfcontained>
<eq SCROLL_POISON_FIELD    0 0 1 selfcontained>
<eq SCROLL_SUMMON_CREATURE 0 0 1 selfcontained>
<eq SCROLL_DISPEL          0 0 1 selfcontained>
<eq SCROLL_ENERGY_BOLT     0 0 1 selfcontained>
<eq SCROLL_EXPLOSION       0 0 1 selfcontained>
<eq SCROLL_INVISIBILITY    0 0 1 selfcontained>
<eq SCROLL_MARK            0 0 1 selfcontained>
<eq SCROLL_MASS_CURSE      0 0 1 selfcontained>
<eq SCROLL_PARALYZE_FIELD  0 0 1 selfcontained>
<eq SCROLL_REVEAL          0 0 1 selfcontained>
<eq SCROLL_CHAIN_LIGHTNING 0 0 1 selfcontained>
<eq SCROLL_ENERGY_FIELD    0 0 1 selfcontained>
<eq SCROLL_FLAMESTRIKE     0 0 1 selfcontained>
<eq SCROLL_GATE_TRAVEL     0 0 1 selfcontained>
<eq SCROLL_MANA_VAMPIRE    0 0 1 selfcontained>
<eq SCROLL_MASS_DISPEL     0 0 1 selfcontained>
<eq SCROLL_METEOR_STORM    0 0 1 selfcontained>
<eq SCROLL_POLYMORPH       0 0 1 selfcontained>
<eq SCROLL_EARTHQUAKE      0 0 1 selfcontained>
<eq SCROLL_ENERGY_VORTEX   0 0 1 selfcontained>
<eq SCROLL_RESURRECTION    0 0 1 selfcontained>
<eq SCROLL_SUMMON_AIR_ELEMENTAL 0 0 1 selfcontained>
<eq SCROLL_SUMMON_DAEMON   0 0 1 selfcontained>
<eq SCROLL_SUMMON_EARTH_ELEMENTAL 0 0 1 selfcontained>
<eq SCROLL_SUMMON_FIRE_ELEMENTAL  0 0 1 selfcontained>
<eq SCROLL_SUMMON_WATER_ELEMENTAL 0 0 1 selfcontained>
<@@@ END @@@>
<3502>
# reagent bag
<type         item 3702>
<eq BATWING                0 0 10 selfcontained>
<eq BLACKMOOR              0 0 10 selfcontained>
<eq BLACK_PEARL_REAGENT    0 0 10 selfcontained>
<eq BLOOD_MOSS_REAGENT     0 0 10 selfcontained>
<eq BLOOD_SPAWN            0 0 10 selfcontained>
<eq BLOOD_VIAL             0 0 10 selfcontained>
<eq BONE_ITEM              0 0 10 selfcontained>
<eq BRIMSTONE              0 0 10 selfcontained>
<eq DAEMON_BONE_ITEM       0 0 10 selfcontained>
<eq FERTILE_DIRT           0 0 10 selfcontained>
<eq DRAGON_BLOOD_ITEM      0 0 10 selfcontained>
<eq EXECUTIONERS_CAP       0 0 10 selfcontained>
<eq GARLIC_REAGENT         0 0 10 selfcontained>
<eq GINSENG_REAGENT        0 0 10 selfcontained>
<eq MANDRAKE_ROOT          0 0 10 selfcontained>
<eq EYE_OF_NEWT            0 0 10 selfcontained>
<eq NIGHTSHADE_REAGENT     0 0 10 selfcontained>
<eq OBSIDIAN               0 0 10 selfcontained>
<eq PIG_IRON               0 0 10 selfcontained>
<eq PUMICE                 0 0 10 selfcontained>
<eq SULFUROUS_ASH_REAGENT  0 0 10 selfcontained>
<eq SPIDER_SILK_REAGENT    0 0 10 selfcontained>
<eq SERPENT_SCALE          0 0 10 selfcontained>
<eq VOLCANIC_ASH_REAGENT   0 0 10 selfcontained>
<eq DEAD_WOOD              0 0 10 selfcontained>
<eq WORM_HEART             0 0 10 selfcontained>
<@@@ END @@@>
<3503>
# Male Generic Starting Clothes
<type item 3702>
<eq      plain_shirt all_colors 1 SELFCONTAINED>
<eq      plain_pants neutral_colors 1 SELFCONTAINED>
<eq      plain_shoes neutral_colors 1 SELFCONTAINED>
<eq      dagger_1 0 0 1 SELFCONTAINED>
<eq      candle 0 0 1 SELFCONTAINED>
<eq      sm_blank_book 0 0 1 SELFCONTAINED>
<@@@ END @@@>
<3504>
# Guard
<type         none 400>
<partialhue   2304>
<strength     50>
<dexterity    77>
<intelligence 100>
<notoriety    0>
<hp           STR>
<mana         INT>
<stamina      DEX>
<sk           skill_melee           660>
<sk           skill_magic           1000>
<sk           skill_magic_defense   1000>
<sk           skill_battle_defense  610>
<sk           skill_weapon_hand     300>
<eq           WAND_1 0 0 1 wear sumdeadtemp>
<eq           CLOAK BLACK_COLORS 1>
<eq           ROBE BLACK_COLORS 1>
<eq           BLACK_BOOTS BLACK_COLORS 1>
<eq           FANCY_SHIRT BLACK_COLORS 1>
<eq           FANCY_PANTS BLACK_COLORS 1>
<eq           LEATHER_GLOVES BLACK_COLORS 1>
<eq           8252 1109 1109 1>
<@@@ END @@@>
