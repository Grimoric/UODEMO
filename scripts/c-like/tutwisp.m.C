// Real-C
#include "ENGINE.hpp"

#include "globals.h"

FORWARD void Q5QX();
FORWARD void Q57Z();
FORWARD void Q4HA();
FORWARD void Q4EU();
FORWARD void Q5QY(string Q58D);
FORWARD void Q5JU();

MEMBER int state;

TRIGGER( death )(obj attacker, obj corpse)
{
  setCurHP(this, 0x03);
  attack(this, attacker);
  return(0x00);
}

TRIGGER( online )()
{
  loc Q53U = loc( 0x0D6D, 0x0A56, 0x27 );
  obj Q5GE = getBackpack(this);
  obj Q5FS = createGlobalNPCAt(0x05E0, Q53U, 0x05);
  int Q4Q1 = putObjContainer(Q5FS, Q5GE);
  state = 0x01;
  callback(this, 0x09, 0x0001046C);
  return(0x01);
}

TRIGGER( creation )()
{
  loc Q536 = loc( 0x0E56, 0x0A3A, 0x00 );
  int Q4Q1 = teleport(this, Q536);
  faceHere(this, 0x04);
  state = 0x01;
  MEMBER string Q49J = "";
  MEMBER int Q5MI;
  MEMBER obj Q5HA = getBackpack(this);
  attachScript(Q5HA, "tutpack");
  MEMBER loc Q54F = loc( 0x0E9B, 0x0A7A, 0x28 );
  MEMBER loc Q54D = loc( 0x0E38, 0x0A23, 0x00 );
  MEMBER loc Q529 = loc( 0x0E38, 0x0A23, 0x00 );
  MEMBER loc Q54E = loc( 0x0E1C, 0x09AB, 0x00 );
  MEMBER loc Q54I;
  MEMBER loc Q52H = loc( 0x0D6D, 0x0A56, 0x27 );
  MEMBER loc Q52E = loc( 0x0E56, 0x0A60, (0x00 - 0x02) );
  MEMBER obj Q5GT = createGlobalNPCAt(0x4C, Q54F, 0x01);
  MEMBER obj Q5F1 = createGlobalNPCAt(0x35, Q529, 0x01);
  MEMBER obj Q5GI = Q5F1;
  MEMBER obj Q5GK = createGlobalNPCAt(0x4B, Q54E, 0x01);
  MEMBER obj Q5FQ = createGlobalNPCAt(0x0221, Q52H, 0x01);
  MEMBER obj Q5FN = createGlobalObjectAt(0x1E5E, Q52E);
  loc Q52G = loc( 0x0E54, 0x0A3F, 0x00 );
  obj Q4N0;
  obj Q4N1;
  list doors;
  getObjectsInRange(doors, Q52G, 0x02);
  if(numInList(doors) > 0x00)
  {
    Q4N0 = doors[0x00];
  }
  if(numInList(doors) > 0x01)
  {
    Q4N1 = doors[0x01];
  }
  faceHere(Q5GT, 0x04);
  setMaxFatigue(Q5GT, 0x00);
  setCurFatigue(Q5GT, 0x00);
  setMaxFatigue(Q5F1, 0x00);
  setCurFatigue(Q5F1, 0x00);
  setMaxFatigue(Q5GK, 0x00);
  setCurFatigue(Q5GK, 0x00);
  setMaxFatigue(Q5FQ, 0x00);
  setCurFatigue(Q5FQ, 0x00);
  attachScript(Q5GT, "tutsage");
  attachScript(Q5F1, "tutarmorer");
  attachScript(Q5F1, "tutprovisioner");
  attachScript(Q5GK, "tutranger");
  attachScript(Q5FQ, "tutdragon");
  attachScript(Q5FN, "tutboard");
  if(Q4N0 != NULL())
  {
    attachScript(Q4N0, "tutdoor");
  }
  if(Q4N1 != NULL())
  {
    attachScript(Q4N1, "tutdoor");
  }
  Q5JU();
  return(0x01);
}

TRIGGER( message , "givenglass" )(obj sender, list args)
{
  state = 0x11;
  Q5QX();
  return(0x00);
}

TRIGGER( message , "hammerquest" )(obj sender, list args)
{
  if((hasObjType(this, 0x0FB4)) || (hasObjType(this, 0x0FB5)) || (hasObjType(this, 0x13E3)) || (hasObjType(this, 0x13E4)))
  {
    state = 0x0B;
    Q49J = "You need to open your inventory to give the hammer to the sage, open it by pressing Alt-I.";
    callback(this, 0x0A, 0x0001046A);
    return(0x00);
  }
  else
  {
    state = 0x08;
  }
  Q5QX();
  return(0x00);
}

