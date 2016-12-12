// UOSL (native)
inherits drink;

trigger creation
{
  int Q4Q1;
  int Q462;
  int Q62A = getObjType(this);
  switch(Q62A)
  {
  case 0x099B
    setObjVar(this, "drinkType", "liqour");
    break;
  case 0x099F
    setObjVar(this, "drinkType", "ale");
    break;
  case 0x09C7
    setObjVar(this, "drinkType", "wine");
    break;
  case 0x09C8
    setObjVar(this, "drinkType", "cider");
    break;
  case 0x09EE
    setObjVar(this, "drinkType", "ale");
    setObjVar(this, "emptyVersion", 0x1F81);
    break;
  case 0x09EF
    setObjVar(this, "drinkType", "ale");
    setObjVar(this, "emptyVersion", 0x1F83);
    break;
  case 0x09F0
    setObjVar(this, "drinkType", "milk");
    setObjVar(this, "emptyVersion", 0x0FF6);
    break;
  case 0x0FF8
    setObjVar(this, "drinkType", "water");
    setObjVar(this, "emptyVersion", 0x0FF6);
    break;
  case 0x0FF9
    setObjVar(this, "drinkType", "water");
    setObjVar(this, "emptyVersion", 0x0FF7);
    break;
  case 0x1F7D
    setObjVar(this, "drinkType", "cider");
    setObjVar(this, "emptyVersion", 0x1F81);
    break;
  case 0x1F7E
    setObjVar(this, "drinkType", "cider");
    setObjVar(this, "emptyVersion", 0x1F82);
    break;
  case 0x1F7F
    setObjVar(this, "drinkType", "cider");
    setObjVar(this, "emptyVersion", 0x1F83);
    break;
  case 0x1F80
    setObjVar(this, "drinkType", "cider");
    setObjVar(this, "emptyVersion", 0x1F84);
    break;
  case 0x1F85
    setObjVar(this, "drinkType", "liquor");
    setObjVar(this, "emptyVersion", 0x1F81);
    break;
  case 0x1F86
    setObjVar(this, "drinkType", "liquor");
    setObjVar(this, "emptyVersion", 0x1F82);
    break;
  case 0x1F87
    setObjVar(this, "drinkType", "liquor");
    setObjVar(this, "emptyVersion", 0x1F83);
    break;
  case 0x1F88
    setObjVar(this, "drinkType", "liquor");
    setObjVar(this, "emptyVersion", 0x1F84);
    break;
  case 0x1F89
    setObjVar(this, "drinkType", "milk");
    setObjVar(this, "emptyVersion", 0x1F81);
    break;
  case 0x1F8A
    setObjVar(this, "drinkType", "milk");
    setObjVar(this, "emptyVersion", 0x1F82);
    break;
  case 0x1F8B
    setObjVar(this, "drinkType", "milk");
    setObjVar(this, "emptyVersion", 0x1F83);
    break;
  case 0x1F8C
    setObjVar(this, "drinkType", "milk");
    setObjVar(this, "emptyVersion", 0x1F84);
    break;
  case 0x1F8D
    setObjVar(this, "drinkType", "wine");
    setObjVar(this, "emptyVersion", 0x1F81);
    break;
  case 0x1F8E
    setObjVar(this, "drinkType", "wine");
    setObjVar(this, "emptyVersion", 0x1F82);
    break;
  case 0x1F8F
    setObjVar(this, "drinkType", "wine");
    setObjVar(this, "emptyVersion", 0x1F83);
    break;
  case 0x1F90
    setObjVar(this, "drinkType", "wine");
    setObjVar(this, "emptyVersion", 0x1F84);
    break;
  case 0x1F91
    setObjVar(this, "drinkType", "water");
    setObjVar(this, "emptyVersion", 0x1F81);
    break;
  case 0x1F92
    setObjVar(this, "drinkType", "water");
    setObjVar(this, "emptyVersion", 0x1F82);
    break;
  case 0x1F93
    setObjVar(this, "drinkType", "water");
    setObjVar(this, "emptyVersion", 0x1F83);
    break;
  case 0x1F94
    setObjVar(this, "drinkType", "water");
    setObjVar(this, "emptyVersion", 0x1F84);
    break;
  case 0x1F95
    setObjVar(this, "drinkType", "ale");
    setObjVar(this, "emptyVersion", 0x0FF6);
    break;
  case 0x1F96
    setObjVar(this, "drinkType", "ale");
    setObjVar(this, "emptyVersion", 0x0FF7);
    break;
  case 0x1F97
    setObjVar(this, "drinkType", "cider");
    setObjVar(this, "emptyVersion", 0x0FF6);
    break;
  case 0x1F98
    setObjVar(this, "drinkType", "cider");
    setObjVar(this, "emptyVersion", 0x0FF7);
    break;
  case 0x1F99
    setObjVar(this, "drinkType", "liquor");
    setObjVar(this, "emptyVersion", 0x0FF6);
    break;
  case 0x1F9A
    setObjVar(this, "drinkType", "liquor");
    setObjVar(this, "emptyVersion", 0x0FF7);
    break;
  case 0x1F9B
    setObjVar(this, "drinkType", "wine");
    setObjVar(this, "emptyVersion", 0x0FF6);
    break;
  case 0x1F9C
    setObjVar(this, "drinkType", "wine");
    setObjVar(this, "emptyVersion", 0x0FF7);
    break;
  case 0x1F9D
    setObjVar(this, "drinkType", "water");
    setObjVar(this, "emptyVersion", 0x0FF6);
    break;
  case 0x1F9E
    setObjVar(this, "drinkType", "water");
    setObjVar(this, "emptyVersion", 0x0FF7);
    break;
  default
    setObjVar(this, "emptyVersion", Q62A);
    Q4Q1 = getResource(Q462, this, "water", 0x03, 0x02);
    returnResourcesToBank(this, Q462, "water");
    return(0x00);
    break;
  }
}