// UOSL (native)
inherits human_funcs;

forward int Q4BN(obj , obj );
forward void Q4LW(obj , obj );
forward string Q4RO(obj );
forward string Q4RP(obj );
forward void Q57S(obj );
forward string Q4CO(obj , list );
forward string Q4CP(obj , list );
forward string Q4CI(obj , list );
forward string Q4C7(obj , list );
forward string Q4BJ(obj , list );
forward void Q4MC(obj , obj , int );
forward string Q59D();

function int Q4BN(obj this, obj target)
{
  if(!isPlayer(target))
  {
    return(0x00);
  }
  if(isDead(target))
  {
    return(0x00);
  }
  if(!canSeeObj(this, target))
  {
    return(0x00);
  }
  return(0x01);
}

function void Q4LW(obj this, obj target)
{
  faceHere(this, getDirectionInternal(getLocation(this), getLocation(target)));
  string Q58D = getName(target) + "!";
  bark(this, Q58D);
  setObjVar(this, "questTarget", target);
  walkTo(this, interpose(getLocation(this), getLocation(target)), 0x13);
  return();
}

trigger pathfound(0x13)
{
  if(!hasObjVar(this, "questTarget"))
  {
    return(0x01);
  }
  obj target = getObjVar(this, "questTarget");
  faceHere(this, getDirectionInternal(getLocation(this), getLocation(target)));
  string Q58D = getObjVar(this, "questIntroMessage");
  bark(this, Q58D);
  removeObjVar(this, "questTarget");
  Q57S(this);
  return(0x01);
}

function string Q4RO(obj target)
{
  list Q5K7 = "Thou dost look like a likely sort. ", "Thou hast the look of an adventurer to thee. ", "I am in need of aid, and thou hast the look of an adventurer. ", "Mightest thou be able to help me? ", "Mightest thou be able to aid me? ", "Mightest thou be able to assist me? ", "I am in need of assistance! ", "I am in need of aid! ", "I am in need of help! ", "Dost thou suppose thou canst help me? ", "Dost thou suppose thou canst assist me? ", "Dost thou suppose thou canst aid me? ", "Couldst thou help me? ", "Couldst thou aid me? ", "Couldst thou assist me? ", "Thou seemst to be one who relishes a difficult task... ", "Surely thou wilt help me! ", "Surely thou wilt aid me! ", "Surely thou wilt assist me!", "Hmm, if thou hast a moment... ", "Couldst thou spare some of thy time? ", "If thou couldst find the time... ";
  string Q58D = Q5K7[random(0x00, (numInList(Q5K7) - 0x01))];
  if((getNotoriety(target) > 0x64) || (getNotoriety(target) < (0x00 - 0x64)))
  {
    Q5K7 = "I have heard of thy deeds. ", "Thy name precedes thee. ", "I have heard of thee. ", "I have heard of thy deeds. ", "I recognized thy face, for oft thou art mentioned by folk. ", "I recognized thee from descriptions and tales of thy doings. ", "Thou'rt the sort of powerful person who can best help me. ", "Thou'rt well-known as the sort of person who can help me. ", "Thy deeds make thee the best to be able to aid me. ", "I hope that my poor problem is not beneath thee. ", "My small problem may be beneath thy notice, but... ", "Given thy prowess, I am sure that thou canst solve my problem. ", "Given what thou hast accomplished, I am sure that thou canst help me. ";
    string Q5DI = Q5K7[random(0x00, numInList(Q5K7) - 0x01)];
    Q58D = Q58D + Q5DI;
  }
  return(Q58D);
}

