// UOSL (enhanced)
inherits guard;

forward void Q4XR();
forward void Q4XQ();
forward void Q4UB();
forward int isPet(obj );
forward int Q4SC();
forward string Q4RF();
forward int Q4DZ();
forward void Q4LJ(obj );
forward void Q4LP(obj );
forward void Q4JT(obj );
forward void Q4IH(obj );
forward int Q4KK(obj , int );
forward int Q4PB(list , obj );
forward int Q5HB(obj , obj , string );
forward int Q4BY(int , list );
forward int Q4BX(obj , string , obj );
forward int Q4BV(obj , string , obj , int );
forward int Q4BU(obj , string , obj );
forward int Q4BZ(obj , string , obj );
forward int Q4C2(obj , string , obj );
forward int Q4BT(obj , string , obj , int );
forward int Q4BS(obj , string , obj );
forward int Q4BP(obj , string , obj );
forward int Q4BR(obj , string , obj );
forward int Q4C1(obj , string , obj );
forward int Q4C0(obj , string , obj );
forward int Q4C3(obj , string , obj );
forward int Q4C5(obj , string , obj );
forward string Q4S4();
forward void Q458(obj , obj );
forward void Q4LK(obj , obj , obj );
forward void Q4LO(obj , obj , obj );
forward void Q4LM(obj , obj , obj );
forward void Q4LL(obj , obj , obj );
forward void Q4LN(obj , obj , obj );
forward void Q4LQ(obj , obj , obj );
forward int Q4BW(string , obj , obj );
forward void Q65I(obj );
forward int Q4ZX(obj , obj );

member int Q54C;

function void Q4XQ()
{
  if(getObjType(this) < 0xC8)
  {
    animateMobile(this, 0x11, 0x05, 0x01, 0x00, 0x00);
  }
  else
  {
    animateMobile(this, 0x09, 0x05, 0x01, 0x00, 0x00);
  }
  return;
}

function void Q4XR()
{
  if(getObjType(this) < 0xC8)
  {
    animateMobile(this, 0x12, 0x05, 0x01, 0x00, 0x00);
  }
  else
  {
    animateMobile(this, 0x0A, 0x03, 0x01, 0x00, 0x00);
  }
  return;
}

function void Q4UB()
{
  if(getObjType(this) < 0xC8)
  {
    animateMobile(this, 0x0B, 0x05, 0x01, 0x00, 0x00);
  }
  else
  {
    animateMobile(this, 0x03, 0x05, 0x01, 0x00, 0x00);
  }
  return;
}

function int isPet(obj this)
{
  return((hasObjVar(this, "isPet")));
}

function int Q4SC()
{
  if(!hasObjVar(this, "myLoyalty"))
  {
    return(0x00);
  }
  int myLoyalty = getObjVar(this, "myLoyalty");
  if(myLoyalty > 0x64)
  {
    myLoyalty = 0x64;
    setObjVar(this, "myLoyalty", myLoyalty);
  }
  return(myLoyalty);
}

function string Q4RF()
{
  string Q60M;
  list myBoss;
  int Q4NR;
  if(!hasObjListVar(this, "myBoss"))
  {
    return("myself");
  }
  getObjListVar(myBoss, this, "myBoss");
  Q4NR = numInList(myBoss);
  for(int i = 0x00; i < Q4NR; i ++)
  {
    concat(Q60M, getName(myBoss[i]));
    if(i < (Q4NR - 0x02))
    {
      concat(Q60M, ", ");
    }
    else
    {
      if(i == (Q4NR - 0x02))
      {
        if(Q4NR == 0x02)
        {
          concat(Q60M, " and ");
        }
        else
        {
          concat(Q60M, " and ");
        }
      }
    }
  }
  return(Q60M);
}

function int Q4DZ()
{
  member int petAckSfx = 0x00;
  member int petRefuseSfx = 0x00;
  if(hasObjVar(this, "petAckSfx"))
  {
    petAckSfx = getObjVar(this, "petAckSfx");
  }
  if(hasObjVar(this, "petRefuseSfx"))
  {
    petRefuseSfx = getObjVar(this, "petRefuseSfx");
  }
  return((petAckSfx + petRefuseSfx));
}

function int isOwnedPet(obj it)
{
  if(hasObjListVar(this, "myBoss"))
  {
    list Q4TN;
    getObjListVar(Q4TN, this, "myBoss");
    if(numInList(Q4TN) > 0x00)
    {
      return(0x01);
    }
  }
  return(0x00);
}

trigger message<"armageddon">(obj sender, list args)
{
  int Q52T = args[0x00];
  if(isOwnedPet(this))
  {
    if(Q52T >= 0x01)
    {
      return(0x00);
    }
  }
  return(0x01);
}