TRIGGER( message , "swordquest" )(obj sender, list args)
{
  if((hasObjType(this, 0x0F5E)) || (hasObjType(this, 0x0F5F)) || (hasObjType(this, 0x0F60)) || (hasObjType(this, 0x0F61)) || (hasObjType(this, 0x13B7)) || (hasObjType(this, 0x13B9)) || (hasObjType(this, 0x13B9)) || (hasObjType(this, 0x13BA)))
  {
    state = 0x10;
    Q49J = "Drag your sword from your inventory to the sage to give it to him, if you have it wielded, drag it from your 'paper doll,' which you open by pressing Alt-P.";
    callback(this, 0x0A, 0x0001046A);
    return(0x00);
  }
  else
  {
    state = 0x0D;
  }
  Q5QX();
  return(0x00);
}

TRIGGER( message , "usedme" )(obj sender, list args)
{
  switch(args[0x00])
  {
  case 0x01:
    if(state == 0x02)
    {
      state = 0x03;
      Q5QX();
    }
    break;
  case 0x02:
    if(state == 0x04)
    {
      state = 0x05;
      Q5QX();
    }
    break;
  case 0x08:
    if(state == 0x0B)
    {
      state = 0x0C;
      Q5QX();
    }
    break;
  case 0x06:
    if(state == 0x12)
    {
      state = 0x13;
      callback(this, 0x03, 0x000182AD);
      Q5QX();
    }
    break;
  case 0x0A:
    if(getSkillLevel(this, 0x26) > 0x46)
    {
      state = 0x16;
      Q5QX();
    }
    break;
  case 0x07:
    state = 0x18;
    break;
  case 0x09:
    Q49J = "Well, I have helped you all I can, I hope your adventures are as pleasant as they will be exciting!";
    Q5QY(Q49J);
    obj w = getObjVar(this, "curWisp");
    stopFollowing(w);
    detachScript(this, "tutwisp");
    return(0x00);
    break;
  }
  return(0x01);
}

TRIGGER( speech , "*" )(obj speaker, string arg)
{
  list text;
  string Q698;
  split(text, arg);
  Q698 = text[0x00];
  if(0x00)
  {
    if(Q698 == "face")
    {
      systemMessage(this, "Dir:" + getFacing(this));
    }
    if(numInList(text) == 0x02)
    {
      systemMessage(this, "2 in list");
      Q698 = text[0x00];
      if(Q698 == "state")
      {
        Q698 = text[0x01];
        int Q5Z4 = strtoi(Q698);
        state = Q5Z4;
        Q57Z();
        systemMessage(this, "New State: " + state);
        return(0x00);
      }
    }
  }
  for(int i = 0x00; i < numInList(text); i ++)
  {
    Q698 = text[i];
    if(Q698 == "help")
    {
      Q57Z();
      Q5QY(Q49J);
      return(0x00);
    }
  }
  return(0x01);
}

TRIGGER( message , "leftme" )(obj sender, list args)
{
  int arg = args[0x00];
  if(arg == 0x02)
  {
    if(state == 0x05)
    {
      state = 0x06;
      Q5QX();
    }
  }
  return(0x01);
}

TRIGGER( message , "foundme" )(obj sender, list args)
{
  switch(args[0x00])
  {
  case 0x01:
    if(state == 0x01)
    {
      state = 0x02;
      Q5QX();
    }
    break;
  case 0x02:
    if(state <= 0x03)
    {
      state = 0x04;
      Q5QX();
    }
    break;
  case 0x03:
    if(state == 0x06)
    {
      state = 0x07;
      Q5QX();
    }
    if(state == 0x0A)
    {
      state = 0x0B;
      Q5QX();
    }
    if(state == 0x0F)
    {
      state = 0x10;
      Q5QX();
    }
    break;
  case 0x04:
    if(state == 0x08)
    {
      state = 0x09;
      callback(this, 0x03, 0x00010469);
      Q5QX();
    }
  case 0x05:
    if(state == 0x0D)
    {
      state = 0x0E;
      callback(this, 0x03, 0x00010469);
      Q5QX();
    }
    break;
  case 0x06:
    if(state == 0x11)
    {
      state = 0x12;
      Q5QX();
    }
    break;
  case 0x07:
    if(state == 0x16)
    {
      state = 0x17;
      Q5QX();
    }
    if(state == 0x13)
    {
      state = 0x14;
      Q5QX();
    }
    break;
  }
  return(0x01);
}

