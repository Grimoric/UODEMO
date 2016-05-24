// UOSL (enhanced)
inherits itemmanip;

forward void Q5R9();

trigger use(obj user)
{
  int Q4Q1;
  int Q4N5;
  Q4Q1 = getResource(Q4N5, this, "water", 0x03, 0x02);
  if(Q4N5 > 0x00)
  {
    string drinkType = "water";
    if(hasObjVar(this, "drinkType"))
    {
      drinkType = getObjVar(this, "drinkType");
    }
    systemMessage(user, "What do you want to use this " + drinkType + " on?");
    targetObj(user, this);
  }
  else
  {
    barkTo(this, user, "Fill from what?");
    if(hasObjVar(this, "drinkType"))
    {
      removeObjVar(this, "drinkType");
    }
    targetLoc(user, this);
  }
  return(0x00);
}

trigger targetobj(obj user, obj usedon)
{
  if(usedon == NULL())
  {
    return(0x00);
  }
  string drinkType = "water";
  if(hasObjVar(this, "drinkType"))
  {
    drinkType = getObjVar(this, "drinkType");
  }
  int Q5JW = 0x00;
  if(drinkType == "water")
  {
    Q5JW = 0x00;
  }
  if(drinkType == "milk")
  {
    Q5JW = 0x00;
  }
  if(drinkType == "ale")
  {
    Q5JW = 0x01;
  }
  if(drinkType == "wine")
  {
    Q5JW = 0x02;
  }
  if(drinkType == "cider")
  {
    Q5JW = 0x03;
  }
  if(drinkType == "liquor")
  {
    Q5JW = 0x04;
  }
  int Q62A = getObjType(this);
  int Q66P = getObjType(usedon);
  loc Q66N = getLocation(usedon);
  int Q5EL;
  list Q5NJ;
  list Q4E4;
  int Q4N9 = 0x00;
  int Q4Q1;
  int Q4N5;
  Q4Q1 = getResource(Q4N5, this, "water", 0x03, 0x02);
  if(Q4N5 > 0x00)
  {
    if(usedon == user)
    {
      returnResourcesToBank(this, 0x01, "water");
      int Q5LD = random(0x01, 0x02);
      if(Q5LD == 0x01)
      {
        sfx(Q66N, 0x30, 0x00);
      }
      if(Q5LD == 0x02)
      {
        sfx(Q66N, 0x31, 0x00);
      }
      if(Q5JW > 0x00)
      {
        if(hasObjVar(user, "drunk"))
        {
          Q4N9 = getObjVar(user, "drunk");
        }
        Q4N9 = Q4N9 + Q5JW;
        if(Q4N9 + Q5JW > 0x00)
        {
          setObjVar(user, "drunk", Q4N9);
          attachScript(user, "drunk");
        }
      }
    }
    else
    {
      int Q4N6;
      switch(Q66P)
      {
      case 0x0995:
      case 0x0996:
      case 0x0997:
      case 0x0998:
      case 0x0999:
      case 0x099A:
      case 0x09B3:
      case 0x09BF:
      case 0x09CA:
      case 0x09CB:
      case 0x0FFB:
      case 0x0FFC:
      case 0x0FFD:
      case 0x0FFE:
      case 0x0FFF:
      case 0x1000:
      case 0x1001:
      case 0x1002:
        setObjVar(usedon, "drinkType", drinkType);
        Q4DV(Q5NJ, this, usedon, "water");
        break;
      case 0x1F81:
        if(drinkType == "ale")
        {
          setType(usedon, 0x09EE);
        }
        if(drinkType == "wine")
        {
          setType(usedon, 0x1F8D);
        }
        if(drinkType == "cider")
        {
          setType(usedon, 0x1F7D);
        }
        if(drinkType == "liquor")
        {
          setType(usedon, 0x1F85);
        }
        if(drinkType == "milk")
        {
          setType(usedon, 0x1F89);
        }
        if(drinkType == "water")
        {
          setType(usedon, 0x1F91);
        }
        setObjVar(usedon, "drinkType", drinkType);
        Q4DV(Q5NJ, this, usedon, "water");
        break;
      case 0x1F82:
        if(drinkType == "ale")
        {
          setType(usedon, 0x09EE);
        }
        if(drinkType == "wine")
        {
          setType(usedon, 0x1F8E);
        }
        if(drinkType == "cider")
        {
          setType(usedon, 0x1F7E);
        }
        if(drinkType == "liquor")
        {
          setType(usedon, 0x1F86);
        }
        if(drinkType == "milk")
        {
          setType(usedon, 0x1F8A);
        }
        if(drinkType == "water")
        {
          setType(usedon, 0x1F92);
        }
        setObjVar(usedon, "drinkType", drinkType);
        Q4DV(Q5NJ, this, usedon, "water");
        break;
      case 0x1F83:
        if(drinkType == "ale")
        {
          setType(usedon, 0x09EF);
        }
        if(drinkType == "wine")
        {
          setType(usedon, 0x1F8F);
        }
        if(drinkType == "cider")
        {
          setType(usedon, 0x1F7F);
        }
        if(drinkType == "liquor")
        {
          setType(usedon, 0x1F87);
        }
        if(drinkType == "milk")
        {
          setType(usedon, 0x1F8B);
        }
        if(drinkType == "water")
        {
          setType(usedon, 0x1F93);
        }
        setObjVar(usedon, "drinkType", drinkType);
        Q4DV(Q5NJ, this, usedon, "water");
        break;
      case 0x1F84:
        if(drinkType == "ale")
        {
          setType(usedon, 0x09EF);
        }
        if(drinkType == "wine")
        {
          setType(usedon, 0x1F90);
        }
        if(drinkType == "cider")
        {
          setType(usedon, 0x1F80);
        }
        if(drinkType == "liquor")
        {
          setType(usedon, 0x1F88);
        }
        if(drinkType == "milk")
        {
          setType(usedon, 0x1F8C);
        }
        if(drinkType == "water")
        {
          setType(usedon, 0x1F94);
        }
        setObjVar(usedon, "drinkType", drinkType);
        Q4DV(Q5NJ, this, usedon, "water");
        break;
      case 0x0FF6:
        if(drinkType == "ale")
        {
          setType(usedon, 0x1F95);
        }
        if(drinkType == "cider")
        {
          setType(usedon, 0x1F97);
        }
        if(drinkType == "liquor")
        {
          setType(usedon, 0x1F99);
        }
        if(drinkType == "wine")
        {
          setType(usedon, 0x1F9B);
        }
        if(drinkType == "milk")
        {
          setType(usedon, 0x09F0);
        }
        if(drinkType == "water")
        {
          setType(usedon, 0x1F9D);
        }
        setObjVar(usedon, "drinkType", drinkType);
        Q4DV(Q5NJ, this, usedon, "water");
        break;
      case 0x0FF7:
        if(drinkType == "ale")
        {
          setType(usedon, 0x1F96);
        }
        if(drinkType == "cider")
        {
          setType(usedon, 0x1F98);
        }
        if(drinkType == "liquor")
        {
          setType(usedon, 0x1F9A);
        }
        if(drinkType == "wine")
        {
          setType(usedon, 0x1F9C);
        }
        if(drinkType == "milk")
        {
          setType(usedon, 0x09F0);
        }
        if(drinkType == "water")
        {
          setType(usedon, 0x1F9E);
        }
        setObjVar(usedon, "drinkType", drinkType);
        Q4DV(Q5NJ, this, usedon, "water");
        break;
      case 0x0FFA:
      case 0x154D:
      case 0x0E7B:
        if(drinkType == "water")
        {
          Q4DV(Q5NJ, this, usedon, "water");
        }
        else
        {
          barkTo(this, user, "Can't pour that in there.");
        }
        break;
      case 0x14E0:
      case 0x0E77:
      case 0x0E83:
        if(drinkType == "water")
        {
          getcontents(Q4E4, usedon);
          Q5EL = numInList(Q4E4);
          if(Q5EL < 0x01)
          {
            int Q684;
            if(Q66P == 0x14E0)
            {
              Q684 = 0x0FFA;
            }
            if(Q66P == 0x0E77)
            {
              Q684 = 0x154D;
            }
            if(Q66P == 0x0E83)
            {
              Q684 = 0x0E7B;
            }
            obj Q683;
            Q683 = createNoResObjectAt(Q684, Q66N);
            deleteObject(usedon);
            Q4DV(Q5NJ, this, Q683, "water");
          }
          else
          {
            barkTo(this, user, "That has something in it.");
          }
        }
        else
        {
          barkTo(this, user, "Can't pour that in there.");
        }
        break;
      case 0x103A:
      case 0x1046:
      case 0x0A1E:
        obj Q47F = getBackpack(user);
        if(drinkType == "water")
        {
          int flour;
          Q4Q1 = getResource(flour, usedon, "flour", 0x03, 0x02);
          if(flour > 0x00)
          {
            loc location = getLocation(user);
            returnResourcesToBank(this, 0x01, "water");
            returnResourcesToBank(usedon, 0x01, "flour");
            systemMessage(user, "You make some dough and put it in your backpack");
            obj Q4N3 = createNoResObjectIn(0x103D, Q47F);
            if(flour == 0x01)
            {
              if(Q66P == 0x0A1E)
              {
                setType(usedon, 0x15F8);
                detachScript(usedon, "2590");
              }
              else
              {
                deleteObject(usedon);
              }
            }
          }
          else
          {
            systemMessage(user, "No flour left.");
            if(Q66P == 0x0A1E)
            {
              setType(usedon, 0x15F8);
              detachScript(usedon, "2590");
            }
            else
            {
              deleteObject(usedon);
            }
          }
        }
        else
        {
          systemMessage(user, "Can't pour it there.");
          return(0x00);
        }
        break;
      default:
        systemMessage(user, "Can't pour it there.");
        return(0x00);
        break;
      }
      Q4Q1 = getResource(Q4N6, this, "water", 0x03, 0x02);
      if(Q4N6 == Q4N5)
      {
        systemMessage(user, "Couldn't pour it there.  It was already full.");
      }
      else
      {
        sfx(Q66N, 0x4E, 0x00);
      }
    }
    Q4Q1 = getResource(Q4N6, this, "water", 0x03, 0x02);
    if(Q4N6 < 0x01)
    {
      if(hasObjVar(this, "emptyVersion"))
      {
        removeObjVar(this, "drinkType");
        int emptyVersion = getObjVar(this, "emptyVersion");
        setType(this, emptyVersion);
      }
      else
      {
        deleteObject(this);
      }
    }
  }
  else
  {
    if(hasObjVar(this, "drinkType"))
    {
      removeObjVar(this, "drinkType");
    }
    int Q5U8;
    int dest;
    switch(Q66P)
    {
    case 0x099B:
      Q4DV(Q5NJ, usedon, this, "water");
      Q5U8 = Q5NJ[0x00];
      dest = Q5NJ[0x01];
      if(Q5U8 < 0x01)
      {
        deleteObject(usedon);
      }
      if(dest > 0x00)
      {
        setObjVar(this, "drinkType", "liquor");
      }
      break;
    case 0x099F:
      Q4DV(Q5NJ, usedon, this, "water");
      Q5U8 = Q5NJ[0x00];
      dest = Q5NJ[0x01];
      if(Q5U8 < 0x01)
      {
        deleteObject(usedon);
      }
      if(dest > 0x00)
      {
        setObjVar(this, "drinkType", "ale");
      }
      break;
    case 0x09C7:
      Q4DV(Q5NJ, usedon, this, "water");
      Q5U8 = Q5NJ[0x00];
      dest = Q5NJ[0x01];
      if(Q5U8 < 0x01)
      {
        deleteObject(usedon);
      }
      if(dest > 0x00)
      {
        setObjVar(this, "drinkType", "wine");
      }
      break;
    case 0x09C8:
      Q4DV(Q5NJ, usedon, this, "water");
      Q5U8 = Q5NJ[0x00];
      dest = Q5NJ[0x01];
      if(Q5U8 < 0x01)
      {
        deleteObject(usedon);
      }
      if(dest > 0x00)
      {
        setObjVar(this, "drinkType", "cider");
      }
      break;
    case 0x0FFA:
      Q4DV(Q5NJ, usedon, this, "water");
      Q5U8 = Q5NJ[0x00];
      dest = Q5NJ[0x01];
      if(Q5U8 < 0x01)
      {
        obj Q4NP;
        Q4NP = createNoResObjectAt(0x14E0, Q66N);
        deleteObject(usedon);
      }
      if(dest > 0x00)
      {
        setObjVar(this, "drinkType", "water");
      }
      break;
    case 0x154D:
      Q4DV(Q5NJ, usedon, this, "water");
      Q5U8 = Q5NJ[0x00];
      dest = Q5NJ[0x01];
      if(Q5U8 < 0x01)
      {
        Q5XR(usedon, 0x0E77);
      }
      if(dest > 0x00)
      {
        setObjVar(this, "drinkType", "water");
      }
      break;
    case 0x0E7B:
      Q4DV(Q5NJ, usedon, this, "water");
      Q5U8 = Q5NJ[0x00];
      dest = Q5NJ[0x01];
      if(Q5U8 < 0x01)
      {
        Q5XR(usedon, 0x0E83);
      }
      if(dest > 0x00)
      {
        setObjVar(this, "drinkType", "water");
      }
      break;
    default:
      if(getObjectFlags(usedon, 0x80))
      {
        addGlobalQuantity(this, 0x01);
        systemMessage(user, "You fill " + getName(this) + " with water.");
        setObjVar(this, "drinkType", "water");
      }
      else
      {
        return(0x00);
      }
      break;
    }
    Q5R9();
  }
  return(0x00);
}