trigger creation()
{
  string Q498;
  if(0x00)
  {
    bark(this, "Debug mode activated on pet/hireling script.");
  }
  if(!Q4DZ())
  {
    Q498 = "Failed to attach sounds to a pet/hireling named: " + getName(this);
    debugMessage(Q498);
    return(0x01);
  }
  if(0x00)
  {
    if(!hasObjListVar(this, "myBoss"))
    {
      bark(this, "Failed to find myBoss list var");
    }
  }
  if(hasObjListVar(this, "myBoss"))
  {
    Q65I(this);
    list Q4TN;
    getObjListVar(Q4TN, this, "myBoss");
    obj blah = Q4TN[0x00];
    if(!getCompileFlag(0x01))
    {
      setNotoriety(this, getNotoriety(blah));
    }
    if(0x00)
    {
      Q498 = "Successfully found boss " + Q4RF() + ".";
      bark(this, Q498);
    }
  }
  return(0x01);
}

function void Q4LJ(obj pet)
{
  if(isPet(pet))
  {
    Q4XR();
    sfx(getLocation(pet), petAckSfx, 0x00);
  }
  else
  {
    bark(pet, "Very well.");
  }
  return;
}

function void Q4LP(obj pet)
{
  if(isPet(pet))
  {
    Q4XQ();
    sfx(getLocation(pet), petRefuseSfx, 0x00);
  }
  else
  {
    bark(pet, "Sorry, but no.");
  }
  return;
}

function void Q4JT(obj pet)
{
  if(isPet(pet))
  {
    Q4XQ();
    sfx(getLocation(pet), petRefuseSfx, 0x00);
  }
  else
  {
    bark(pet, "I do not understand.");
  }
  return;
}

function void Q4IH(obj this)
{
  string Q58D;
  obj Q5ZW = getTopmostContainer(this);
  if(Q5ZW != NULL())
  {
    int Q4Q1 = teleport(this, getLocation(Q5ZW));
    obj Q4WM = getItemAtSlot(Q5ZW, 0x19);
    if(Q4WM != NULL())
    {
      deleteObject(Q4WM);
    }
  }
  setObjVar(this, "defensive", 0x01);
  setObjVar(this, "controllerTimeout", 0x02 * 0x3C * 0x04);
  callbackAdvanced(this, 0x02 * 0x3C * 0x04, 0x14, 0x00);
  if(!isPet(this))
  {
    bark(this, "I quit.");
  }
  else
  {
    Q4LP(this);
    Q58D = getName(this) + " appears to have decided that it is better off without a master!";
    toUpper(Q58D, 0x00, 0x01);
    bark(this, Q58D);
  }
  if(hasObjListVar(this, "myBoss"))
  {
    removeObjVar(this, "myBoss");
  }
  if(hasObjVar(this, "myLoyalty"))
  {
    removeObjVar(this, "myLoyalty");
  }
  if(hasObjVar(this, "petWhoFollow"))
  {
    removeObjVar(this, "petWhoFollow");
  }
  stopFollowing(this);
  Q4DG(this);
  enableBehaviors(this);
  if(!getCompileFlag(0x01))
  {
    setNotoriety(this, 0x00);
  }
  if(isPet(this))
  {
    detachScript(this, "pet");
  }
  return;
}

trigger lookedat(obj looker)
{
  if(isPet(this))
  {
    barkTo(this, looker, "(tame)");
  }
  return(0x01);
}

function int Q4KK(obj this, int Q57Y)
{
  int myLoyalty;
  string debug;
  myLoyalty = Q4SC();
  if(0x00)
  {
    debug = myLoyalty;
    bark(this, debug);
  }
  if((random(0x00, 0x64) + Q57Y) > myLoyalty)
  {
    Q4LP(this);
    if(myLoyalty < 0x00)
    {
      Q4IH(this);
    }
    return(0x00);
  }
  myLoyalty = myLoyalty + 0x01;
  setObjVar(this, "myLoyalty", myLoyalty);
  Q4LJ(this);
  return(0x01);
}

trigger speech<"*">(obj speaker, string arg)
{
  if(!Q4BD(this, speaker))
  {
    return(0x01);
  }
  faceHere(this, getDirectionInternal(getLocation(this), getLocation(speaker)));
  if(isPet(this))
  {
    Q4XQ();
  }
  if(Q5HB(this, speaker, arg))
  {
    return(0x00);
  }
  return(0x01);
}

function int Q4PB(list text, obj this)
{
  string Q698;
  for(int i = 0x00; i < numInList(text); i ++)
  {
    Q698 = text[i];
    if(Q698 == getName(this))
    {
      return(i + 0x01);
    }
  }
  return(0xFF);
}

