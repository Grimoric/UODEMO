// Real-C
#include "ENGINE.hpp"

#include "globals.h"

FUNCTION int Q4KJ(obj looter, obj corpse)
{
  setObjVar(looter, "looter", looter);
  setObjVar(looter, "corpse", corpse);
  if(0x00)
  {
    bark(looter, "Issuing callback.");
  }
  shortCallback(looter, 0x0F, 0xEA);
  return(0x00);
}

TRIGGER( callback , 0xEA )()
{
  if(0x00)
  {
    bark(this, "Callback received.");
  }
  obj looter = getObjVar(this, "looter");
  obj corpse = getObjVar(this, "corpse");
  if(corpse == NULL())
  {
    if(0x00)
    {
      bark(looter, "The corpse is null!");
    }
  }
  list Q5YQ;
  getTargets(Q5YQ, looter);
  if(numInList(Q5YQ))
  {
    if(0x00)
    {
      bark(looter, "Too busy fighting to loot.");
    }
    shortCallback(looter, 0x1E, 0xEA);
    return(0x00);
  }
  if(getDistanceInTiles(getLocation(looter), getLocation(corpse)) > 0x02)
  {
    setObjVar(looter, "corpseToLoot", corpse);
    if(0x00)
    {
      bark(looter, "Walking over to loot now.");
    }
    if(isHuman(looter))
    {
      ebark(looter, "Let's see what there is to loot!");
    }
    walkTo(looter, getLocation(corpse), 0x16);
    return(0x01);
  }
  list Q4E4;
  getContents(Q4E4, corpse);
  if(numInList(Q4E4) < 0x01)
  {
    if(0x00)
    {
      bark(looter, "The corpse is empty!");
    }
    return(0x00);
  }
  obj Q4W2;
  obj Q622;
  if(0x00)
  {
    int b;
    string Q45R;
    b = numInList(Q4E4);
    Q45R = b;
    bark(looter, Q45R);
  }
  for(int i = 0x00; i < numInList(Q4E4); i ++)
  {
    Q622 = Q4E4[i];
    if(getValue(Q622) > getValue(Q4W2))
    {
      if((getObjType(Q622) < 0x203B) || (getObjType(Q622) > 0x204F))
      {
        if(0x00)
        {
          bark(looter, "Found an item in the valid range.");
        }
        Q4W2 = Q622;
      }
    }
  }
  if(Q4W2 == NULL())
  {
    if(0x00)
    {
      bark(looter, "Nothing worth taking.");
    }
    return(0x00);
  }
  obj Q47G = getBackpack(looter);
  if(Q47G == NULL())
  {
    Q47G = looter;
  }
  int Q4Q1 = putObjContainer(Q4W2, Q47G);
  if(0x00)
  {
    string Q58D;
    Q58D = "Ha ha! I grabbed " + getName(Q4W2) + " from this corpse!!";
    bark(looter, Q58D);
  }
  if(isHuman(looter))
  {
    list Q5N5 = list( "Ah, look what I get! ", "Hmm, let me see what they had... ", "And now for the spoils...! ", "The spoils of war... let me see... ", "And what pretties dost thou carry, eh? ", "Hmm, did they have anything interesting? ", "I wonder what they had that is now mine? ", "Mine! Mine! ", "Hmm... ", "Aha! ", "Well, look here... ", "Finders keepers! ", "Ah, booty! ", "Plundering corpses is SO distasteful! ", "Hm, messy. Ah... ", "A bit untidy. Let's see what they had... ", "What did you have on you? ", "Anything worthwhile here? ", "Hmm, this looks good. ", "", "", "", "", "", "", "", "", "", "", "" );
    Q58D = Q5N5[random(0x00, numInList(Q5N5) - 0x01)];
    string Q58E = getName(Q4W2) + ".";
    toUpper(Q58E, 0x00, 0x01);
    Q58D = Q58D + Q58E;
    Q5N5 = list( " Nice.", " Hmph.", " Not bad!", " A paltry reward.", " What am I supposed to do with this?", " The best they had. Oh well.", " Goodie!", " Excellent!", " I can make use of this!", " Useful indeed.", " Quite nice!", " Hmm.", " Might be worth something." );
    Q58E = Q5N5[random(0x00, numInList(Q5N5) - 0x01)];
    Q58D = Q58D + Q58E;
    ebark(looter, Q58D);
    animateMobile(looter, 0x20, 0x05, 0x01, 0x00, 0x03);
  }
  else
  {
    Q58D = "*" + getName(looter) + " rummages through " + getName(corpse) + " and takes " + getName(Q4W2) + "*";
    ebark(looter, Q58D);
    if(getObjType(looter) < 0xC8)
    {
      animateMobile(looter, 0x0B, 0x05, 0x01, 0x00, 0x00);
    }
    else
    {
      animateMobile(looter, 0x03, 0x05, 0x01, 0x00, 0x00);
    }
  }
  if(random(0x00, 0x01) == 0x00)
  {
    if(0x00)
    {
      bark(looter, "This was so much fun, I'm going to do it again!");
    }
    Q4KJ(looter, corpse);
  }
  return(0x01);
}

TRIGGER( pathfound , 0x16 )()
{
  if(!hasObjVar(this, "corpseToLoot"))
  {
    return(0x01);
  }
  obj corpse = getObjVar(this, "corpseToLoot");
  removeObjVar(this, "corpseToLoot");
  if(0x00)
  {
    bark(this, "I made it to the corpse, so let's loot!");
  }
  Q4KJ(this, corpse);
  return(0x01);
}

TRIGGER( sawdeath )(obj attacker, obj victim, obj corpse)
{
  if(0x00)
  {
    bark(this, "I saw a death!");
  }
  if(isHuman(this))
  {
    if(attacker != this)
    {
      if(0x00)
      {
        bark(this, "But I wasn't the killer, so never mind.");
      }
      return(0x00);
    }
  }
  Q4KJ(this, corpse);
  return(0x00);
}