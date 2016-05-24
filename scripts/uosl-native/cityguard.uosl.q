// UOSL (native)
inherits bountyclaim;

member int Q57A;

trigger message("armageddon")
{
  int Q52T = args[0x00];
  if(Q52T >= 0x02)
  {
    return(0x00);
  }
  return(0x01);
}

trigger creation
{
  loc Q4VS = getLocation(this);
  setBehavior(this, 0x02);
  int time = random(0x0A, 0x14);
  callback(this, time, 0x63);
  setObjVar(this, "myGuardPost", Q4VS);
  setLoiterMode(this, 0x01);
  goLoiter(this, Q4VS, 0x03E8);
  callBack(this, 0x64, 0x62);
  return(0x00);
}

trigger callback(0x62)
{
  if(hasObjVar(this, "myGuardPost"))
  {
    loc there = getObjVar(this, "myGuardPost");
    walkTo(this, there, 0x15);
  }
  callBack(this, 0x64, 0x62);
  return(0x01);
}

trigger pathnotfound(0x15)
{
  if(!hasObjVar(this, "myGuardPost"))
  {
    return(0x00);
  }
  loc place = getObjVar(this, "myGuardPost");
  int Q4Q1 = teleport(this, place);
  return(0x00);
}

function void Q4K7(obj this, obj target)
{
  string Q5N7;
  list Q5N8;
  string Q5H4;
  int Q602;
  string Q4GZ;
  int Q4H0;
  if(!getCompileFlag(0x01))
  {
    Q4H0 = getNotoriety(target);
  }
  else
  {
    Q4H0 = getKarma(target);
  }
  Q4GZ = Q4H0;
  int Q60O;
  if(!getCompileFlag(0x01))
  {
    Q60O = (0x00 - (getNotoriety(target) / 0x0A));
  }
  else
  {
    Q60O = getKarmaLevel(target);
  }
  Q5N8 = "Don't do anything foolish.", "We'll be keeping an eye on thee.", "I know thy type. Break not the laws, or else suffer punishment!", "Thou hast a suspicious look about thee.", "I trust thee not, nor should anyone. Thou art a ruffian.", "Faugh, another scoundrel to keep an eye on!", "I have heard of thee--keep thee to the straight and narrow whilst here!", "If I catch thee breaking laws, thy neck will be on the line.", "Thou hast an unsavory reputation--best that thou dost not prove that thou earnst it.", "Thou art known as a criminal. Do not draw the attention of the guards with thy deeds, or risk death!", "Mine eye is on thee, scoundrel. Break not the law.", "Thou art a scofflaw, but while here thou SHALT obey the laws, or suffer.", "Look thee who crawled out from under a rock! Well, thou shalt not do anything illegal whilst I am watching thee!", "The guards well know thee and thy nefarious ways! Be sure to behave thyself!", "Scum! Stay not overlong here, for thou art not welcome!", "I hope that thou art merely visiting, for we mislike knaves mingling with our citizens.", "Thou shouldst leave this city before any decide to lynch thee.", "I should arrest thee now, before thou dost something terrible. Thou art well known as a rogue of the worst kind.";
  int Q60R = random(0x00, 0x0C) + (Q60O / 0x02);
  Q5N7 = Q5N8[Q60R];
  Q5H4 = getName(target) + "! " + Q5N7;
  Q602 = getDirectionInternal(getLocation(this), getLocation(target));
  faceHere(this, Q602);
  bark(this, Q5H4);
  setObjVar(target, "cityguardJustWarnedMe", 0x01);
  return();
}

function void Q4K6(obj this, obj target)
{
  string Q5N7;
  list Q5N8;
  string Q5H4;
  int Q602;
  string Q4GZ;
  int Q4H0;
  if(!getCompileFlag(0x01))
  {
    Q4H0 = getNotoriety(target);
  }
  else
  {
    Q4H0 = getKarma(target);
  }
  Q4GZ = Q4H0;
  Q5N8 = "Thou'rt wanted!", "Flee now before I behead thee, scum!", "How nice of thee to come to meet my blade.", "Stand back, everyone, a dastardly criminal approaches.", "Now, I shall kill thee.", "A warrant is outstanding for thy execution.", "Thou hast made a fatal mistake by showing thy filthy face.", "'Twill be a pleasure to dispatch a scoundrel such as thee.", "Beware, all, whilst I dispose of this evildoer.", "'Tis a shame that thou canst not reform, for now I shall have to kill thee.", "Thy sort is not welcome here. Thou hadst best run now.", "Get out of our city, scum!";
  Q5N7 = Q5N8[random(0x00, 0x0B)];
  Q5H4 = getName(target) + "! " + Q5N7;
  Q602 = getDirectionInternal(getLocation(this), getLocation(target));
  faceHere(this, Q602);
  bark(this, Q5H4);
  walkTo(this, getLocation(target), 0x11);
  setObjVar(this, "guyToKill", target);
  return();
}

