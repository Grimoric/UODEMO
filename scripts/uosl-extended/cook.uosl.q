// UOSL (enhanced)
inherits sk_table;

forward void Q4E8(obj user, obj Q66M, int Q4QY, string name);

function void Q4E9(obj user, obj Q66M, int Q4QY)
{
  string name = "default";
  Q4E8(user, Q66M, Q4QY, name);
  return;
}

function int Q4Z2(int Q66P)
{
  int Q4PD = 0x00;
  switch(Q66P)
  {
  case 0x0DE9:
  case 0x0FAC:
  case 0x0FB1:
  case 0x19AA:
  case 0x19BB:
    Q4PD = 0x01;
    break;
  }
  if((Q66P >= 0x0461) && (Q66P <= 0x0466))
  {
    Q4PD = 0x01;
  }
  if((Q66P >= 0x046A) && (Q66P <= 0x046F))
  {
    Q4PD = 0x01;
  }
  if((Q66P >= 0x0475) && (Q66P <= 0x0480))
  {
    Q4PD = 0x01;
  }
  if((Q66P >= 0x092B) && (Q66P <= 0x0933))
  {
    Q4PD = 0x01;
  }
  if((Q66P >= 0x0937) && (Q66P <= 0x0942))
  {
    Q4PD = 0x01;
  }
  if((Q66P >= 0x0945) && (Q66P <= 0x0950))
  {
    Q4PD = 0x01;
  }
  if((Q66P >= 0x0953) && (Q66P <= 0x095E))
  {
    Q4PD = 0x01;
  }
  if((Q66P >= 0x0961) && (Q66P <= 0x096C))
  {
    Q4PD = 0x01;
  }
  if((Q66P >= 0x0DE3) && (Q66P <= 0x0DE8))
  {
    Q4PD = 0x01;
  }
  if((Q66P >= 0x12EE) && (Q66P <= 0x134D))
  {
    Q4PD = 0x01;
  }
  if((Q66P >= 0x197A) && (Q66P <= 0x19A9))
  {
    Q4PD = 0x01;
  }
  if((Q66P >= 0x19AB) && (Q66P <= 0x19B6))
  {
    Q4PD = 0x01;
  }
  if((Q66P >= 0x1A19) && (Q66P <= 0x1A74))
  {
    Q4PD = 0x01;
  }
  if((Q66P >= 0x5D7E) && (Q66P <= 0x5D93))
  {
    Q4PD = 0x01;
  }
  if((Q66P >= 0x343B) && (Q66P <= 0x346C))
  {
    Q4PD = 0x01;
  }
  if((Q66P >= 0x3547) && (Q66P <= 0x354C))
  {
    Q4PD = 0x01;
  }
  if((Q66P >= 0x398C) && (Q66P <= 0x399F))
  {
    Q4PD = 0x01;
  }
  return(Q4PD);
}

function void Q4E8(obj user, obj Q66M, int Q4QY, string name)
{
  if(isAtHome(this))
  {
    systemMessage(user, "You can't use that, it belongs to someone else.");
    return;
  }
  int Q66P = getObjType(Q66M);
  if(Q4Z2(Q66P))
  {
    if(!testSkill(user, 0x0D))
    {
      systemMessage(user, "You burn the food to a crisp! It's ruined.");
      destroyOne(this);
      return;
    }
    if(name != "default")
    {
      if(hasObjVar(this, "NAME"))
      {
        removeObjVar(this, "NAME");
        setObjVar(this, "NAME", name);
      }
    }
    if(random(0x00, 0x01))
    {
      barkTo(user, user, "Looks delicious.");
    }
    else
    {
      barkTo(user, user, "Mmmm, smells good.");
    }
    obj Q47F = getBackpack(user);
    int Q4TM;
    obj Q5CN = createGlobalObjectOn(this, Q4QY);
    if(!isInContainer(this))
    {
      if(canHold(Q47F, Q5CN))
      {
        Q4TM = putObjContainer(Q5CN, Q47F);
        systemMessage(user, "You put the cooked food into your backpack.");
      }
      else
      {
        Q4TM = teleport(Q5CN, getLocation(user));
        systemMessage(user, "You put the cooked food on the ground.");
      }
    }
    destroyOne(this);
  }
  else
  {
    systemMessage(user, "You can't cook on that.");
  }
  return;
}