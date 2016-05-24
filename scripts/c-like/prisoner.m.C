// Real-C
#include "ENGINE.hpp"

#include "globals.h"

FUNCTION string Q4SG()
{
  list Q5KU = list( "A kidnapping!", "Help!", "Help us, please!", "Adventurers needed!", "Seeking assistance", "In need of aid", "Canst thou help us?", "Shall any save our friend?", "A friend was kidnapped!", "Heroes wanted!", "Can any assist us?", "Kidnapped!", "Taken prisoner" );
  string Q636 = Q5KU[random(0x00, numInList(Q5KU) - 0x01)];
  return(Q636);
}

FUNCTION string Q4TB()
{
  list Q5KU = list( "They are in terrible danger!", "Help!", "Help us, please!", "Please, someone help!", "Surely not all are cowards?", "We desperately need help!", "Canst thou help us?", "Shall any save our friend?", "A friend was kidnapped!", "Look not away from our need!", "Can any assist us?", "In Lord British's name, help!", "I fear for their life..." );
  string Q636 = Q5KU[random(0x00, numInList(Q5KU) - 0x01)];
  return(Q636);
}

FUNCTION string Q4TD()
{
  list Q5KU = list( "foul", "vile", "evil", "dark", "cruel", "vicious", "scoundrelly", "dastardly", "cowardly", "craven", "foul and monstrous", "monstrous", "hideous", "terrible", "cruel, evil", "truly vile", "vicious and cunning", "" );
  string Q636 = Q5KU[random(0x00, numInList(Q5KU) - 0x01)];
  return(Q636);
}

FUNCTION string Q4RI(string Q5NW)
{
  if(Q5NW == "city_yew")
  {
    return("the city of Yew");
  }
  if(Q5NW == "city_minoc")
  {
    return("the city of Minoc");
  }
  if(Q5NW == "city_vesper")
  {
    return("the city of Vesper");
  }
  if(Q5NW == "city_cove")
  {
    return("the village of Cove");
  }
  if(Q5NW == "city_britain")
  {
    return("the city of Britain");
  }
  if(Q5NW == "city_moonglow")
  {
    return("the city of Moonglow");
  }
  if(Q5NW == "city_magincia")
  {
    return("the city of Magincia");
  }
  if(Q5NW == "city_ocllo")
  {
    return("the island of Ocllo");
  }
  if(Q5NW == "city_skara")
  {
    return("Skara Brae");
  }
  if(Q5NW == "city_trinsic")
  {
    return("Trinsic");
  }
  if(Q5NW == "city_nujelm")
  {
    return("Nujel'm");
  }
  if(Q5NW == "city_serphold")
  {
    return("Serpent's Hold");
  }
  if(Q5NW == "city_jhelom")
  {
    return("the city of Jhelom");
  }
  if(Q5NW == "city_bucden")
  {
    return("Buccaneer's Den");
  }
  if(Q5NW == "shrine")
  {
    return("any of the shrines of the Virtues");
  }
  if(Q5NW == "inn")
  {
    return("an inn where I can rest and recover");
  }
  if(Q5NW == "tavern")
  {
    return("a tavern where I can recover");
  }
  if(Q5NW == "city")
  {
    return("any city");
  }
  return("an inn");
}

TRIGGER( creation )()
{
  disableBehaviors(this);
  setObjVar(this, "isPrisoner", 0x01);
  MEMBER string Q5L1;
  list Q5JS = list( "inn", "tavern", "city", "shrine", "city_yew", "city_vesper", "city_minoc", "city_nujelm", "city_cove", "city_moonglow", "city_magincia", "city_ocllo", "city_serphold", "city_jhelom", "city_skara", "city_trinsic" );
  Q5L1 = Q5JS[random(0x00, numInList(Q5JS) - 0x01)];
  MEMBER string Q5L2 = Q4RI(Q5L1);
  MEMBER string Q67O;
  if(!hasObjVar(this, "questVillains"))
  {
    Q67O = "orcs";
  }
  else
  {
    Q67O = getObjVar(this, "questVillains");
  }
  obj Q48I = findClosestBBoard(getLocation(this));
  obj Q58D = createNoResObjectIn(0x0EB0, Q48I);
  loc Q5M7;
  string Q496;
  int Q4QX = getLocalizedDesc(Q496, Q5M7, getLocation(this), getLocation(Q48I));
  if(!Q4QX)
  {
    Q496 = "the woods";
  }
  list postText = list( Q4SG(), "Help us please! " + getName(this) + " hath", "been kidnapped by ", Q4TD() + " " + Q67O + "!", "We believe that " + getHeShe(this) + " is held in", Q496, getDistance(getLocation(Q48I), getLocation(this)), getDirection(getLocation(Q48I), getLocation(this)) + ".", Q4TB() );
  setObjVar(Q58D, "postText", postText);
  setObjVar(this, "myBoardPost", Q58D);
  return(0x01);
}

