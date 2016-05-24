// UOSL (enhanced)
inherits add_door_to_key;

function int Q593(obj house, obj Q5HY)
{
  obj Q5AB = NULL();
  if(hasObjVar(house, "myhousedoor"))
  {
    Q5AB = getObjVar(house, "myhousedoor");
  }
  if(Q5AB == NULL())
  {
    if(hasObjListVar(house, "myhousedoors"))
    {
      list Q5Z5;
      getObjListVar(Q5Z5, house, "myhousedoors");
      if(numInList(Q5Z5) > 0x00)
      {
        Q5AB = Q5Z5[0x00];
      }
    }
  }
  if(Q5AB == NULL())
  {
    return(0x00);
  }
  obj Q5NC = mobileHasObjWithListObjOfObj(Q5HY, "whatIUnlock", Q5AB);
  if(Q5NC == NULL())
  {
    return(0x00);
  }
  return(0x01);
}

function int Q4X6(obj house, obj Q5HY)
{
  return(Q593(house, Q5HY));
}

function string Q592(int num, string name, string terrain)
{
  string Q58D = "A ";
  concat(Q58D, name);
  concat(Q58D, " can not be created here.");
  if(num == (0x00 - 0x09))
  {
    Q58D = "A ";
    concat(Q58D, name);
    concat(Q58D, " can not be created here.  A living creature is blocking the ");
    concat(Q58D, name);
    concat(Q58D, ".");
    return(Q58D);
  }
  if(num == (0x00 - 0x05))
  {
    Q58D = "A ";
    concat(Q58D, name);
    concat(Q58D, " can not be created here.  Either something is blocking the ");
    concat(Q58D, name);
    concat(Q58D, " or part of the ");
    concat(Q58D, name);
    concat(Q58D, " would not be on ");
    concat(Q58D, terrain);
    concat(Q58D, ".");
    return(Q58D);
  }
  if(num <= (0x00 - 0x02))
  {
    Q58D = "An internal error occured.  Please notify a game master that you received this message."/* ) */;
    return(Q58D);
  }
  if(num == (0x00 - 0x01))
  {
    Q58D = "A ";
    concat(Q58D, name);
    concat(Q58D, " can not be created here.");
    return(Q58D);
  }
  if(num == 0x00)
  {
    Q58D = "A ";
    concat(Q58D, name);
    concat(Q58D, " can not be created here.  Either something is blocking the ");
    concat(Q58D, name);
    concat(Q58D, " or part of the ");
    concat(Q58D, name);
    concat(Q58D, " would not be on ");
    concat(Q58D, terrain);
    concat(Q58D, ".");
    return(Q58D);
  }
  if(num > 0x00)
  {
    Q58D = "";
    return(Q58D);
  }
  return(Q58D);
}

function void Q59B(obj multi)
{
  if(getDecayMax(multi) == 0xFFFF)
  {
    return;
  }
  int Q5ND = setDecayCount(multi, 0x00);
  return;
}

function int Q58S(obj multi)
{
  int Q4FW = getDecayCount(multi);
  if(Q4FW > 0x00)
  {
    return(0x01);
  }
  return(0x00);
}

function int Q4TL(obj me)
{
  obj multi = getMultiSlaveId(me);
  int Q4FW = getDecayCount(multi);
  if(getDecayMax(multi) == 0xFFFF)
  {
    resetMultiCarriedDecay(multi);
    return(0x00);
  }
  if(Q4FW > 0x00)
  {
    Q59B(multi);
    resetMultiCarriedDecay(multi);
    return(0x01);
  }
  return(0x00);
}

function int Q58R(obj multi)
{
  return(hasObjVar(multi, "mymultiname"));
}

function string Q58N(obj multi)
{
  string name = getObjVar(multi, "mymultiname");
  return(name);
}

function void Q58V(obj multi, string name)
{
  setObjVar(multi, "mymultiname", name);
  return;
}

function void Q58U(obj multi)
{
  removeObjVar(multi, "mymultiname");
  return;
}

function int Q58K(obj Q5AK, obj Q68S, string Q68D)
{
  if(Q4X6(Q5AK, Q68S))
  {
    if(Q4TL(Q5AK))
    {
      string Q5CQ = "Your ";
      concat(Q5CQ, Q68D);
      concat(Q5CQ, "'s age and its contents have been refreshed.");
      systemMessage(Q68S, Q5CQ);
      string Q5AS;
      getCurrentTimeStr(Q5AS);
      setObjVar(Q5AK, "refreshtime", Q5AS);
      return(0x01);
    }
  }
  return(0x00);
}

