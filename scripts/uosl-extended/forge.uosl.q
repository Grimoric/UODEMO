// UOSL (enhanced)
inherits itemmanip;

trigger callback<0x32>()
{
  int Q62A = getObjType(this);
  switch(Q62A)
  {
  case 0x197D:
  case 0x1981:
  case 0x1985:
  case 0x1989:
  case 0x198D:
  case 0x1991:
  case 0x1995:
  case 0x1999:
  case 0x199D:
  case 0x19A1:
  case 0x19A5:
  case 0x19A9:
    setType(this, Q62A - 0x03);
    break;
  }
  return(0x01);
}

trigger use(obj user)
{
  loc Q61V = getLocation(this);
  loc Q5D2 = Q61V;
  obj Q5T2;
  obj Q5T3;
  int Q5FR;
  int Q62A = getObjType(this);
  switch(Q62A)
  {
  case 0x197A:
    setType(this, 0x197D);
    Q5FR = getX(Q5D2);
    Q5FR ++;
    setX(Q5D2, Q5FR);
    Q5T2 = getFirstObjectOfType(Q5D2, 0x197E);
    setType(Q5T2, 0x1981);
    Q5FR ++;
    setX(Q5D2, Q5FR);
    Q5T3 = getFirstObjectOfType(Q5D2, 0x1982);
    setType(Q5T3, 0x1985);
    break;
  case 0x197E:
    setType(this, 0x1981);
    Q5FR = getX(Q5D2);
    Q5FR --;
    setX(Q5D2, Q5FR);
    Q5T2 = getFirstObjectOfType(Q5D2, 0x197A);
    setType(Q5T2, 0x197D);
    Q5FR = Q5FR + 0x02;
    setX(Q5D2, Q5FR);
    Q5T3 = getFirstObjectOfType(Q5D2, 0x1982);
    setType(Q5T3, 0x1985);
    break;
  case 0x1982:
    setType(this, 0x1985);
    Q5FR = getX(Q5D2);
    Q5FR --;
    setX(Q5D2, Q5FR);
    Q5T2 = getFirstObjectOfType(Q5D2, 0x197E);
    setType(Q5T2, 0x1981);
    Q5FR --;
    setX(Q5D2, Q5FR);
    Q5T3 = getFirstObjectOfType(Q5D2, 0x197A);
    setType(Q5T3, 0x197D);
    break;
  case 0x1986:
    setType(this, 0x1989);
    Q5FR = getY(Q5D2);
    Q5FR ++;
    setY(Q5D2, Q5FR);
    Q5T2 = getFirstObjectOfType(Q5D2, 0x198A);
    setType(Q5T2, 0x198D);
    Q5FR ++;
    setY(Q5D2, Q5FR);
    Q5T3 = getFirstObjectOfType(Q5D2, 0x198E);
    setType(Q5T3, 0x1991);
    break;
  case 0x198A:
    setType(this, 0x198D);
    Q5FR = getY(Q5D2);
    Q5FR --;
    setY(Q5D2, Q5FR);
    Q5T2 = getFirstObjectOfType(Q5D2, 0x1986);
    setType(Q5T2, 0x1989);
    Q5FR = Q5FR + 0x02;
    setY(Q5D2, Q5FR);
    Q5T3 = getFirstObjectOfType(Q5D2, 0x198E);
    setType(Q5T3, 0x1991);
    break;
  case 0x198E:
    setType(this, 0x1991);
    Q5FR = getY(Q5D2);
    Q5FR --;
    setY(Q5D2, Q5FR);
    Q5T2 = getFirstObjectOfType(Q5D2, 0x198A);
    setType(Q5T2, 0x198D);
    Q5FR --;
    setY(Q5D2, Q5FR);
    Q5T3 = getFirstObjectOfType(Q5D2, 0x1986);
    setType(Q5T3, 0x1989);
    break;
  case 0x1992:
    setType(this, 0x1995);
    Q5FR = getY(Q5D2);
    Q5FR --;
    setY(Q5D2, Q5FR);
    Q5T2 = getFirstObjectOfType(Q5D2, 0x1996);
    setType(Q5T2, 0x1999);
    Q5FR --;
    setY(Q5D2, Q5FR);
    Q5T3 = getFirstObjectOfType(Q5D2, 0x199A);
    setType(Q5T3, 0x199D);
    break;
  case 0x1996:
    setType(this, 0x1999);
    Q5FR = getY(Q5D2);
    Q5FR --;
    setY(Q5D2, Q5FR);
    Q5T2 = getFirstObjectOfType(Q5D2, 0x199A);
    setType(Q5T2, 0x199D);
    Q5FR = Q5FR + 0x02;
    setY(Q5D2, Q5FR);
    Q5T3 = getFirstObjectOfType(Q5D2, 0x1992);
    setType(Q5T3, 0x1995);
    break;
  case 0x199A:
    setType(this, 0x199D);
    Q5FR = getY(Q5D2);
    Q5FR ++;
    setY(Q5D2, Q5FR);
    Q5T2 = getFirstObjectOfType(Q5D2, 0x1996);
    setType(Q5T2, 0x1999);
    Q5FR ++;
    setY(Q5D2, Q5FR);
    Q5T3 = getFirstObjectOfType(Q5D2, 0x1992);
    setType(Q5T3, 0x1995);
    break;
  case 0x199E:
    setType(this, 0x19A1);
    Q5FR = getX(Q5D2);
    Q5FR --;
    setX(Q5D2, Q5FR);
    Q5T2 = getFirstObjectOfType(Q5D2, 0x19A2);
    setType(Q5T2, 0x19A5);
    Q5FR --;
    setX(Q5D2, Q5FR);
    Q5T3 = getFirstObjectOfType(Q5D2, 0x19A6);
    setType(Q5T3, 0x19A9);
    break;
  case 0x19A2:
    setType(this, 0x19A5);
    Q5FR = getX(Q5D2);
    Q5FR --;
    setX(Q5D2, Q5FR);
    Q5T2 = getFirstObjectOfType(Q5D2, 0x19A6);
    setType(Q5T2, 0x19A9);
    Q5FR = Q5FR + 0x02;
    setX(Q5D2, Q5FR);
    Q5T3 = getFirstObjectOfType(Q5D2, 0x199E);
    setType(Q5T3, 0x19A1);
    break;
  case 0x19A6:
    setType(this, 0x19A9);
    Q5FR = getX(Q5D2);
    Q5FR ++;
    setX(Q5D2, Q5FR);
    Q5T2 = getFirstObjectOfType(Q5D2, 0x19A2);
    setType(Q5T2, 0x19A5);
    Q5FR ++;
    setX(Q5D2, Q5FR);
    Q5T3 = getFirstObjectOfType(Q5D2, 0x199E);
    setType(Q5T3, 0x19A1);
    break;
  }
  sfx(Q61V, 0x2B, 0x00);
  shortCallback(this, 0x03, 0x32);
  shortCallback(Q5T2, 0x03, 0x32);
  shortCallback(Q5T3, 0x03, 0x32);
  return(0x00);
}