function string Q4RP(obj this)
{
  string Q5N7;
  list Q4D4;
  obj reward;
  reward = getObjVar(this, "questReward");
  if(reward == NULL())
  {
    Q4D4 = "Alas, I have naught to offer thee in payment save rumors.", "Sadly, all I can offer thee in return is rumors.", "Rumors and news are all I can offer in payment.", "I have no reward to give thee, though.", "I have nothing to offer thee as a reward save rumors.", "I wish that I had aught to entice thee with, but all I can offer is rumors.", "Sadly, rumors and news are all I have to give thee in return.";
    Q5N7 = Q4D4[random(0x00, numInList(Q4D4) - 0x01)];
    return(Q5N7);
  }
  Q4D4 = "I can pay thee.", "I can reward thee.", "I have some small payment to offer.", "I have some small reward to give.", "I can give thee a reward.", "I can give thee some payment.", "I can offer thee a small reward.", "I can offer thee some small payment.";
  Q5N7 = Q4D4[random(0x00, numInList(Q4D4) - 0x01)];
  Q4D4 = " As reward, I have ", " I can give thee ", " I would give thee ", " I could give thee ", " I might give thee ", " As reward, mayhap I have ", " Mayhap I can give thee ", " Mayhap I would give thee ", " Mayhap I could give thee ";
  Q5N7 = Q4D4[random(0x00, numInList(Q4D4) - 0x01)];
  Q5N7 = Q5N7 + getName(reward) + ".";
  return(Q5N7);
}

function void Q57S(obj this)
{
  disableBehaviors(this);
  callBack(this, 0x2D, 0x38);
  return();
}

trigger callback(0x38)
{
  disableBehaviors(this);
  int myLoyalty = 0x00;
  if(hasObjVar(this, "myLoyalty"))
  {
    myLoyalty = getObjVar(this, "myLoyalty");
  }
  if(myLoyalty < 0x01)
  {
    enableBehaviors(this);
    if(hasObjVar(this, "lastSpokeTo"))
    {
      obj Q54G = getObjVar(this, "lastSpokeTo");
      removeObjVar(this, "lastSpokeTo");
      if(hasObjVar(this, "wasAskedBuy"))
      {
        removeObjVar(this, "wasAskedBuy");
        return(0x00);
      }
      list Q5YQ;
      getTargets(Q5YQ, this);
      if(numInList(Q5YQ) > 0x00)
      {
        return(0x00);
      }
    }
  }
  return(0x00);
}

function string Q4CO(obj this, list args)
{
  string Q58D;
  int Q4QI;
  string name;
  list Q4CV = "payment", "reward", "pay", "give";
  int i;
  if(!hasObjVar(this, "questReward"))
  {
    return(Q58D);
  }
  Q4QI = 0x00;
  for(i = 0x00; i < numInList(Q4CV); i ++)
  {
    name = Q4CV[i];
    if(isInList(args, name))
    {
      Q4QI = 0x01;
    }
  }
  if(Q4QI)
  {
    Q58D = Q4RP(this) + " ";
  }
  return(Q58D);
}

function string Q4CP(obj this, list args)
{
  obj reward;
  string name;
  list Q5B5;
  int Q4QI = 0x00;
  list Q5N5;
  int i;
  string Q58D;
  if(!hasObjVar(this, "questReward"))
  {
    return(Q58D);
  }
  reward = getObjVar(this, "questReward");
  name = getName(reward);
  split(Q5B5, name);
  for(i = 0x00; i < numInList(Q5B5); i ++)
  {
    name = Q5B5[i];
    if(isInList(args, name))
    {
      Q4QI = 0x01;
    }
  }
  if(Q4QI)
  {
    Q5N5 = "Ah! I shan't give thee ", "Thou canst not have the ", "I will not simply give thee the ", "I shan't just give thee the ", "What? Nay, I will not just give thee ", "Ah! I will not simply hand thee ";
    Q58D = Q5N5[random(0x00, numInList(Q5N5) - 0x01)];
    Q58D = Q58D + getName(reward) + " lest thou dost as I ask." + " ";
    string Q59W = getObjVar(this, "questFetchReason");
    int Q4HL = getObjVar(this, "questFetchObjType");
    Q58D = Q58D + Q59W + getNameByType(Q4HL) + ". ";
    if(hasObjVar(this, "questItemHolder"))
    {
      obj Q4WD = getObjVar(this, "questItemHolder");
      if(Q4WD != NULL())
      {
        Q58D = Q58D + getName(Q4WD) + " hath one, I hear. ";
      }
    }
  }
  return(Q58D);
}