function int Q4BY(int Q618, list text)
{
  int Q4V9;
  string Q56K;
  int Q4QI;
  Q4QI = 0x00;
  Q4V9 = Q618 + 0x01;
  if(Q4V9 < numInList(text))
  {
    Q56K = text[Q4V9];
    if(Q56K == "me")
    {
      Q4QI = 0x01;
    }
  }
  return(Q4QI);
}

function int Q5HB(obj this, obj speaker, string arg)
{
  list text;
  int Q4QI = 0x00;
  int Q618 = 0x00;
  int Q53X;
  int Q4V9;
  string Q698;
  if(0x00)
  {
    bark(this, "Parsing a command.");
  }
  split(text, arg);
  Q618 = Q4PB(text, this);
  if(Q618 == 0xFF)
  {
    if(0x00)
    {
      bark(this, "Name not found.");
    }
    return(0x00);
  }
  if(Q618 >= numInList(text))
  {
    if(0x00)
    {
      bark(this, "Name only thing found.");
    }
    return(0x00);
  }
  if(Q4SC() < 0x01)
  {
    return(0x00);
  }
  if(!getCompileFlag(0x01))
  {
    setNotoriety(this, getNotoriety(speaker));
  }
  Q698 = text[Q618];
  Q4V9 = Q4BY(Q618, text);
  if(Q4BV(this, Q698, speaker, Q4V9))
  {
    return(0x01);
  }
  if(isDead(speaker))
  {
    return(0x01);
  }
  if(0x00)
  {
    bark(this, "Passed the dead check.");
  }
  if(Q4BX(this, Q698, speaker))
  {
    return(0x01);
  }
  if(Q4BU(this, Q698, speaker))
  {
    return(0x01);
  }
  if(Q4BZ(this, Q698, speaker))
  {
    return(0x01);
  }
  if(Q4C2(this, Q698, speaker))
  {
    return(0x01);
  }
  if(Q4BT(this, Q698, speaker, Q4V9))
  {
    return(0x01);
  }
  if(Q4BS(this, Q698, speaker))
  {
    return(0x01);
  }
  if(Q4BP(this, Q698, speaker))
  {
    return(0x01);
  }
  if(Q4BR(this, Q698, speaker))
  {
    return(0x01);
  }
  if(Q4C1(this, Q698, speaker))
  {
    return(0x01);
  }
  if(Q4C0(this, Q698, speaker))
  {
    return(0x01);
  }
  if(Q4C3(this, Q698, speaker))
  {
    return(0x01);
  }
  if(Q4C5(this, Q698, speaker))
  {
    return(0x01);
  }
  Q4JT(this);
  return(0x00);
}

function int Q4BX(obj this, string Q698, obj speaker)
{
  if((Q698 != "attack") && (Q698 != "kill"))
  {
    return(0x00);
  }
  if(0x00)
  {
    bark(this, "Got order to attack.");
  }
  setObjVar(this, "petAttack", 0x01);
  if(!isPet(this))
  {
    bark(this, "Who should I attack?");
  }
  else
  {
    systemMessage(speaker, "Select the victim.");
  }
  targetObj(speaker, this);
  return(0x01);
}

function int Q4BV(obj this, string Q698, obj speaker, int Q4V9)
{
  if(Q698 != "guard")
  {
    return(0x00);
  }
  if(0x00)
  {
    bark(this, "Got order to guard.");
  }
  if(Q4V9)
  {
    if(Q4SC() > 0x00)
    {
      copyControllerInfo(this, speaker);
      Q4UH(speaker, this);
      Q4LJ(this);
      return(0x01);
    }
  }
  setObjVar(this, "petGuard", 0x01);
  if(!isPet(this))
  {
    bark(this, "Tell me what to guard.");
  }
  else
  {
    systemMessage(speaker, "Click on the object, person, or place to guard.");
  }
  targetLoc(speaker, this);
  return(0x01);
}

function int Q4BU(obj this, string Q698, obj speaker)
{
  if(Q698 != "friend")
  {
    return(0x00);
  }
  if(0x00)
  {
    bark(this, "Got order to befriend.");
  }
  setObjVar(this, "petFriend", 0x01);
  if(!isPet(this))
  {
    bark(this, "I shall obey this person's orders as if they were your own.");
  }
  else
  {
    systemMessage(speaker, "Click on the player whom you wish to make a co-owner.");
  }
  targetObj(speaker, this);
  return(0x01);
}

