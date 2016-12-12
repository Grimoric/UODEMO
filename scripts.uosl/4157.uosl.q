// UOSL (native)
inherits cook;

trigger use
{
  systemMessage(user, "What should I use this on?");
  targetObj(user, this);
  return(0x01);
}

trigger targetobj
{
  if(usedon == NULL())
  {
    return(0x00);
  }
  int Q66P = getObjType(usedon);
  obj Q5BS;
  if(hasObjVar(this, "lookAtText"))
  {
    string name;
    name = getObjVar(this, "lookAtText");
    if(name == "sweet dough")
    {
      switch(Q66P)
      {
      case 0x09EC
        Q5BS = createGlobalObjectOn(this, 0x103F);
        destroyOne(this);
        return(0x00);
        break;
      case 0x103A
      case 0x0A1E
        Q5BS = createGlobalObjectOn(this, 0x103F);
        setObjVar(Q5BS, "lookAtText", "cake mix");
        destroyOne(this);
        return(0x00);
        break;
      default
        if(Q4Z2(Q66P))
        {
          removeObjVar(this, "lookAtText");
          Q4E9(user, usedon, 0x09EB);
          return(0x00);
        }
        break;
      }
    }
  }
  string Q5C2;
  switch(Q66P)
  {
  case 0x0994
  case 0x172D
    Q5C2 = "unbaked fruit pie";
    Q5BS = createGlobalObjectOn(this, 0x1042);
    setObjVar(Q5BS, "lookAtText", Q5C2);
    destroyOne(usedon);
    destroyOne(this);
    break;
  case 0x09D2
  case 0x172C
    Q5C2 = "unbaked peach cobbler";
    Q5BS = createGlobalObjectOn(this, 0x1042);
    setObjVar(Q5BS, "lookAtText", Q5C2);
    destroyOne(usedon);
    destroyOne(this);
    break;
  case 0x09D0
    Q5C2 = "unbaked apple pie";
    Q5BS = createGlobalObjectOn(this, 0x1042);
    setObjVar(Q5BS, "lookAtText", Q5C2);
    destroyOne(usedon);
    destroyOne(this);
    break;
  case 0x09C0
  case 0x09C1
    Q5BS = createGlobalObjectOn(this, 0x1083);
    destroyOne(usedon);
    destroyOne(this);
    break;
  case 0x09C9
  case 0x09D3
  case 0x09B7
  case 0x09B8
  case 0x1044
  case 0x097B
    Q5C2 = "unbaked meat pie";
    Q5BS = createGlobalObjectOn(this, 0x1042);
    setObjVar(Q5BS, "lookAtText", Q5C2);
    destroyOne(usedon);
    destroyOne(this);
    break;
  case 0x09B5
    Q5C2 = "unbaked quiche";
    Q5BS = createGlobalObjectOn(this, 0x1042);
    setObjVar(Q5BS, "lookAtText", Q5C2);
    destroyOne(usedon);
    destroyOne(this);
    break;
  case 0x09EC
    removeObjVar(this, "lookAtText");
    setObjVar(this, "lookAtText", "sweet dough");
    destroyOne(usedon);
    break;
  case 0x0C6B
  case 0x0C6C
    Q5C2 = "unbaked pumpkin pie";
    Q5BS = createGlobalObjectOn(this, 0x1042);
    setObjVar(Q5BS, "lookAtText", Q5C2);
    destroyOne(usedon);
    destroyOne(this);
    break;
  default
    break;
  }
  int Q65M = 0x103A + random(0x01, 0x02);
  Q4E9(user, usedon, Q65M);
  return(0x00);
}