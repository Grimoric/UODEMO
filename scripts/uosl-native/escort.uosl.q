// UOSL (native)
inherits globals;

member int Q65M;
member string Q4O8;
member list Q48N;
member string Q4O7;
member int Q4DE;

forward string Q4RI(string );

function void Q4SF(int Q65M)
{
  switch(Q65M)
  {
  default
  case 0x00
    Q48N = "  Greetings!", "  I am a poor healer who", "seeks a worthy escort. I", "can offer some small pay", "to any doughty warrior", "able to assist me. It is", "imperative that I reach my", "destination, or innocents", "may perish!";
    break;
  case 0x01
    Q48N = "  'Tis a terrible thing", "to be a parent with an", "ungrateful child! Yet such", "is my situation.", "  Because of the poor", "behavior and lack of", "character of this offspring", "of mine, I am obliged to", "foster them away from", "home.", "  So now I am in need of", "an able escort of good", "character who might serve", "as role model, and who can", "ensure that my child", "reaches their destination", "safely.", "  I shall let my child", "post their whereabouts so", "that thou mayst meet with", "them and arrange terms." "           ---";
    break;
  case 0x02
    Q48N = "  I am so happy! I am to", "be married, and my life", "will finally be complete!", "  Alas, I am no warrior,", "and the wedding is not to", "take place here. I am in", "need of an escort, for the", "roads are treacherous and", "my future spouse would be", "sad indeed to hear that", "an ettin ate me before the", "wedding.";
    break;
  case 0x03
    Q48N = "  Wizard seeks escort to a", "conference.";
    break;
  case 0x04
    Q48N = "  Reputable merchant seeks", "able warriors to serve as", "mercantile escort. Pay is", "scale; we prefer to hire", "experienced mercenaries.";
    break;
  case 0x05
    Q48N = "  I am one of Lord British's", "couriers, and I seek an able", "warrior to escort me safely,", "as the message I carry is of", "utmost importance to the", "realm!";
    break;
  case 0x06
    Q48N = "  'Tis a bit of a problem to", "admit it, but our normally", "trustworthy household guard", "seem to have broken his leg!", "  If thou art able with a", "weapon, we are pleased to take", "applications for his", "replacement, to serve as", "guard and escort on our", "forthcoming journey.";
    break;
  case 0x07
    Q48N = "  I've always wished for", "adventure! Now I can have it", "at last!", "  My weaponsmaster in school", "always said I was a dab hand", "with a blade, and I am afire", "with the love of adventure!", "  Plus I have money.", "  So if you are willing to", "hire on as my bodyguard and", "join me as we seek the deepest", "depths of the Abyss, and", "as we conquer dragons with", "the rapid flick of our sharp", "swords, disregarding all", "danger and ignorant of fear,", "seek me out!", "  Cowards need not apply!";
    break;
  }
  return();
}

function void Q5JV(obj this)
{
  list Q5ZN;
  obj Q48I = findClosestBBoard(getLocation(this));
  obj Q58D = createNoResObjectIn(0x0EB0, Q48I);
  loc Q5M7;
  string Q496;
  string Q636;
  list Q5JR = "Escort needed", "Guard needed", "I need an escort!", "Traveling companion?", "Seeking companion", "Now hiring", "Hiring a guard", "Hiring an escort", "Seeking escort";
  Q636 = Q5JR[random(0x00, numInList(Q5JR) - 0x01)];
  list postText = Q636;
  Q4SF(Q65M);
  list Q5Y7 = "  I can be found", getDistance(getLocation(Q48I), getLocation(this)), getDirection(getLocation(Q48I), getLocation(this)) + "", "of here. When thou dost find", "me, look at me close to accept", "the task of taking me to", Q4RI(Q4O8) + ".", "    " + getName(this);
  string blah;
  for(int Q53X = 0x00; Q53X < numInList(Q48N); Q53X ++)
  {
    blah = Q48N[Q53X];
    appendToList(postText, blah);
  }
  for(Q53X = 0x00; Q53X < numInList(Q5Y7); Q53X ++)
  {
    blah = Q5Y7[Q53X];
    appendToList(postText, blah);
  }
  setObjVar(Q58D, "postText", postText);
  setObjVar(this, "myBoardPost", Q58D);
  return();
}

function string Q4RI(string Q5NW)
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
  if(Q5NW == "dungn")
  {
    return("a dungeon");
  }
  return("somewhere");
}

function string Q5I5(obj this)
{
  list Q5JT = "city_bucden", "city_jhelom", "city_serphold", "city_nujelm", "city_trinsic", "city_skara", "city_ocllo", "city_magincia", "city_moonglow", "city_britain", "city_cove", "city_vesper", "city_minoc", "city_yew";
  string dest = Q5JT[random(0x00, numInList(Q5JT) - 0x01)];
  if(isInArea(dest, getLocation(this), 0x00))
  {
    dest = Q5I5(this);
  }
  return(dest);
}