TRIGGER( use )(obj user)
{
  if(state == 0x14)
  {
    state = 0x15;
    Q5QX();
  }
  return(0x01);
}

TRIGGER( killedtarget )(obj attacker)
{
  if(hasScript(attacker, "tutdragon"))
  {
    state = 0x19;
    Q5QX();
  }
  return(0x01);
}

TRIGGER( callback , 0x000182AD )()
{
  int Q4IJ = getDistanceInTiles(getLocation(this), Q52H);
  if((Q4IJ < 0x16) && (state == 0x13))
  {
    if(hasScript(getItemAtSlot(this, 0x01), "tutwisp"))
    {
      state = 0x16;
    }
    else
    {
      state = 0x14;
    }
    Q5QX();
    return(0x00);
  }
  if(0x00)
  {
    systemMessage(this, "Dist:" + Q4IJ + ":" + getLocation(this) + ":" + getLocation(Q5FQ));
  }
  callback(this, 0x03, 0x000182AD);
  return(0x00);
}

TRIGGER( callback , 0x00010469 )()
{
  if(state == 0x09)
  {
    if((hasObjType(this, 0x0FB4)) || (hasObjType(this, 0x0FB5)) || (hasObjType(this, 0x13E3)) || (hasObjType(this, 0x13E4)))
    {
      state = 0x0A;
      Q5QX();
      return(0x00);
    }
  }
  if(state == 0x0E)
  {
    if((hasObjType(this, 0x0F5E)) || (hasObjType(this, 0x0F5F)) || (hasObjType(this, 0x0F60)) || (hasObjType(this, 0x0F61)) || (hasObjType(this, 0x13B7)) || (hasObjType(this, 0x13B8)) || (hasObjType(this, 0x13B9)) || (hasObjType(this, 0x13BA)))
    {
      state = 0x0F;
      Q5QX();
      return(0x00);
    }
  }
  callback(this, 0x03, 0x00010469);
  return(0x00);
}

TRIGGER( callback , 0x0001046A )()
{
  Q5QY(Q49J);
  Q57Z();
  callback(this, 0x2D, 0x0001046B);
  return(0x00);
}

TRIGGER( callback , 0x0001046B )()
{
  Q5MI ++;
  if(Q5MI > 0x02)
  {
    string Q5Z9 = "Remember, you can ask me for 'help' if you need it.";
    Q5QY(Q5Z9);
    return(0x00);
  }
  Q5QY(Q49J);
  callback(this, 0x3C * Q5MI, 0x0001046B);
  return(0x00);
}

TRIGGER( callback , 0x0001046C )()
{
  Q5QY("Welcome to Ultima Online! I am thy guide wisp, and will help thee as thou dost explore the world of Britannia. Ask for 'help' if you need it!");
  Q5QX();
  return(0x00);
}

