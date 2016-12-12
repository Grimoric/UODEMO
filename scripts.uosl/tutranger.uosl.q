// UOSL (native)
inherits globals;

trigger creation
{
  member int Q4XI = 0x00;
  member int Q5YX = 0x00;
  return(0x01);
}

trigger enterrange(0x04)
{
  if(isPlayer(target))
  {
    list args = 0x06;
    multimessage(target, "foundme", args)
  }
  return(0x01);
}

trigger speech("*")
{
  if(!isPlayer(speaker))
  {
    return(0x01);
  }
  list text;
  string Q698;
  split(text, arg);
  for(int i = 0x00; i < numInList(text); i ++)
  {
    Q698 = text[i];
    if(((Q698 == "tracking") || (Q698 == "track") || (Q698 == "hunt")) && !Q5YX)
    {
      bark(this, "You would like to learn tracking, eh?  Are you perchance going after that dragon?");
      Q4XI = 0x01;
      return(0x00);
    }
    if(Q698 == "dragon")
    {
      if(!Q5YX)
      {
        bark(this, "What of the dragon, are you on the hunt for it?");
        Q4XI = 0x01;
      }
      else
      {
        bark(this, "I am just relieved that the terrible monster will be dead soon.");
      }
      return(0x00);
    }
    if(((Q698 == "no") || (Q698 == "nope") || (Q698 == "n") || (Q698 == "nay")) && !Q5YX)
    {
      if(Q4XI)
      {
        bark(this, "That is a shame, the town was hoping someone like you could help us.");
        Q4XI = 0x00;
        return(0x00);
      }
    }
    if(((Q698 == "yes") || (Q698 == "yup") || (Q698 == "y") || (Q698 == "aye")) && !Q5YX)
    {
      if(Q4XI)
      {
        list args = 0x06;
        if(getSkillLevel(speaker, 0x26) < 0x3C)
        {
          bark(this, "Bless thee sir, for that cause I will teach you to track it down for free!");
          systemMessage(speaker, "Your skill level increases.");
          addSkillLevel(speaker, 0x26, (0x64 - getSkillLevel(speaker, 0x26)) * 0x0A);
          multimessage(speaker, "usedme", args);
          Q5YX = 0x01;
        }
        else
        {
          multimessage(speaker, "usedme", args);
          bark(this, "I wish I could help you, but there is nothing more I can do to aid you on your quest.");
        }
        return(0x00);
        Q4XI = 0x00;
      }
    }
  }
  Q4XI = 0x00;
  return(0x01);
}