function string Q5I6(obj this)
{
  list Q5JT = "dungn";
  string dest = Q5JT[random(0x00, numInList(Q5JT) - 0x01)];
  if(isInArea(dest, getLocation(this), 0x00))
  {
    dest = Q5I5(this);
  }
  return(dest);
}

trigger creation
{
  disableBehaviors(this);
  setObjVar(this, "isWaitingForEscort", 0x01);
  if(hasObjVar(this, "questEscortType"))
  {
    Q65M = getObjVar(this, "questEscortType");
  }
  else
  {
    Q65M = random(0x00, 0x07);
    setObjVar(this, "questEscortType", Q65M);
  }
  Q4O7 = Q4RI(Q4O8);
  switch(Q65M)
  {
  default
  case 0x00
  case 0x01
  case 0x02
  case 0x03
  case 0x04
  case 0x05
  case 0x06
    Q4O8 = Q5I5(this);
    break;
  case 0x07
    Q4O8 = Q5I6(this);
    break;
  }
  Q5JV(this);
  return(0x01);
}

trigger 100 enterrange(0x01)
{
  if(hasObjVar(this, "isWaitingForEscort"))
  {
    bark(this, "I am waiting for my escort to " + Q4RI(Q4O8) + ". If thou art interested, check the local bulletin board for details, or just say 'I will take thee.'");
  }
  return(0x01)
}

trigger speech("*")
{
  if(hasObjVar(this, "myEscort"))
  {
    obj Q4O5 = getObjVar(this, "myEscort");
    if(speaker == Q4O5)
    {
      followNpc(this, speaker, 0x00);
      string Q58D = "Lead on! Payment will be made when we arrive in " + Q4RI(Q4O8) + ".";
      bark(this, Q58D);
    }
  }
  return(0x01);
}

trigger speech("I will take thee")
{
  if(getDistanceInTiles(getLocation(speaker), getLocation(this)) > 0x03)
  {
    return(0x01);
  }
  if(!hasObjVar(this, "isWaitingForEscort"))
  {
    if(hasObjVar(this, "myEscort"))
    {
      bark(this, "I am already being led!");
    }
    else
    {
      bark(this, "I am sorry, but I do not wish to go anywhere.");
      callback(this, 0x64, 0x7A);
    }
    return(0x01);
  }
  if(isDead(speaker))
  {
    return(0x01);
  }
  if(hasObjVar(this, "myBoardPost"))
  {
    obj Q58F = getObjVar(this, "myBoardPost");
    deleteObject(Q58F);
  }
  string Q58D = "Lead on! Payment will be made when we arrive in " + Q4RI(Q4O8) + ".";
  bark(this, Q58D);
  removeObjVar(this, "isWaitingForEscort");
  followNpc(this, speaker, 0x00);
  setObjVar(this, "myEscort", speaker);
  callback(this, 0x05, 0x01);
  return(0x00);
}

trigger callback(0x01)
{
  if(!hasObjVar(this, "myEscort"))
  {
    enableBehaviors(this);
    callback(this, 0x64, 0x7A);
    return(0x01);
  }
  obj escort = getObjVar(this, "myEscort");
  if(!isInArea(Q4O8, getLocation(this), 0x00))
  {
    Q4DE = Q4DE + 0x01;
    if(Q4DE > 0x06)
    {
      Q4DE = 0x00;
      if(getDistanceInTiles(getLocation(this), getLocation(escort)) > 0x1E)
      {
        bark(this, "My escort seems to have abandoned me!");
        enableBehaviors(this);
        callback(this, 0x64, 0x7A);
        return(0x01);
      }
    }
    callback(this, 0x05, 0x01);
    return(0x01);
  }
  stopFollowing(this);
  removeObjVar(this, "myEscort");
  string Q58D = "We have arrived! I thank thee, " + getName(escort) + "! I have no further need of thy services. Here is thy pay.";
  bark(this, Q58D);
  if(!getCompileFlag(0x01))
  {
    if(getNotoriety(escort) < 0x7F)
    {
      addNotoriety(escort, 0x01);
    }
  }
  else
  {
    changeFame(escort, 0x03E8);
  }
  obj reward = requestCreateObjectAt(0x0EED, getLocation(escort));
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
    callback(this, 0x64, 0x7A);
    return(0x01);
  }
  obj Q491 = getBackpack(escort);
  success = putObjContainer(reward, Q491);
  enableBehaviors(this);
  callback(this, 0xC8, 0x7A);
  return(0x01);
}

trigger callback(0x7A)
{
  deleteObject(this);
  return(0x01);
}