FUNCTION void Q5QX()
{
  string Q68Y;
  Q5MI = 0x00;
  switch(state)
  {
  case 0x01:
    Q49J = "Lets get out of the inn, shall we?  Walk to the door by moving your cursor so the arrow points at it, and then hold down the right mouse button.";
    callback(this, 0x1E, 0x0001046A);
    return;
    break;
  case 0x02:
    Q49J = "Now double click on the door to open it and then walk through.";
    break;
  case 0x03:
    Q49J = "Lets go find the town bulletin board and see whats going on.  Its " + getDirection(getLocation(this), Q52E) + " of here.  You might want to open your map to help navigate by pressing Alt-R.";
    break;
  case 0x04:
    Q49J = "Lets read the board and see whats going on in the area.  Double click the bulletin board to read the messages on it.";
    break;
  case 0x05:
    Q49J = "";
    break;
  case 0x06:
    Q49J = "That dragon sounds dangerous.  We should seek the aide of the sage in town to see if he can help us out, he is " + getDirection(getLocation(this), Q54F) + ".";
    break;
  case 0x07:
    Q49J = "There's the sage, ask him about the dragon and see if he can help.";
    break;
  case 0x08:
    Q49J = "That sword is sure to help, lets find the blacksmith, they're " + getDirection(getLocation(this), Q529) + ".";
    callback(this, 0x0A, 0x0001046A);
    return;
    break;
  case 0x09:
    Q49J = "There's the shopkeeper, say 'shopkeeper' near him to get his attention and you'll be shown his inventory to shop from.";
    break;
  case 0x0A:
    Q49J = "Okay, we have the hammer for the sage, lets head " + getDirection(getLocation(this), Q54F) + ", back to the sage's home.";
    break;
  case 0x0B:
    Q49J = "You need to open your inventory to give the hammer to the sage, open it by pressing Alt-I.";
    break;
  case 0x0C:
    Q49J = "There's the hammer in your pack, while very close to the sage click on the hammer and drag it on top of the sage to give it to him, then right click on the inventory window to close it.";
    break;
  case 0x0D:
    Q49J = "Sheesh, a sword too eh?  Lets go back to the blacksmith's to buy one - " + getDirection(getLocation(this), Q529) + ".";
    callback(this, 0x0A, 0x0001046A);
    return;
    break;
  case 0x0E:
    Q49J = "Shop now just like you did before.";
    break;
  case 0x0F:
    Q49J = "Okay, lets head back to the sage's home and hope this is all we need.";
    break;
  case 0x10:
    Q49J = "Drag your sword from your inventory to the sage to give it to him, if you have it wielded, drag it from your 'paper doll,' which you open by pressing Alt-P.";
    break;
  case 0x11:
    Q49J = "Well now that we finally have our enchanted sword, lets find the ranger to learn how to track the dragon down, he's most likely at the library, " + getDirection(getLocation(this), Q54E) + ".";
    callback(this, 0x0A, 0x0001046A);
    return;
    break;
  case 0x12:
    Q49J = "There is the ranger now, ask him to 'teach tracking', and see how much he wants to teach you how to track.";
    break;
  case 0x13:
    Q49J = "You're as ready as you're going to be to take on the dragon, lets head out into the woods!";
    callback(this, 0x0A, 0x0001046A);
    return;
    break;
  case 0x14:
    Q49J = "I have a feeling the dragon is near, you'd better wield your glass sword.  First open your 'paperdoll' by pressing Alt-P now.";
    break;
  case 0x15:
    Q49J = "Unwield anything you're wielding by dragging it from your paperdoll to your pack.  Now drag the sword from your inventory to the picture of you in the paperdoll and you will wield it!";
    break;
  case 0x16:
    Q49J = "Time to kill us a dragon.  Click on the skills button on your paperdoll, then the arrow next to 'actions'.  You should now see the tracking skill in the list if you scroll down with the red ribbon some, click on that, and then select 'creatures'.  A box will appear with the monsters nearby in it, click on the dragon in that box.  If there isn't a dragon, wander some more and try again.";
    break;
  case 0x17:
    Q49J = "There's the dragon!  Click on the button labeled 'peace' on your paperdoll.  This will change you to war mode.  Now walk VERY close to the dragon and double click on it to begin combat!";
    break;
  case 0x18:
    Q49J = "Combat has begun!  Slay the wicked beast!!";
    break;
  case 0x19:
    Q49J = "Congratulations!!  Take the items on the dragon's body and dragging them to your inventory.";
    break;
  }
  Q5QY(Q49J);
  Q57Z();
  callback(this, 0x78, 0x0001046B);
  return;
}