function void Q5R9()
{
  string drinkType = "water";
  if(hasObjVar(this, "drinkType"))
  {
    drinkType = getObjVar(this, "drinkType");
  }
  int Q62A = getObjType(this);
  switch(Q62A)
  {
  case 0x0FF6:
    if(drinkType == "ale")
    {
      setType(this, 0x1F95);
    }
    if(drinkType == "cider")
    {
      setType(this, 0x1F97);
    }
    if(drinkType == "liquor")
    {
      setType(this, 0x1F99);
    }
    if(drinkType == "milk")
    {
      setType(this, 0x09F0);
    }
    if(drinkType == "wine")
    {
      setType(this, 0x1F9B);
    }
    if(drinkType == "water")
    {
      setType(this, 0x1F9D);
    }
    break;
  case 0x0FF7:
    if(drinkType == "ale")
    {
      setType(this, 0x1F96);
    }
    if(drinkType == "cider")
    {
      setType(this, 0x1F98);
    }
    if(drinkType == "liquor")
    {
      setType(this, 0x1F9A);
    }
    if(drinkType == "milk")
    {
      setType(this, 0x09F0);
    }
    if(drinkType == "wine")
    {
      setType(this, 0x1F9C);
    }
    if(drinkType == "water")
    {
      setType(this, 0x1F9E);
    }
    break;
  case 0x1F81:
    if(drinkType == "ale")
    {
      setType(this, 0x09EE);
    }
    if(drinkType == "cider")
    {
      setType(this, 0x1F7D);
    }
    if(drinkType == "liquor")
    {
      setType(this, 0x1F85);
    }
    if(drinkType == "milk")
    {
      setType(this, 0x1F89);
    }
    if(drinkType == "wine")
    {
      setType(this, 0x1F8D);
    }
    if(drinkType == "water")
    {
      setType(this, 0x1F91);
    }
    break;
  case 0x1F82:
    if(drinkType == "ale")
    {
      setType(this, 0x09EE);
    }
    if(drinkType == "cider")
    {
      setType(this, 0x1F7E);
    }
    if(drinkType == "liquor")
    {
      setType(this, 0x1F86);
    }
    if(drinkType == "milk")
    {
      setType(this, 0x1F8A);
    }
    if(drinkType == "wine")
    {
      setType(this, 0x1F8E);
    }
    if(drinkType == "water")
    {
      setType(this, 0x1F92);
    }
    break;
  case 0x1F83:
    if(drinkType == "ale")
    {
      setType(this, 0x09EF);
    }
    if(drinkType == "cider")
    {
      setType(this, 0x1F7F);
    }
    if(drinkType == "liquor")
    {
      setType(this, 0x1F87);
    }
    if(drinkType == "milk")
    {
      setType(this, 0x1F8B);
    }
    if(drinkType == "wine")
    {
      setType(this, 0x1F8F);
    }
    if(drinkType == "water")
    {
      setType(this, 0x1F93);
    }
    break;
  case 0x1F84:
    if(drinkType == "ale")
    {
      setType(this, 0x09EF);
    }
    if(drinkType == "cider")
    {
      setType(this, 0x1F80);
    }
    if(drinkType == "liquor")
    {
      setType(this, 0x1F88);
    }
    if(drinkType == "milk")
    {
      setType(this, 0x1F8C);
    }
    if(drinkType == "wine")
    {
      setType(this, 0x1F90);
    }
    if(drinkType == "water")
    {
      setType(this, 0x1F94);
    }
    break;
  }
  return;
}