function int Q4BZ(obj this, string Q698, obj speaker)
{
  int Q4E3 = 0x00;
  if(Q698 != "patrol")
  {
    return(0x00);
  }
  if(0x00)
  {
    bark(this, "Got order to patrol.");
  }
  if(hasObjVar(this, "continuePatrol"))
  {
    Q4E3 = getObjVar(this, "continuePatrol");
  }
  if(!Q4E3)
  {
    setObjVar(this, "continuePatrol", 0x01);
    if(!isPet(this))
    {
      bark(this, "Patrolling.");
    }
    else
    {
      Q4LJ(this);
      barkTo(this, speaker, "Your pet begins to patrol.");
    }
    Q5HF(this);
  }
  else
  {
    setObjVar(this, "continuePatrol", 0x00);
    if(!isPet(this))
    {
      bark(this, "Stopping patrol.");
    }
    else
    {
      Q4LJ(this);
      barkTo(this, speaker, "Your pet stops patrolling.");
    }
  }
  return(0x01);
}

function int Q4C2(obj this, string Q698, obj speaker)
{
  if(Q698 != "stay")
  {
    return(0x00);
  }
  if(!Q4KK(this, 0x00))
  {
    return(0x01);
  }
  removeObjVar(this, "petWhoFollow");
  stopFollowing(this);
  Q65I(this);
  return(0x01);
}

function int Q4BT(obj this, string Q698, obj speaker, int Q4V9)
{
  if(Q698 != "follow")
  {
    return(0x00);
  }
  if(Q4V9)
  {
    if(Q4BD(this, speaker))
    {
      if(Q4SC() > 0x00)
      {
        Q4LJ(this);
      }
      setObjVar(this, "petWhoFollow", speaker);
      followNpc(this, speaker, 0x00);
    }
    return(0x01);
  }
  setObjVar(this, "petFollow", 0x01);
  if(!isPet(this))
  {
    bark(this, "Who shall I follow?");
  }
  else
  {
    systemMessage(speaker, "Click on the person to follow.");
  }
  targetObj(speaker, this);
  return(0x01);
}

function int Q4BS(obj this, string Q698, obj speaker)
{
  if((Q698 != "fetch") && (Q698 != "get") && (Q698 != "bring"))
  {
    return(0x00);
  }
  if(getWeight(this) > 0x64)
  {
    if(!isPet(this))
    {
      bark(this, "I am already carrying too much.");
    }
    else
    {
      systemMessage(speaker, "Your pet couldn't possibly carry any more.");
    }
    return(0x00);
  }
  setObjVar(this, "petFetch", 0x01);
  if(!isPet(this))
  {
    bark(this, "What shall I get for you?");
  }
  else
  {
    systemMessage(speaker, "Click on the object to fetch.");
  }
  targetObj(speaker, this);
  return(0x01);
}

function int Q4BP(obj this, string Q698, obj speaker)
{
  if(Q698 != "come")
  {
    return(0x00);
  }
  if(0x00)
  {
    bark(this, "Got order to come.");
  }
  if((Q4BD(this, speaker)) && (Q4KK(this, 0x00)))
  {
    walkTo(this, getLocation(speaker), 0x0A);
  }
  return(0x01);
}

function int Q4BR(obj this, string Q698, obj speaker)
{
  if(Q698 != "drop")
  {
    return(0x00);
  }
  if(0x00)
  {
    bark(this, "Got order to drop.");
  }
  list Q4E4;
  obj Q5ZX;
  getContents(Q4E4, this);
  Q4LJ(this);
  for(int Q53X = 0x00; Q53X < numInList(Q4E4); Q53X ++)
  {
    Q5ZX = Q4E4[Q53X];
    int Q68N = teleport(Q5ZX, getLocation(this));
  }
  return(0x01);
}

function int Q4C1(obj this, string Q698, obj speaker)
{
  if(Q698 != "report")
  {
    return(0x00);
  }
  if(isPet(this))
  {
    return(0x00);
  }
  callBack(this, 0x01, 0x1A);
  bark(this, "I currently accept orders from " + Q4RF() + ".");
  bark(this, "I am " + Q4S4() + " about my job.");
  if(hasObjVar(this, "petWhoFollow"))
  {
    obj Q609 = getObjVar(this, "petWhoFollow");
    bark(this, "I am following " + getName(Q609) + ".");
  }
  return(0x01);
}

function int Q4C0(obj this, string Q698, obj speaker)
{
  if(Q698 != "release")
  {
    return(0x00);
  }
  if(isPet(this))
  {
    Q4LJ(this);
  }
  else
  {
    bark(this, "I thank thee for thy kindness!");
  }
  shortcallback(this, 0x08, 0x08);
  if(isPet(this))
  {
    setObjVar(this, "petCanTame", 0x00);
  }
  Q4IH(this);
  return(0x01);
}