function string Q4CI(obj this, list args)
{
  int Q65M;
  int Q4QI = 0x00;
  string name;
  list Q5B5;
  int i;
  obj Q4WD;
  string Q58D;
  if(!hasObjVar(this, "questFetchObjType"))
  {
    return(Q58D);
  }
  Q65M = getObjVar(this, "questFetchObjType");
  Q4QI = 0x00;
  name = getNameByType(Q65M);
  split(Q5B5, name);
  for(i = 0x00; i < numInList(Q5B5); i ++)
  {
    name = Q5B5[i];
    if(isInList(args, name))
    {
      Q4QI = 0x01;
    }
  }
  if(Q4QI)
  {
    name = getObjVar(this, "questFetchReason");
    if(hasObjVar(this, "questItemHolder"))
    {
      Q4WD = getObjVar(this, "questItemHolder");
      name = getName(Q4WD);
      Q58D = getNameByType(Q65M) + "s? Hast thou spoken to " + name + "? " + Q4RP(this);
    }
    else
    {
      Q58D = getNameByType(Q65M) + "s? " + name + "one. " + Q4RP(this);
    }
    toUpper(Q58D, 0x00, 0x01);
    Q58D = Q58D + " ";
  }
  return(Q58D);
}

function string Q4C7(obj this, list args)
{
  string Q58D;
  obj Q4WD;
  int Q65M;
  string name;
  if(!hasObjVar(this, "questItemHolder"))
  {
    return(Q58D);
  }
  if(!hasObjVar(this, "questFetchObjType"))
  {
    return(Q58D);
  }
  Q4WD = getObjVar(this, "questItemHolder");
  Q65M = getObjVar(this, "questFetchObjType");
  name = getName(Q4WD);
  if(isInList(args, name))
  {
    Q58D = "Yes, " + getName(Q4WD) + " hath my " + getNameByType(Q65M) + " and " + getHeShe(Q4WD) + " is " + getDirection(getLocation(this), getLocation(Q4WD)) + ".";
    toUpper(Q58D, 0x00, 0x01);
    if(getDistance(getLocation(this), getLocation(Q4WD)) == "right here")
    {
      Q58D = Q58D + " Just turn around and look.";
    }
    else
    {
      if(getDistance(getLocation(this), getLocation(Q4WD)) == "a long journey")
      {
        Q58D = Q58D + " Just turn around and look.";
      }
      else
      {
        Q58D = Q58D + getHeShe(Q4WD) + " is " + getDistance(getLocation(this), getLocation(Q4WD)) + " from here.";
        toUpper(Q58D, 0x00, 0x01);
      }
    }
  }
  return(Q58D);
}

function string Q4CF(obj this, list args)
{
  string Q58D;
  if(!hasObjVar(this, "questMurderVictim"))
  {
    return(Q58D);
  }
  if(!hasObjVar(this, "questMurderReason"))
  {
    return(Q58D);
  }
  obj victim = getObjVar(this, "questMurderVictim");
  if(!isInList(args, getName(victim)))
  {
    return(Q58D);
  }
  Q58D = getName(victim) + "? Aye" + Q59D();
  return(Q58D);
}

function string Q4BJ(obj this, list args)
{
  string name;
  string Q69A;
  list Q5B5;
  string Q58D;
  obj Q61K;
  string Q59W;
  obj Q59I;
  int Q65M = 0x00;
  if(hasObjVar(this, "questDeliverObject"))
  {
    Q61K = getObjVar(this, "questDeliverObject");
    Q59W = getObjVar(this, "questDeliverReason");
    Q59I = getObjVar(this, "questItemDestination");
    Q65M = 0x01;
  }
  if(hasObjVar(this, "questDeliverObjectRec"))
  {
    Q61K = getObjVar(this, "questDeliverObjectRec");
  }
  if(Q61K == NULL())
  {
    return(Q58D);
  }
  name = getName(Q61K);
  split(Q5B5, name);
  int Q4QI = 0x00;
  for(int i = 0x00; i < numInList(Q5B5); i ++)
  {
    Q69A = Q5B5[i];
    if(isInList(args, Q69A))
    {
      Q4QI = 0x01;
    }
  }
  if(!Q4QI)
  {
    return(Q58D);
  }
  Q58D = "Ah, " + name + ". ";
  if(Q65M)
  {
    Q58D = Q58D + Q59W + name + ". Couldst thou take this one to " + getName(Q59I) + "? " + Q4RP(Q59I);
  }
  else
  {
    Q58D = Q58D + "I am expecting one delivered.";
  }
  return(Q58D);
}

