// UOSL (native)
inherits add_door_to_key;

function void Q51S(obj Q5NV, int add)
{
  int Q65M = getObjType(Q5NV);
  list Q4E4;
  getContents(Q4E4, Q5NV);
  int num = numInList(Q4E4);
  num = num + add;
  int newtype;
  if(num < 0x00)
  {
    newtype = 0x1011;
  }
  else
  {
    switch(num)
    {
    case 0x00
      newtype = 0x1011;
      break;
    case 0x01
    case 0x02
      newtype = 0x1769;
      break;
    case 0x03
    case 0x04
      newtype = 0x176A;
      break;
    default
      newtype = 0x176B;
      break;
    }
  }
  if(Q65M != newtype)
  {
    setType(Q5NV, newtype);
  }
  return;
}

function int Q4ZG(obj Q4XN)
{
  return(hasObjVar(Q4XN, "whatIUnlock"));
}

trigger use
{
  systemMessage(user, "What do you want to unlock?");
  targetObj(user, this);
  return(0x00);
}

function int Q51T(obj Q5NV, obj user)
{
  obj container = getItemAtSlot(user, 0x15);
  if(container == NULL())
  {
    return(0x01);
  }
  if(!isContainer(container))
  {
    return(0x01);
  }
  list Q51V;
  getContents(Q51V, Q5NV);
  int num = numInList(Q51V);
  for(int Q4EJ = 0x00; Q4EJ < num; Q4EJ ++)
  {
    obj Q51R = Q51V[Q4EJ];
    int Q5NC = putObjContainer(Q51R, container);
  }
  Q51S(Q5NV, 0x00);
  systemMessage(user, "You open the keyring.");
  return(0x01);
}

function int Q51U(obj Q5NV, obj user, obj usedon)
{
  list Q51V;
  getContents(Q51V, Q5NV);
  int num = numInList(Q51V);
  for(int Q4EJ = 0x00; Q4EJ < num; Q4EJ ++)
  {
    obj Q51R = Q51V[Q4EJ];
    if(Q51O(Q51R, usedon))
    {
      if(Q51Q(Q51R, usedon))
      {
        barkTo(usedon, user, "You lock " + getName(usedon) + ".");
      }
      else
      {
        barkTo(usedon, user, "You unlock " + getName(usedon) + ".");
      }
      return(0x01);
    }
  }
  barkTo(usedon, user, "You do not have a key for " + getName(usedon) + ".");
  return(0x01);
}

trigger targetobj
{
  if(usedon == NULL())
  {
    return(0x00);
  }
  if(usedon == this)
  {
    return(Q51T(this, user));
  }
  return(Q51U(this, user, usedon));
}

trigger give
{
  if(!Q4ZG(givenobj))
  {
    systemMessage(giver, "Only non-blank keys can be put on a keyring.");
    return(0x00);
  }
  Q51S(this, 0x01);
  systemMessage(giver, "You put the key on the keyring.");
  int Q527 = putObjContainer(givenobj, this);
  return(0x00);
}

function int Q4BK(obj Q4XN, string Q5OK)
{
  if(hasScript(Q4XN, Q5OK))
  {
    detachScript(Q4XN, Q5OK);
    return(0x01);
  }
  return(0x00);
}

trigger objectloaded
{
  int Q5NC;
  Q5NC = Q4BK(this, "5993");
  Q5NC = Q4BK(this, "5994");
  Q5NC = Q4BK(this, "5995");
  return(0x01);
}