function int Q4C3(obj this, string Q698, obj speaker)
{
  if(Q698 != "stop")
  {
    return(0x00);
  }
  if(isPet(this))
  {
    Q4LJ(this);
  }
  else
  {
    bark(this, "Very well, I am no longer guarding or following.");
  }
  Q4DG(this);
  stopFollowing(this);
  return(0x01);
}

function int Q4C5(obj this, string Q698, obj speaker)
{
  if(Q698 != "transfer")
  {
    return(0x00);
  }
  setObjVar(this, "petTransfer", 0x01);
  if(!isPet(this))
  {
    bark(this, "Whom do you wish me to work for?");
  }
  else
  {
    systemMessage(speaker, "Click on the person to transfer ownership to.");
  }
  targetObj(speaker, this);
  return(0x01);
}

function string Q4S4()
{
  string Q4V4;
  int Q54A = Q4SC() / 0x0A;
  switch(Q54A)
  {
  default:
    Q4V4 = "confused";
    break;
  case 0x01:
    Q4V4 = "extremely unhappy";
    break;
  case 0x02:
    Q4V4 = "rather unhappy";
    break;
  case 0x03:
    Q4V4 = "unhappy";
    break;
  case 0x04:
    Q4V4 = "content, I suppose,";
    break;
  case 0x05:
    Q4V4 = "content";
    break;
  case 0x06:
    Q4V4 = "happy";
    break;
  case 0x07:
    Q4V4 = "rather happy";
    break;
  case 0x08:
    Q4V4 = "very happy";
    break;
  case 0x09:
    Q4V4 = "extremely happy";
    break;
  case 0x0A:
    Q4V4 = "wonderfully happy";
    break;
  }
  return(Q4V4);
}

trigger callback<0x43>()
{
  if(!hasObjVar(this, "askedMyLoyalty"))
  {
    return(0x01);
  }
  obj Q46Z = getObjVar(this, "askedMyLoyalty");
  removeObjVar(this, "askedMyLoyalty");
  barkTo(Q46Z, Q46Z, "Your pet looks " + Q4S4() + ".");
  return(0x01);
}

trigger targetloc(obj user, loc place, int objtype)
{
  if(!isInMap(place))
  {
    return(0x00);
  }
  if(hasObjVar(this, "petGuard"))
  {
    if(Q4KK(this, 0x00))
    {
      Q4UG(place, this);
    }
    removeObjVar(this, "petGuard");
    return(0x00);
  }
  return(0x01);
}

trigger targetobj(obj user, obj usedon)
{
  if(usedon == NULL())
  {
    removeObjVar(this, "petAttack");
    removeObjVar(this, "petGuard");
    removeObjVar(this, "petFollow");
    removeObjVar(this, "petFetch");
    removeObjVar(this, "petFriend");
    removeObjVar(this, "petTransfer");
    return(0x00);
  }
  if(hasObjVar(this, "petAttack"))
  {
    Q4LK(this, usedon, user);
    return(0x00);
  }
  if(hasObjVar(this, "petGuard"))
  {
    Q4LO(this, usedon, user);
    return(0x00);
  }
  if(hasObjVar(this, "petFollow"))
  {
    Q4LM(this, usedon, user);
    return(0x00);
  }
  if(hasObjVar(this, "petFetch"))
  {
    Q4LL(this, usedon, user);
    return(0x00);
  }
  if(hasObjVar(this, "petFriend"))
  {
    Q4LN(this, usedon, user);
    return(0x00);
  }
  if(hasObjVar(this, "petTransfer"))
  {
    Q4LQ(this, usedon, user);
    return(0x00);
  }
  return(0x01);
}

function void Q458(obj pet, obj Q5CJ)
{
  list myBoss;
  if(!hasObjListVar(pet, "myBoss"))
  {
    setObjVar(pet, "myBoss", myBoss);
  }
  getObjListVar(myBoss, pet, "myBoss");
  if(!isInList(myBoss, Q5CJ))
  {
    appendToList(myBoss, Q5CJ);
  }
  setObjVar(pet, "myBoss", myBoss);
  return;
}

function void Q4LN(obj this, obj usedon, obj user)
{
  debugMessage("I are here");
  if(Q4KK(this, 0x00))
  {
    string Q60K;
    if(hasObjVar(this, "isPet"))
    {
      Q60K = "I shall obey the orders given me by " + getName(usedon) + " and treat " + getHimHer(usedon) + " as a friend.";
      bark(this, Q60K);
    }
    else
    {
      Q60K = getName(this) + " will not guard against " + getName(usedon) + " and will obey " + getHisHer(usedon) + " orders as if they were your own.";
      systemMessage(user, Q60K);
      if(isPlayer(usedon))
      {
        Q60K = getName(user) + " has granted you the ability to give orders to " + getHisHer(user) + " pet " + getName(this) + ". This creature will now consider you a friend.";
        systemMessage(usedon, Q60K);
      }
    }
    debugMessage("I are here2");
    receiveHelpfulActionFrom(usedon, user);
    Q458(this, usedon);
  }
  return;
}