TRIGGER( enterrange , 0x08 )(obj target)
{
  if(hasObjVar(this, "isPrisoner"))
  {
    if(!isPlayer(target))
    {
      return(0x01);
    }
    switch(random(0x00, 0x05))
    {
    case 0x00:
      bark(this, "HELP!");
      break;
    case 0x01:
      bark(this, "Help me!");
      break;
    case 0x02:
      bark(this, "Canst thou aid me?!");
      break;
    case 0x03:
      bark(this, "Help a poor prisoner!");
      break;
    case 0x04:
      bark(this, "Help! Please!");
      break;
    case 0x05:
      bark(this, "Aaah! Help me!");
      break;
    default:
      break;
    }
  }
  return(0x01);
}

TRIGGER( enterrange , 0x01 )(obj target)
{
  if(hasObjVar(this, "isPrisoner"))
  {
    bark(this, "Quickly, I beg thee! Unlock my chains! If thou dost look at me close thou canst see them.");
  }
  return(0x01);
}

TRIGGER( use )(obj user)
{
  if(!hasObjVar(this, "isPrisoner"))
  {
    callback(this, 0x64, 0x7A);
    return(0x01);
  }
  if(isDead(user))
  {
    return(0x01);
  }
  if(hasObjVar(this, "myBoardPost"))
  {
    obj Q48K = getObjVar(this, "myBoardPost");
    deleteObject(Q48K);
  }
  bark(this, "*The chains are open.*");
  removeObjVar(this, "isPrisoner");
  followNpc(this, user, 0x00);
  setObjVar(this, "myRescuer", user);
  string Q58D = "I thank thee! If thou dost take me to " + Q5L2 + ", I am sure that thou wilt be rewarded!";
  bark(this, Q58D);
  callback(this, 0x05, 0x01);
  return(0x00);
}

TRIGGER( speech , "*" )(obj speaker, string arg)
{
  if(hasObjVar(this, "myRescuer"))
  {
    obj Q4O5 = getObjVar(this, "myRescuer");
    if(speaker == Q4O5)
    {
      followNpc(this, speaker, 0x00);
    }
  }
  return(0x01);
}

TRIGGER( callback , 0x01 )()
{
  if(!isInArea(Q5L1, getLocation(this), 0x00))
  {
    callBack(this, 0x05, 0x01);
    return(0x01);
  }
  if(!hasObjVar(this, "myRescuer"))
  {
    enableBehaviors(this);
    callback(this, 0xC8, 0x7A);
    return(0x01);
  }
  stopFollowing(this);
  obj Q5MW = getObjVar(this, "myRescuer");
  string Q58D = "I thank thee, " + getName(Q5MW) + "!";
  removeObjVar(this, "myRescuer");
  bark(this, Q58D);
  if(!getCompileFlag(0x01))
  {
    if(getNotoriety(Q5MW) < 0x7F)
    {
      addNotoriety(Q5MW, 0x01);
    }
  }
  else
  {
    changeFame(Q5MW, 0x03E8);
  }
  obj reward = requestCreateObjectAt(0x0EED, getLocation(Q5MW));
  int success;
  if(reward != NULL())
  {
    success = requestAddQuantity(reward, random(0x64, 0x01F4));
  }
  if(!success)
  {
    bark(this, "I fear that I lied about a reward, however. I lack any funds.");
    deleteObject(reward);
    enableBehaviors(this);
    callback(this, 0xC8, 0x7A);
    return(0x01);
  }
  obj Q491 = getBackpack(Q5MW);
  success = putObjContainer(reward, Q491);
  enableBehaviors(this);
  callback(this, 0xC8, 0x7A);
  return(0x01);
}

TRIGGER( callback , 0x7A )()
{
  deleteObject(this);
  return(0x01);
}