trigger speech("*")
{
  list args;
  string Q58D;
  split(args, arg);
  if(isInList(args, "quest"))
  {
    if(hasObjVar(this, "questIntroMessage"))
    {
      string Q5N5 = getObjVar(this, "questIntroMessage");
      bark(this, Q5N5);
      Q57S(this);
      return(0x00);
    }
  }
  Q58D = Q58D + Q4CO(this, args);
  Q58D = Q58D + Q4CP(this, args);
  Q58D = Q58D + Q4CI(this, args);
  Q58D = Q58D + Q4C7(this, args);
  Q58D = Q58D + Q4CF(this, args);
  Q58D = Q58D + Q4BJ(this, args);
  if(Q58D != "")
  {
    bark(this, Q58D);
    Q57S(this);
    return(0x00);
  }
  return(0x01);
}

function void Q4MC(obj this, obj giver, int Q4TZ)
{
  list Q5N5 = "I shall tell all of thy deed.", "Thy reputation shall be cemented by what I shall tell!", "I thank thee kindly!", "I cannot tell thee how much this helps me!", "I thank thee indeed!", "I confess I never expected thee to aid me!", "I admit that I never expected thee to help me!", "Thou'rt amazing! I thank thee.", "My gratitude hath no bounds!", "I shall tell all my friends of thee!", "My thanks.", "I owe thee many thanks.", "Thou hast accomplished what I sought!", "From the bottom of my heart, I thank thee.";
  string Q58D = Q5N5[random(0x00, numInList(Q5N5) - 0x01)];
  Q58D = Q58D + " ";
  if(Q4TZ)
  {
    addNotoriety(giver, 0x01);
  }
  else
  {
    removeNotoriety(giver, 0x01);
  }
  obj reward = getObjVar(this, "questReward");
  if(reward == NULL())
  {
    Q58D = Q58D + "I have no item to give thee, only news... " + Q4TQ(this, giver);
  }
  else
  {
    if(!hasObj(this, reward))
    {
      Q58D = Q58D + " Alas, the reward I was to give thee has been lost! + But... " + Q4TQ(this, giver);
    }
    else
    {
      if(giveItem(giver, reward) == NULL())
      {
        int Q4TR = teleport(reward, getLocation(giver));
      }
      Q58D = Q58D + " Please accept this " + getName(reward) + " as a reward.";
    }
  }
  bark(this, Q58D);
  Q57S(this);
  return();
}

function string Q59D()
{
  string Q59W;
  list Q5LW;
  if(random(0x00, 0x01))
  {
    Q5LW = ", someone nobody shall miss", ", whom even their mother disliketh", ", well-known as scum", ", a scab upon the face of the earth", ", who clearly deserveth to die", ", who is unworthy of thy blade, perhaps... but worthy of someone's", ". I am not the sort to dirty my hands", ", but I have standing in this town and dare not jeopardize it", "; I fear I cannot do it myself", "; I dare not do it myself", "; suspicion would fall 'pon me were I to do it myself", "; all would suspect me immediately";
    Q59W = Q5LW[random(0x00, numInList(Q5LW) - 0x01)];
  }
  Q5LW = ". I'd like thee to kill them.", ". Thou shouldst kill them for me.", " and I'd like thee to kill them.", " and thou'rt a good choice for the murderer.", ". Thou mightest be a good choice for the murderer.", ". Kill them for me.";
  string Q5Y9 = Q5LW[random(0x00, numInList(Q5LW) - 0x01)];
  Q59W = Q59W + Q5Y9;
  return(Q59W);
}