function void Q4LL(obj this, obj usedon, obj user)
{
  if(Q4KK(this, 0x00))
  {
    loc place = getLocation(usedon);
    walkTo(this, place, 0x0B);
    member obj Q5F7 = usedon;
    member obj Q5HZ = user;
  }
  removeObjVar(this, "petFetch");
  return;
}

function void Q4LM(obj this, obj usedon, obj user)
{
  if(Q4BD(this, usedon))
  {
    Q4LJ(this);
  }
  else
  {
    if(!Q4KK(this, 0x00))
    {
      return;
    }
  }
  if(usedon == this)
  {
    removeObjVar(this, "petWhoFollow");
    stopFollowing(this);
  }
  else
  {
    setObjVar(this, "petWhoFollow", usedon);
    followNpc(this, usedon, 0x00);
  }
  removeObjVar(this, "petFollow");
  return;
}

function void Q4LO(obj this, obj usedon, obj user)
{
  if(Q4BD(this, usedon))
  {
    copyControllerInfo(this, user);
    Q4UH(usedon, this);
  }
  else
  {
    if(Q4KK(this, 0x00))
    {
      obj Q4UO = isAnyMultiBelow(getLocation(usedon));
      if(!Q593(Q4UO, user))
      {
        bark(this, "Items in other people's houses or ships cannot be guarded.");
        Q4LP(this);
        return;
      }
      if(isInContainer(usedon))
      {
        bark(this, "Items in containers cannot be guarded.");
        Q4LP(this);
        return;
      }
      if(thinksItsAtHome(usedon))
      {
        bark(this, "Other people's items cannot be guarded.");
        Q4LP(this);
        return;
      }
      if(isMobile(usedon))
      {
        if(!isPlayer(usedon))
        {
          if(!Q4BD(usedon, user))
          {
            bark(this, "Living things other than pets cannot be guarded.");
            Q4LP(this);
            return;
          }
        }
      }
      copyControllerInfo(this, user);
      Q4UH(usedon, this);
    }
  }
  if(0x00)
  {
    bark(this, "done any guarding I'd do, returning.");
  }
  removeObjVar(this, "petGuard");
  return;
}

function void Q4LK(obj this, obj usedon, obj user)
{
  int Q57Y;
  Q57Y = getStrength(usedon) + getDexterity(usedon) + getSkillLevel(usedon, 0x05) + getSkillLevel(usedon, 0x1B);
  Q57Y = Q57Y - (getStrength(this) + getDexterity(this) + getSkillLevel(this, 0x05) + getSkillLevel(this, 0x1B));
  Q57Y = Q57Y / 0x0A;
  if((isHuman(usedon)) && (isNPC(usedon)) && (isHuman(this)))
  {
    bark(this, "I am no murderer!");
    return;
  }
  if(Q4KK(this, Q57Y))
  {
    if(0x00)
    {
      bark(this, "Attacking!");
    }
    copyControllerInfo(this, user);
    Q4DG(this);
    setObjVar(this, "controllerTimeout", 0x02 * 0x3C * 0x04);
    callbackAdvanced(this, 0x02 * 0x3C * 0x04, 0x14, 0x00);
    setObjVar(this, "victim", usedon);
    setObjVar(this, "user", user);
    walkTo(this, getLocation(usedon), 0x10);
    attack(this, usedon);
    if(!getCompileFlag(0x01))
    {
      criminalAct(user, usedon, 0x01, 0x0A);
      callGuards(user, getLocation(user), 0x02);
    }
  }
  removeObjVar(this, "petAttack");
  return;
}

function void Q4LQ(obj this, obj usedon, obj user)
{
  if(!isPlayer(usedon))
  {
    if(isPet(this))
    {
      Q4LP(this);
    }
    else
    {
      bark(this, "Uhh... Sure. If you say so. Uh-huh. No problem. Soon as it gives an order, I'll obey...");
    }
    removeObjVar(this, "petTransfer");
    return;
  }
  removeObjVar(this, "myBoss");
  Q458(this, usedon);
  receiveHelpfulActionFrom(usedon, user);
  removeObjVar(this, "petTransfer");
  if(isPet(this))
  {
    Q4LJ(this);
  }
  else
  {
    bark(this, "Very well, I transfer my allegiance.");
  }
  if(hasObjVar(this, "petWhoFollow"))
  {
    removeObjVar(this, "petWhoFollow");
  }
  stopFollowing(this);
  Q4DG(this);
  return;
}