trigger enterrange(0x06)
{
  if(isDead(target))
  {
    return(0x01);
  }
  if(!isHuman(target))
  {
    return(0x01);
  }
  if(hasObjVar(target, "cityguardJustWarnedMe"))
  {
    return(0x01);
  }
  if(!getCompileFlag(0x01))
  {
    if(getNotoriety(target) < (0x00 - 0x64))
    {
      bark(this, "You're evil, and must die!");
      Q4K6(this, target);
      return(0x01);
    }
    if(getNotoriety(target) < (0x00 - 0x14))
    {
      if(random(0x00, 0x0A) == 0x05)
      {
        Q4K7(this, target);
      }
    }
  }
  else
  {
    if(isMurderer(target))
    {
      bark(this, "You're a murderer, and must die!");
      Q4K6(this, target);
      return(0x01);
    }
    if(isCriminal(target))
    {
      if(random(0x00, 0x0A) == 0x05)
      {
        Q4K7(this, target);
      }
    }
  }
  return(0x01);
}

trigger leaverange(0x07)
{
  if(hasObjVar(target, "cityguardJustWarnedMe"))
  {
    removeObjVar(target, "cityguardJustWarnedMe");
  }
  return(0x01);
}

trigger pathfound(0x11)
{
  if(hasObjVar(this, "guyToKill"))
  {
    obj guyToKill = getObjVar(this, "guyToKill");
    attack(this, guyToKill);
  }
  return(0x00);
}

trigger pathnotfound(0x11)
{
  bark(this, "Thou hast escaped me!");
  if(hasObjVar(this, "guyToKill"))
  {
    obj guyToKill = getObjVar(this, "guyToKill");
    attack(this, guyToKill);
  }
  return(0x00);
}

trigger callback(0x63)
{
  int time = 0x00;
  list Q5YQ;
  getTargets(Q5YQ, this);
  if(numInList(Q5YQ) > 0x00)
  {
    time = random(0x1E, 0x3C);
    callback(this, time, 0x63);
    return(0x01);
  }
  string Q4D9 = "city";
  loc Q5AH = getLocation(this);
  int Q4YG = 0x00;
  Q4YG = isInRegionWithPrefix(Q4D9, Q5AH);
  if(!Q4YG)
  {
    Q4D9 = "justice";
    Q4YG = isInRegionWithPrefix(Q4D9, Q5AH);
  }
  if(!Q4YG)
  {
    Q4D9 = "guard";
    Q4YG = isInRegionWithPrefix(Q4D9, Q5AH);
  }
  if(!Q4YG)
  {
    doLocAnimation(Q5AH, 0x3728, 0x0A, 0x0A, 0x00, 0x00);
    sfx(Q5AH, 0x01FE, 0x00);
    deleteObject(this);
  }
  time = random(0x0A, 0x14);
  callback(this, time, 0x63);
  return(0x01);
}

trigger give
{
  if(!getCompileFlag(0x01))
  {
    return(0x01);
  }
  if(hasObjVar(givenobj, "nameVar"))
  {
    if(!hasObjVar(givenobj, "controller"))
    {
      int r = random(0x00, 0x03F2);
      if(r >= 0x0A)
      {
        switch((r - 0x0A) / 0x64)
        {
        case 0x00
          bark(this, "Er... thanks.");
          break;
        case 0x01
          bark(this, "I really hope that wasn't intended as a bribe.");
          break;
        case 0x02
          bark(this, "I'll just be keeping this.");
          break;
        case 0x03
          bark(this, "How disgusting!  I'll dispose of this.");
          break;
        case 0x04
          bark(this, "Er... thanks.");
          break;
        case 0x05
          bark(this, "Er... thanks.");
          break;
        case 0x06
        default
          bark(this, "If this were the head of a murderer, I would check for a bounty.");
          break;
        }
      }
      else
      {
        switch(r)
        {
        case 0x00
          bark(this, "I shall place this on my mantle!");
          break;
        case 0x01
          bark(this, "This tasteth like chicken.");
          break;
        case 0x02
          bark(this, "This tasteth just like the juicy peach I just ate.");
          break;
        case 0x03
          bark(this, "Ahh!  That was the one piece I was missing!");
          break;
        case 0x04
          bark(this, "Somehow, it reminds me of mother.");
          break;
        case 0x05
          bark(this, "It's a sign!  I can see Elvis in this!");
          break;
        case 0x07
          bark(this, "Thanks, I was missing mine.");
          break;
        case 0x08
          bark(this, "I'll put this in the lost-and-found box.");
          break;
        case 0x09
          bark(this, "My family will eat well tonight!");
          break;
        }
      }
      deleteObject(givenobj);
      return(0x00);
    }
    bark(this, "Ah, a head!  Let me check to see if there is a bounty on this.");
    setObjVar(giver, "bountyGuardId", this);
    string Q59F = getObjVar(givenobj, "nameVar");
    setObjVar(giver, "bountyPlayerName", Q59F);
    obj controller = getObjVar(givenobj, "controller");
    list args;
    appendToList(args, controller);
    appendToList(args, giver);
    multiMessageToLoc(getRelayLoc(controller), "takeBounty", args);
    callback(giver, 0x0A, 0x8D);
    deleteObject(givenobj);
    return(0x00);
  }
  return(0x01);
}