function int Q58L(obj Q5AK, list Q68S, string Q68D)
{
  int Q52R = numInList(Q68S);
  obj Q5HY;
  for(int i = 0x00; i < Q52R; i ++)
  {
    Q5HY = Q68S[i];
    if(Q58K(Q5AK, Q5HY, Q68D))
    {
      return(0x01);
    }
  }
  return(0x00);
}

function void Q4D1(obj me, obj Q68S, string Q68D)
{
  obj Q5AK = getMultiSlaveId(me);
  if(Q58S(Q5AK))
  {
    int Q527 = Q58K(Q5AK, Q68S, Q68D);
  }
  return;
}

function void Q58J(obj me, obj Q68S, string Q68D)
{
  string Q5XK;
  obj multi = getMultiSlaveId(me);
  int Q4H3 = getDecayMax(multi);
  if(Q4H3 == 0xFFFF)
  {
    Q5XK = " is ageless.";
  }
  else
  {
    int Q4FW = getDecayCount(multi);
    if(Q4FW == 0x00)
    {
      Q5XK = " is like new.";
    }
    else
    {
      if(Q4FW < (Q4H3 / 0x04))
      {
        Q5XK = " is slightly worn.";
      }
      else
      {
        if(Q4FW < (0x02 * Q4H3 / 0x04))
        {
          Q5XK = " is somewhat worn.";
        }
        else
        {
          if(Q4FW < (0x03 * Q4H3 / 0x04))
          {
            Q5XK = " is fairly worn.";
          }
          else
          {
            if(Q4FW < (0x13 * Q4H3 / 0x14))
            {
              Q5XK = " is greatly worn.";
            }
            else
            {
              Q5XK = " is in danger of collapsing.";
            }
          }
        }
      }
    }
  }
  string Q5CQ = "This ";
  concat(Q5CQ, Q68D);
  concat(Q5CQ, Q5XK);
  barkTo(me, Q68S, Q5CQ);
  return;
}

function int Q58Y(obj Q5AK)
{
  list Q57V;
  loc Q4VS = getLocation(Q5AK);
  getMobsInRange(Q57V, Q4VS, 0x07);
  int num = numInList(Q57V);
  if(num > 0x00)
  {
    Q4TL(Q5AK);
    return(0x01);
  }
  return(0x00);
}

function int Q58P(obj multi)
{
  if(hasScript(multi, "housedecay"))
  {
    return(0x00);
  }
  else
  {
    if(hasScript(multi, "shipdecay"))
    {
      return(0x01);
    }
  }
  return(0x02);
}

function obj Q4YP(obj user, loc where)
{
  list Q4ND;
  getObjectsInRange(Q4ND, where, 0x02);
  int num = numInList(Q4ND);
  for(int i = 0x00; i < num; i ++)
  {
    obj it = Q4ND[i];
    if(isMultiComp(it))
    {
      obj multi = getMultiSlaveId(it);
      if(Q58P(multi) == 0x00)
      {
        if(Q4X6(multi, user))
        {
          return(multi);
        }
      }
    }
  }
  return(NULL());
}

function void Q4WQ(obj house, obj it)
{
  list Q5AV;
  if(hasObjListVar(house, "vendors"))
  {
    getObjListVar(Q5AV, house, "vendors");
  }
  appendToList(Q5AV, it);
  setObjVar(house, "vendors", Q5AV);
  return;
}

function int Q4WR(obj house)
{
  list Q5AV;
  if(hasObjListVar(house, "vendors"))
  {
    getObjListVar(Q5AV, house, "vendors");
  }
  if(numInList(Q5AV) >= 0x01)
  {
    return(0x00);
  }
  return(0x01);
}

function void Q4WY(obj house, list Q5AV)
{
  if(hasObjListVar(house, "vendors"))
  {
    getObjListVar(Q5AV, house, "vendors");
  }
  return;
}

function void Q4X2(obj house, obj vendor)
{
  if(hasObjListVar(house, "vendors"))
  {
    list Q5AV;
    getObjListVar(Q5AV, house, "vendors");
    removeSpecificItem(Q5AV, vendor);
    if(numInList(Q5AV) > 0x00)
    {
      setObjVar(house, "vendors", Q5AV);
    }
    else
    {
      removeObjVar(house, "vendors");
    }
  }
  return;
}

function void Q4WS(obj house)
{
  list Q5AV;
  Q4WY(house, Q5AV);
  obj vendor;
  int num = numInList(Q5AV);
  for(int i = 0x00; i < num; i ++)
  {
    vendor = Q5AV[i];
    if(isValid(vendor))
    {
      list args;
      appendToList(args, house);
      message(vendor, "housedecay", args);
    }
  }
  removeObjVar(house, "vendors");
  return;
}

function void Q58T(obj multi)
{
  removeObjVar(multi, "guildstone");
  return;
}