trigger pathnotfound<0x0A>()
{
  if(isPet(this))
  {
    Q4JT(this);
    return(0x00);
  }
  bark(this, "I see no way to reach thee!");
  return(0x00);
}

trigger pathfound<0x0B>()
{
  if(!isMoveable(Q5F7, this))
  {
    Q4LP(this);
    return(0x00);
  }
  if(containedBy(Q5F7) != NULL())
  {
    Q4LP(this);
    return(0x00);
  }
  if(isAtHome(Q5F7))
  {
    Q4LP(this);
    return(0x00);
  }
  if(getWeight(Q5F7) > (getStrength(this) / 0x02))
  {
    Q4LP(this);
    return(0x00);
  }
  if(!putObjContainer(Q5F7, this))
  {
    Q4LP(this);
    return(0x00);
  }
  loc place = getLocation(Q5HZ);
  walkTo(this, place, 0x0C);
  return(0x00);
}

trigger pathfound<0x0C>()
{
  if(!canHold(Q5HZ, Q5F7))
  {
    if(!isPet(this))
    {
      bark(this, "I can't give you " + getName(Q5F7));
    }
    else
    {
      Q4LP(this);
    }
    return(0x00);
  }
  if(giveItem(Q5HZ, Q5F7) == NULL())
  {
    if(!isPet(this))
    {
      bark(this, "I can't give you " + getName(Q5F7));
    }
    else
    {
      Q4LP(this);
    }
  }
  Q4LJ(this);
  return(0x00);
}

trigger pathnotfound<0x0C>()
{
  if(isPet(this))
  {
    Q4JT(this);
    return(0x00);
  }
  bark(this, "I see no way to reach you!");
  return(0x00);
}

trigger pathnotfound<0x10>()
{
  obj victim = getObjVar(this, "victim");
  obj user = getObjVar(this, "user");
  removeObjVar(this, "victim");
  removeObjVar(this, "user");
  attack(this, victim);
  return(0x00);
}

trigger pathfound<0x10>()
{
  obj victim = getObjVar(this, "victim");
  obj user = getObjVar(this, "user");
  removeObjVar(this, "victim");
  removeObjVar(this, "user");
  attack(this, victim);
  return(0x00);
}

function int Q4BW(string arg, obj speaker, obj this)
{
  list text;
  split(text, arg);
  int Q4QI = 0x00;
  int Q618 = 0x00;
  string Q698;
  list Q4W5 = "hire", "hireling", "hiring", "mercenary", "servant", "work";
  for(int i = 0x00; i < numInList(text); i ++)
  {
    Q698 = text[i];
    if(isInList(Q4W5, Q698))
    {
      return(0x01);
    }
  }
  return(0x00);
}

trigger speech<"*">(obj speaker, string arg)
{
  if(hasObjListVar(this, "myBoss") && (Q4SC() > 0x00))
  {
    return(0x01);
  }
  if(!isHuman(this))
  {
    return(0x01);
  }
  if(!Q4BW(arg, speaker, this))
  {
    return(0x01);
  }
  string Q44O = "I am available for hire for ";
  int Q4PT = getObjVar(this, "hirelingWages");
  Q4PT = Q4PT * 0x0A;
  string Q444 = Q4PT;
  concat(Q44O, Q444);
  concat(Q44O, " gold coins a day. If thou dost give me gold, I will work for thee.");
  bark(this, Q44O);
  Q458(this, speaker);
  setObjVar(this, "myLoyalty", 0x00);
  return(0x00);
}

function void Q65I(obj pet)
{
  disableBehaviors(pet);
  clearBehavior(pet, 0x02);
  clearBehavior(pet, 0x40);
  return;
}

function int Q4ZX(obj this, obj givenobj)
{
  int i;
  int Q518;
  string Q4NH;
  string Q5KO;
  list Q4Q7;
  list Q5KP;
  if(!getResourcesOnObj(givenobj, 0x03, Q5KP))
  {
    return(0x00);
  }
  if(!getResourcesOnObj(this, 0x00, Q4Q7))
  {
    return(0x00);
  }
  for(i = 0x00; i < numInList(Q4Q7); i ++)
  {
    for(Q518 = 0x00; Q518 < numInList(Q5KP); Q518 ++)
    {
      Q4NH = Q4Q7[i];
      Q5KO = Q5KP[Q518];
      if(Q4NH == Q5KO)
      {
        return(0x01);
      }
    }
  }
  return(0x00);
}