trigger targetloc(obj user, loc place, int objtype)
{
  int Q5ZI = getTileAt(place);
  if(getTerrainFlags(Q5ZI, 0x80))
  {
    addGlobalQuantity(this, 0x01);
    systemMessage(user, "You fill " + getName(this) + " with water.");
    setObjVar(this, "drinkType", "water");
    Q5R9();
  }
  return(0x00);
}

trigger lookedat(obj looker)
{
  int Q4Q1;
  int Q62A = getObjType(this);
  string Q5DK;
  string name;
  string drinkType;
  switch(Q62A)
  {
  case 0x0995:
  case 0x0996:
  case 0x0997:
  case 0x0998:
  case 0x0999:
  case 0x099A:
  case 0x09B3:
  case 0x09BF:
  case 0x09CA:
  case 0x09CB:
  case 0x0FFB:
  case 0x0FFC:
  case 0x0FFD:
  case 0x0FFE:
  case 0x0FFF:
  case 0x1000:
  case 0x1001:
  case 0x1002:
    name = getName(this);
    if(hasObjVar(this, "drinkType"))
    {
      drinkType = getObjVar(this, "drinkType");
      barkTo(this, looker, name + " of " + drinkType);
    }
    else
    {
      barkTo(this, looker, name);
    }
    return(0x00);
  case 0x099B:
    Q5DK = " bottle of ";
    break;
  case 0x099F:
    Q5DK = " bottle of ";
    break;
  case 0x09C7:
    Q5DK = " bottle of ";
    break;
  case 0x09C8:
    Q5DK = " jug of ";
    break;
  default:
    name = getName(this);
    barkTo(this, looker, name);
    return(0x00);
    break;
  }
  name = getName(this);
  if(!hasObjVar(this, "drinkType"))
  {
    return(0x01);
  }
  drinkType = getObjVar(this, "drinkType");
  int Q560;
  int Q4FE;
  string Q45L;
  Q4Q1 = getResource(Q560, this, "water", 0x03, 0x00);
  Q4Q1 = getResource(Q4FE, this, "water", 0x03, 0x02);
  if((0x05 * Q4FE) / Q560 < 0x03)
  {
    Q45L = "A nearly empty";
  }
  if((0x05 * Q4FE) / Q560 == 0x03)
  {
    Q45L = "A half full";
  }
  if((0x05 * Q4FE) / Q560 > 0x03)
  {
    Q45L = "A full";
  }
  barkTo(this, looker, Q45L + Q5DK + drinkType + ".");
  return(0x00);
}