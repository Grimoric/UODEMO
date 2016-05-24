// UOSL (enhanced)
inherits tilesets;

trigger creation()
{
  member int Q56Y = 0x00;
  member int Q6A6 = 0x00;
  member int Q6A7 = 0x00;
  member int Q6A8 = 0x00;
  member int Q6A9 = 0x00;
  member obj sword;
  return(0x01);
}

trigger enterrange<0x05>(obj target)
{
  if(isPlayer(target))
  {
    list args = 0x03;
    multimessage(target, "foundme", args);
    if(Q6A8)
    {
      ebark(this, "It is good to have you back sir, but I have done all I can for thee, it is now up to you to save our village.");
      return(0x01);
    }
    if(Q6A6)
    {
      ebark(this, "Hello again! Have you found a smith's hammer for me yet?  I can't make that sword without it!");
      return(0x01);
    }
    if(Q6A7)
    {
      ebark(this, "Greetings my friend, have you brought me a longsword?");
      return(0x01);
    }
    if(Q56Y)
    {
      ebark(this, "Greetings again, sir.  Have you had any luck on your quest?");
      return(0x01);
    }
    bark(this, "Ah, a guest in my home, greetings my friend!");
    Q56Y = 0x01;
    return(0x01);
  }
  return(0x01);
}

trigger speech<"*">(obj speaker, string arg)
{
  if(!isPlayer(speaker))
  {
    return(0x00);
  }
  list args = 0x03;
  list text;
  string Q698;
  split(text, arg);
  for(int i = 0x00; i < numInList(text); i ++)
  {
    Q698 = text[i];
    if((Q698 == "dragon") || (Q698 == "slay"))
    {
      if(Q6A6)
      {
        message(speaker, "hammerquest", args);
        ebark(this, "The dragon won't be a problem after I make you an enchanted sword, but I need a smith's hammer to do so.");
        return(0x00);
      }
      if(Q6A7)
      {
        message(speaker, "swordquest", args);
        ebark(this, "The dragon won't be a problem after I make you an enchanted sword, but I need an ordinary longsword to do so.");
        return(0x00);
      }
      if(Q6A8)
      {
        ebark(this, "With the sword I gave you, you should be able to kill the dragon, perhaps in a single blow!");
        return(0x00);
      }
      ebark(this, "Ahh, a young dragonslayer are you?  Well you will need help.  Bring me a smith's hammer, and I can make you an enchanted sword to slay the beast with!");
      message(speaker, "hammerquest", args);
      Q6A6 = 0x01;
      Q6A7 = 0x01;
      Q6A9 = 0x01;
      return(0x00);
    }
    if(Q698 == "hammer")
    {
      ebark(this, "You should be able to get a smith's hammer from the blacksmith in town for a modest price.");
      return(0x00);
    }
    if((Q698 == "sword") || (Q698 == "longsword"))
    {
      ebark(this, "You should be able to get a longsword from the blacksmith in town for a modest price.");
      return(0x00);
    }
    if(Q698 == "quest")
    {
      ebark(this, "Well, if you got bored, you could always go slay that cursed dragon!");
      return(0x00);
    }
    if((Q698 == "help") || (Q698 == "assistance"))
    {
      if(Q6A6)
      {
        ebark(this, "You should be able to get a smith's hammer from the blacksmith in town for a modest price.");
        return(0x00);
      }
      if(Q6A7)
      {
        ebark(this, "You should be able to get a longsword from the blacksmith in town for a modest price.");
        return(0x00);
      }
      if(Q6A8)
      {
        ebark(this, "The sword I gave you is all the help I can render you.");
        return(0x00);
      }
      ebark(this, "What was it you needed help with?");
      return(0x00);
    }
    if((Q698 == "sword") || (Q698 == "glass") || (Q698 == "enchanted") || (Q698 == "longsword"))
    {
      if(Q6A6)
      {
        ebark(this, "Given a smith's hammer and an ordinary longsword, I can make an enchanted sword!");
        return(0x00);
      }
      if(Q6A7)
      {
        ebark(this, "I'll need a regular longsword to make an enchanted sword of.");
        return(0x00);
      }
      if(Q6A8)
      {
        ebark(this, "That sword does potent damage, but has very limited use.");
        return(0x00);
      }
      ebark(this, "I can make an enchanted sword, but I'll need a smith's hammer and an ordinary longsword to do so.");
      return(0x00);
      Q6A6 = 0x01;
      Q6A7 = 0x01;
      Q6A9 = 0x01;
      return(0x00);
    }
  }
  return(0x01);
}

trigger give(obj giver, obj givenobj)
{
  int Q5F8;
  Q5F8 = getObjType(givenobj);
  int Q4Q1;
  int Q527;
  obj where;
  list args;
  if((Q5F8 == 0x0FB4) || (Q5F8 == 0x0FB5) || (Q5F8 == 0x13E3) || (Q5F8 == 0x13E4))
  {
    if(Q6A8)
    {
      ebark(this, "I have already made you a glass sword, that is all I can do for you.");
      return(0x01);
    }
    if(Q6A6)
    {
      if(Q6A9)
      {
        Q6A6 = 0x00;
      }
      Q4Q1 = putObjContainer(givenobj, this);
      if(!Q4Q1)
      {
        Q4Q1 = teleport(givenobj, getLocation(this));
        ebark(this, "Oops, I dropped it.");
      }
      if(Q6A7)
      {
        ebark(this, "Yes, with this I can make you an enchanted sword to slay the dragon with!  All I need now is your longsword... you do have one don't you?");
        multimessage(giver, "swordquest", args);
      }
    }
    if((!Q6A6) && (!Q6A7) && Q6A9)
    {
      ebark(this, "Good, now I will make your glass sword.  Remember you can only use it once, and I can not make another!");
      attachScript(sword, "glasssword");
      sfx(getLocation(this), 0x3E, 0x3E);
      systemMessage(giver, "The sage chants for a moment, and hits your longsword with the hammer shattering the steel and revealing a blade of glass!");
      where = giveItem(giver, sword);
      message(giver, "givenglass", args);
      Q6A8 = 0x01;
    }
    return(0x00);
  }
  if(((Q5F8 > 0x0F5D) && (Q5F8 < 0x0F62)) || ((Q5F8 > 0x13B6) && (Q5F8 < 0x13BB)))
  {
    if(Q6A8)
    {
      ebark(this, "I have already made you a glass sword, that is all I can do for you.");
      return(0x01);
    }
    if(Q6A7)
    {
      if(Q6A9)
      {
        Q6A7 = 0x00;
      }
      Q4Q1 = putObjContainer(givenobj, this);
      if(!Q4Q1)
      {
        Q4Q1 = teleport(givenobj, getLocation(this));
        ebark(this, "Oops, I dropped it.");
      }
      sword = givenobj;
      if(Q6A6)
      {
        ebark(this, "I can make an enchanted sword from this, but I still need a hammer.");
        message(giver, "hammerquest", args);
      }
    }
    if((!Q6A6) && (!Q6A7) && Q6A9)
    {
      ebark(this, "Good, now I will make your glass sword.  Remember you can only use it once, and I can not make another!");
      attachScript(sword, "glasssword");
      sfx(getLocation(this), 0x3E, 0x3E);
      systemMessage(giver, "The sage chants for a moment, and hits your longsword with the hammer shattering the steel and revealing a blade of glass!");
      where = giveItem(giver, sword);
      message(giver, "givenglass", args);
      Q6A8 = 0x01;
    }
    return(0x00);
  }
  return(0x01);
}