trigger give(obj giver, obj givenobj)
{
  int Q4QI;
  int Q45Y;
  int Q57Y;
  int myLoyalty;
  string Q47P;
  string Q58D;
  string Q5J5 = "s";
  if(!Q4BD(this, giver))
  {
    return(0x01);
  }
  if(isPet(this))
  {
    if(!Q4ZX(this, givenobj))
    {
      return(0x01);
    }
    setObjVar(this, "myLoyalty", 0x64);
    int Q4TW = eatObject(this, givenobj);
    Q4UB();
    deleteObject(givenobj);
    barkTo(this, giver, "Your pet looks happier.");
    Q65I(this);
    return(0x00);
  }
  if(getObjType(givenobj) != 0x0EED)
  {
    return(0x01);
  }
  Q4QI = getResource(Q45Y, givenobj, "gold", 0x03, 0x02);
  if(!Q4QI)
  {
    bark(this, "This is counterfeit gold!");
    return(0x00);
  }
  if(hasObjVar(this, "hirelingWages"))
  {
    Q57Y = getObjVar(this, "hirelingWages");
    Q57Y = Q57Y * 0x0A;
    Q45Y = Q45Y / Q57Y;
  }
  if(Q45Y < 0x01)
  {
    bark(this, "Thou must pay me more than this!");
    return(0x00);
  }
  int Q4G0 = Q4SC();
  if(Q4G0 < 0x4B)
  {
    Q4G0 = 0x4B + Q45Y;
  }
  else
  {
    Q4G0 = Q4G0 + Q45Y;
  }
  myLoyalty = Q4G0;
  setObjVar(this, "myLoyalty", myLoyalty);
  myLoyalty = myLoyalty - 0x4B;
  Q47P = myLoyalty;
  if(myLoyalty < 0x02)
  {
    Q5J5 = "";
  }
  Q58D = "I thank thee for paying me. I will work for thee for the next " + Q47P + " day" + Q5J5 + ".";
  bark(this, Q58D);
  Q65I(this);
  deleteObject(givenobj);
  return(0x00);
}

trigger time<"hour:**">()
{
  string Q60K;
  if(Q54C < 0x03)
  {
    Q54C ++;
    return(0x01);
  }
  Q54C = 0x00;
  if(hasObjVar(this, "isInStables"))
  {
    return(0x01);
  }
  if(Q4SC() > 0x0A)
  {
    return(0x01);
  }
  if(!isPet(this))
  {
    list Q5N8 = "I am considering quitting.", "This job doth not pay enough.", "'Tis time to be thinking about a new master.", "Should I not be paid soon?", "I think more gold is required to keep me around much longer.", "If my master wisheth me near, payment would be needed!", "Soon I shall be free of this employment.", "My loyalty hath eroded, for lack of pay.", "My term of service is ending, unless I be paid more.", "'Tis crass of me, but I want gold.", "Methinks I shall quit my job soon.";
    Q60K = Q5N8[random(0x00, (numInList(Q5N8) - 0x01))];
    bark(this, Q60K);
    return(0x01);
  }
  list Q4Q0;
  getPlayersInRange(Q4Q0, getLocation(this), 0x10);
  for(int Q53X = 0x00; Q53X < numInList(Q4Q0); Q53X ++)
  {
    obj Q46F = Q4Q0[Q53X];
    if(Q4BD(this, Q46F))
    {
      barkTo(this, Q46F, "Your pet looks rather unhappy.");
      Q4LP(this);
    }
  }
  return(0x01);
}

trigger time<"hour:12">()
{
  int myLoyalty;
  if(!hasObjListVar(this, "myBoss"))
  {
    return(0x01);
  }
  if(hasObjVar(this, "isInStables"))
  {
    return(0x01);
  }
  myLoyalty = Q4SC();
  myLoyalty = myLoyalty - 0x01;
  if(myLoyalty == 0x00)
  {
    Q4IH(this);
    return(0x01);
  }
  setObjVar(this, "myLoyalty", myLoyalty);
  return(0x01);
}

trigger seekfood()
{
  if(hasObjListVar(this, "myBoss") && (Q4SC() < 0x01))
  {
    return(0x00);
  }
  return(0x01);
}

trigger seekdesire()
{
  if(hasObjListVar(this, "myBoss") && (Q4SC() < 0x01))
  {
    return(0x00);
  }
  return(0x01);
}

trigger seekshelter()
{
  if(hasObjListVar(this, "myBoss") && (Q4SC() < 0x01))
  {
    return(0x00);
  }
  return(0x01);
}

trigger death(obj attacker, obj corpse)
{
  list Q4O3;
  obj Q61K;
  getEquipment(Q4O3, this);
  for(int i = 0x00; i < numInList(Q4O3); i ++)
  {
    Q61K = Q4O3[i];
    deleteObject(Q61K);
  }
  return(0x01);
}