FUNCTION void Q57Z()
{
  if(0x00)
  {
    systemMessage(this, "STATE:" + state);
  }
  switch(state)
  {
  case 0x01:
    Q49J = "Walk by holding down the right mouse button in the world around you.";
    break;
  case 0x02:
    Q49J = "Open the door by double clicking on it while standing next to it.";
    break;
  case 0x03:
    Q49J = "The bulletin board is " + getDirection(getLocation(this), Q52E) + ".";
    break;
  case 0x04:
    Q49J = "Double click the board to read the messages on it.";
    break;
  case 0x05:
    Q49J = "";
    break;
  case 0x06:
    Q49J = "The sage that can help us lives " + getDirection(getLocation(this), Q54F) + ".";
    break;
  case 0x07:
    Q49J = "Ask the sage about the 'dragon.'  Talk by typing in what you want so say and press enter.";
    break;
  case 0x08:
    Q49J = "The blacksmith's shoppe is " + getDirection(getLocation(this), Q529) + ".";
    break;
  case 0x09:
    Q49J = "Get the shopkeep's attention by saying 'shopkeep', and follow the menus to purchase items.";
  case 0x0A:
    Q49J = "Lets head " + getDirection(getLocation(this), Q54F) + ", back towards the sage's home.";
    break;
  case 0x0B:
    Q49J = "Press Alt-I to open your inventory window.";
    break;
  case 0x0C:
    Q49J = "Drag the hammer from your inventory window to the sage to give it to him.";
    break;
  case 0x0D:
    Q49J = "The blacksmith's is " + getDirection(getLocation(this), Q529) + ".";
    break;
  case 0x0E:
    Q49J = "Get the shopkeep's attention by saying 'shopkeep.'";
    break;
  case 0x0F:
    Q49J = "Lets go back to the sage's home, " + getDirection(getLocation(this), Q54F) + ".";
    break;
  case 0x10:
    Q49J = "Drag the sword from your inventory window to the sage to give it to him.";
    break;
  case 0x11:
    Q49J = "The ranger is " + getDirection(getLocation(this), Q54E) + ".";
    break;
  case 0x12:
    Q49J = "Ask the ranger to 'teach tracking.'";
    break;
  case 0x13:
    Q49J = "Be careful!";
    break;
  case 0x14:
    Q49J = "Press Alt-P to open your 'paperdoll' window.";
    break;
  case 0x15:
    Q49J = "Drag the sword from your inventory to your paperdoll to wield it.";
    break;
  case 0x16:
    Q49J = "Press the skills button on your paper doll, click on the arrow by actions.  Select 'tracking' and try tracking creatures by double clicking the two-headed ettin in the window that just opened, and then select the dragon in the window following that to track it.";
    break;
  case 0x17:
    Q49J = "Attack the dragon by clicking on the 'peace' button on your paperdoll window, and then double clicking the dragon when near it.";
    break;
  case 0x18:
    Q49J = "You can do it!  Fear not my brave friend!!";
    break;
  case 0x19:
    Q49J = "Double click the dragon's body to see whats on it, and then drag things you want to your inventory.";
    break;
  }
  return;
}

FUNCTION void Q4HA()
{
  if(!hasObjVar(this, "curWisp"))
  {
    return;
  }
  obj w = getObjVar(this, "curWisp");
  deleteObject(w);
  removeObjVar(this, "curWisp");
  return;
}

FUNCTION void Q4EU()
{
  loc Q4VS = loc( getLocation(this) );
  obj w = createGlobalNPCAt(0x021F, Q4VS, 0x03);
  makeInvulnerable(w);
  detachScript(w, "nonhuman");
  followNpc(w, this, 0x00);
  setObjVar(this, "curWisp", w);
  return;
}

FUNCTION void Q5QY(string Q58D)
{
  if(!hasObjVar(this, "curWisp"))
  {
    Q4EU();
  }
  obj Q68X = getObjVar(this, "curWisp");
  if(getDistanceInTiles(getLocation(this), getLocation(Q68X)) > 0x08)
  {
    Q4HA();
    Q5QY(Q58D);
    return;
  }
  ebarkTo(Q68X, this, Q58D);
  return;
}

FUNCTION void Q5JU()
{
  obj Q58D = createNoResObjectIn(0x0EB0, Q5FN);
  list postText;
  list lineTimes;
  string Q4UO;
  if(getSex(this) == 0x01)
  {
    Q4UO = "heroine";
  }
  else
  {
    Q4UO = "hero";
  }
  appendToList(postText, "We need your help!");
  appendToList(postText, "A horrible dragon hath");
  appendToList(postText, "been terrorizing our");
  appendToList(postText, "forests of late, and a");
  appendToList(postText, "valiant " + Q4UO + " is");
  appendToList(postText, "needed to rid us of the");
  appendToList(postText, "scourge!");
  appendToList(postText, "");
  appendToList(postText, "Prithee, if thou canst");
  appendToList(postText, "offer any aid, venture");
  appendToList(postText, "forth into the forest");
  appendToList(postText, "and slay this terrible");
  appendToList(postText, "beast! Our best warriors");
  appendToList(postText, "have tried and failed,");
  appendToList(postText, "for their swords merely");
  appendToList(postText, "bounced off the draconian");
  appendToList(postText, "hide... mayhap a special");
  appendToList(postText, "weapon is required, or");
  appendToList(postText, "merely a stouter arm!");
  appendToList(postText, "");
  appendToList(postText, "Abandon us not in times");
  appendToList(postText, "of need...");
  appendToList(postText, "");
  appendToList(postText, "-the citizens of Ocllo");
  setObjVar(Q58D, "postText", postText);
  return;
}

TRIGGER( speech , "*dismiss*" )(obj speaker, string arg)
{
  Q5QY("Very well, I will leave thee to thy exploration of Ocllo. I wish thee the best of luck!i Farewell!");
  obj w = getObjVar(this, "curWisp");
  stopFollowing(w);
  detachScript(this, "tutwisp");
  return(0x00);
}