function void Q58I(obj multi, obj Q5WA)
{
  setObjVar(multi, "guildstone", Q5WA);
  return;
}

function int Q58Q(obj multi)
{
  return(hasObjVar(multi, "guildstone"));
}

function obj Q58M(obj multi)
{
  obj Q5WA = NULL();
  if(hasObjVar(multi, "guildstone"))
  {
    Q5WA = getObjVar(multi, "guildstone");
  }
  return(Q5WA);
}

function int Q58X(obj multi, obj Q5WA)
{
  if(Q58Q(multi))
  {
    return(0x00);
  }
  Q58I(multi, Q5WA);
  return(0x01);
}

function int Q4ST(obj Q4H5)
{
  if(!hasObjVar(Q4H5, "myshiptype"))
  {
    return(0x00 - 0x01);
  }
  return(getobjvar_int(Q4H5, "myshiptype"));
}

function int Q4S1(obj Q4H5)
{
  if(!hasObjVar(Q4H5, "myhousetype"))
  {
    return(0x00 - 0x01);
  }
  return(getobjvar_int(Q4H5, "myhousetype"));
}

function int Q4A4(obj Q68S, int Q4OX)
{
  if(getFameLevel(Q68S) < Q4OX)
  {
    return(0x00);
  }
  return(0x01);
}

function int Q4A3(obj Q68S, int Q4X9)
{
  int Q4OX = 0x00;
  switch(Q4X9)
  {
  case 0x00:
  case 0x01:
  case 0x02:
  case 0x03:
  case 0x04:
  case 0x05:
  case 0x14:
    Q4OX = 0x02;
    break;
  case 0x06:
  case 0x07:
    Q4OX = 0x01;
    break;
  case 0x08:
  case 0x09:
  case 0x0A:
    Q4OX = 0x03;
    break;
  case 0x0B:
  case 0x0C:
  case 0x0D:
    Q4OX = 0x04;
    break;
  }
  return(Q4A4(Q68S, Q4OX));
}

function int Q4A6(obj Q68S, int Q5SR)
{
  int Q4OX = 0x00;
  switch(Q5SR)
  {
  case 0x00:
  case 0x01:
    Q4OX = 0x02;
    break;
  case 0x02:
  case 0x03:
    Q4OX = 0x03;
    break;
  case 0x04:
  case 0x05:
    Q4OX = 0x04;
    break;
  }
  return(Q4A4(Q68S, Q4OX));
}

function int Q4A5(obj Q68S, obj Q4H5)
{
  int Q65M = Q4S1(Q4H5);
  if(Q65M >= 0x00)
  {
    return(Q4A3(Q68S, Q65M));
  }
  else
  {
    Q65M = Q4ST(Q4H5);
    if(Q65M >= 0x00)
    {
      return(Q4A6(Q68S, Q65M));
    }
  }
  return(0x01);
}

function int Q591(obj Q4H5)
{
  int Q65M = Q4S1(Q4H5);
  if(Q65M >= 0x00)
  {
    return(0x00);
  }
  else
  {
    Q65M = Q4ST(Q4H5);
    if(Q65M >= 0x00)
    {
      return(0x01);
    }
  }
  return(0x02);
}

function void Q58W(obj multi, obj Q68S)
{
  return;
}

function obj Q58O(obj multi)
{
  return(NULL());
}

function void Q599(obj Q68S, obj multi)
{
  return;
}

function void Q598(obj Q68S, obj multi)
{
  return;
}

function obj Q597(obj Q68S)
{
  return(NULL());
}

function obj Q595(obj Q68S)
{
  return(NULL());
}

function obj Q596(obj Q68S, int Q65M)
{
  switch(Q65M)
  {
  case 0x00:
    return(Q595(Q68S));
    break;
  case 0x01:
    return(Q597(Q68S));
    break;
  }
  return(NULL());
}

function int Q594(obj Q68S, int Q65M)
{
  obj multi = Q596(Q68S, Q65M);
  if(multi != NULL())
  {
    return(0x00);
  }
  return(0x01);
}

function int Q590(obj user, obj Q4H5)
{
  if(getCompileFlag(0x02))
  {
    if(!Q4A5(user, Q4H5))
    {
      barkTo(Q4H5, user, "You are not famous enough to buy this!");
      return(0x00);
    }
  }
  return(0x01);
}

function int Q58Z(obj user, obj Q4H5)
{
  if(getCompileFlag(0x02))
  {
    if(!Q4A5(user, Q4H5))
    {
      barkTo(Q4H5, user, "You are not famous enough to build this!");
      return(0x00);
    }
    if(!Q594(user, Q591(Q4H5)))
    {
      barkTo(Q4H5, user, "You already own one of those!");
      return(0x00);
    }
  }
  return(0x01);
}