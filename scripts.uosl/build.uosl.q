// UOSL (native)
inherits tilesets;

forward int Q4Z1(loc );
forward int Q50P(loc );
forward void Q4MO(loc );
forward void Q5IK(loc );
forward void Q4B4(loc );
forward void Q5IL(loc );
forward void Q4M6(loc );
forward void Q4JN(loc );
forward void Q5OH(int );
forward void Q4MP(int , loc );
forward void Q5L5(loc );
forward void Q545(loc );
forward void Q4JL(obj );
forward void Q5RB();
forward void Q5RI();
forward void Q5RG();
forward void Q5IA();
forward void Q5RR();
forward void Q479();
forward void Q5I8();
forward void Q4B5();
forward void Q5ZH();
forward void Q65Z();
forward void Q5L4();
forward void Q544();

trigger creation
{
  member obj gm;
  member int Q542;
  member int Q4W0;
  member loc Q5VR;
  member loc Q4NU;
  member list Q5ZF;
  member int Q5W4;
  member list Q5ZG;
  member list Q64K;
  member int Q4NL;
  member int Q4NK;
  member list Q65Y;
  member list Q5RF;
  member list Q5RJ;
  Q542 = 0x00 - 0x7F;
  Q4W0 = 0x7F;
  Q5VR = 0x00, 0x00, 0x00;
  Q4NU = 0x00, 0x00, 0x00;
  Q5ZF = "None";
  Q64K = "None";
  return(0x01);
}

function int Q4Z1(loc Q5H7)
{
  int Q6A0 = getZ(Q5H7);
  if(Q6A0 < Q542)
  {
    return(0x01);
  }
  if(Q6A0 > Q4W0)
  {
    return(0x01);
  }
  if(numInList(Q5ZF) < 0x02)
  {
    return(0x00);
  }
  int t = getTile(Q5H7);
  if(!isInList(Q5ZF, t))
  {
    return(0x01);
  }
  return(0x00);
}

function int Q50P(loc place)
{
  int x = getX(place);
  int y = getY(place);
  int Q6A0 = getZ(place);
  if(x < 0x00)
  {
    return(0x00);
  }
  if(x > 0x0BB8)
  {
    return(0x00);
  }
  if(y < 0x00)
  {
    return(0x00);
  }
  if(y > 0x0BB8)
  {
    return(0x00);
  }
  if(Q6A0 > 0x7F)
  {
    return(0x00);
  }
  if(Q6A0 < (0x00 - 0x7F))
  {
    return(0x00);
  }
  return(0x01);
}

function int Q502(int t)
{
  return(isInList(Q5RF, t));
}

function int Q503(int t)
{
  return(isInList(Q5RJ, t));
}

function void Q4MO(loc place)
{
  int Q66J;
  int Q66I;
  int Q66K;
  int left;
  int right;
  int Q546;
  int lower;
  int Q547;
  int Q4AU = getTile(place);
  int x = getX(place);
  int y = getY(place);
  loc Q5DL = place;
  int c = 0x00;
  int Q62L = getTile(place);
  setX(Q5DL, x - 0x01);
  left = getTile(Q5DL);
  setY(Q5DL, y - 0x01);
  Q66J = getTile(Q5DL);
  setX(Q5DL, x);
  Q66I = getTile(Q5DL);
  setX(Q5DL, x + 0x01);
  Q66K = getTile(Q5DL);
  setY(Q5DL, y);
  right = getTile(Q5DL);
  setY(Q5DL, y + 0x01);
  Q547 = getTile(Q5DL);
  setX(Q5DL, x);
  lower = getTile(Q5DL);
  setX(Q5DL, x - 0x01);
  Q546 = getTile(Q5DL);
  if(Q502(Q4AU))
  {
    return();
  }
  if((Q502(Q66J)) && (!Q502(left)) && (!Q502(Q66I)))
  {
    Q62L = 0x07;
    c = 0x01;
  }
  if((Q502(Q66K)) && (!Q502(right)) && (!Q502(Q66I)))
  {
    Q62L = 0x08;
    c = 0x01;
  }
  if((Q502(Q547)) && (!Q502(right)) && (!Q502(lower)))
  {
    Q62L = 0x09;
    c = 0x01;
  }
  if((Q502(Q546)) && (!Q502(left)) && (!Q502(lower)))
  {
    Q62L = 0x0A;
    c = 0x01;
  }
  if((Q502(left)) && (!Q502(right)))
  {
    Q62L = 0x03;
    c = 0x01;
  }
  if((Q502(right)) && (!Q502(left)))
  {
    Q62L = 0x06;
    c = 0x01;
  }
  if((Q502(Q66I)) && (!Q502(lower)))
  {
    Q62L = 0x04;
    c = 0x01;
  }
  if((Q502(lower)) && (!Q502(Q66I)))
  {
    Q62L = 0x05;
    c = 0x01;
  }
  if((Q502(left)) && (Q502(Q66I)))
  {
    Q62L = 0x0D;
    c = 0x01;
  }
  if((Q502(left)) && (Q502(lower)))
  {
    Q62L = 0x0C;
    c = 0x01;
  }
  if((Q502(right)) && (Q502(Q66I)))
  {
    Q62L = 0x0E;
    c = 0x01;
  }
  if((Q502(right)) && (Q502(lower)))
  {
    Q62L = 0x0B;
    c = 0x01;
  }
  if(c)
  {
    setTile(place, Q64K[Q62L]);
  }
  return();
}

function void Q5IK(loc place)
{
  list s;
  string e;
  string Q5H7;
  Q5H7 = "" + getX(place) + " " + getY(place) + " " + getZ(place);
  int x;
  if(random(0x00, 0x05) > 0x03)
  {
    switch(Q5W4)
    {
    case 0x00
      s = "newtree", "underbrush", "newlog", "newrock";
      e = s[random(0x00, numInList(s) - 0x01)];
      escript(gm, e, Q5H7);
      break;
    case 0x01
      if(random(0x00, 0x03))
      {
        break;
      }
      s = 0x0D25, 0x0D26, 0x0D27, 0x0D28, 0x0D2A, 0x0D2C, 0x0D2E, 0x0D25, 0x0D26, 0x0D27, 0x0D28, 0x0D2A, 0x0D2C, 0x0D2E, 0x0D25, 0x0D26, 0x0D27, 0x0D28, 0x0D2A, 0x0D2C, 0x1363, 0x1364, 0x1365, 0x1366, 0x1367, 0x1368, 0x1369, 0x136A, 0x136B, 0x136C, 0x136D, 0x0D2E, 0x0D32, 0x0D32, 0x0D32, 0x0C95, 0x0C96, 0x0D31, 0x0D30, 0x0D35, 0x0D37;
      x = s[random(0x00, numInList(s) - 0x01)];
      createStatic(place, x);
      if(random(0x00, 0x01))
      {
        if(x == 0x0D28)
        {
          createStatic(place, 0x0D29);
        }
        if(x == 0x0D2A)
        {
          createStatic(place, 0x0D2B);
        }
        if(x == 0x0D2C)
        {
          createStatic(place, 0x0D2D);
        }
        if(x == 0x0D2E)
        {
          createStatic(place, 0x0D2F);
        }
        if(x == 0x0D35)
        {
          createStatic(place, 0x0D36);
        }
      }
      break;
    case 0x02
      s = "newjtree", "newjbrush", "newjbrush", "newjbrush", "newjlog", "newrock", "newjshroom";
      e = s[random(0x00, numInList(s) - 0x01)];
      escript(gm, e, Q5H7);
      break;
    case 0x03
      if(random(0x00, 0x0A))
      {
        break;
      }
      s = 0x0CAF, 0x0CB0, 0x0CB5, 0x0CB6, 0x0C85, 0x0D29, 0x0D2B, 0x0D2D, 0x0D2F, 0x0D15, 0x0D16, 0x0D17, 0x0D18, 0x0D19, 0x0D15, 0x0D16, 0x0D17, 0x0D18, 0x0D19, 0x0D14, 0x0D13, 0x0D12, 0x1773, 0x1774, 0x177B, 0x177C, 0x1777, 0x1778, 0x1363, 0x1364, 0x1365, 0x1366, 0x1367, 0x1368, 0x1369, 0x136A, 0x136B, 0x136C, 0x136D;
      x = s[random(0x00, numInList(s) - 0x01)];
      createStatic(place, x);
      break;
    case 0x04
      escript(gm, "newtree", Q5H7);
      break;
    case 0x05
      s = 0x0D08, 0x0D06, 0x0DC2, 0x0D07, 0x0DC3, 0x0DC1, 0x0D0A, 0x0DBC, 0x0D09, 0x0DBD, 0x0D0B, 0x0DBE, 0x0D04, 0x0CB7, 0x0CB8, 0x0CB9, 0x0CBA, 0x0CBB, 0x0CBC, 0x0CBD, 0x0CB7, 0x0CB8, 0x0CB9, 0x0CBA, 0x0CBB, 0x0CBC, 0x0CBD, 0x0CB7, 0x0CB8, 0x0CB9, 0x0CBA, 0x0CBB, 0x0CBC, 0x0CBD, 0x0CC4, 0x0C94, 0x0C93, 0x0C98, 0x0C97, 0x0CA7;
      x = s[random(0x00, numInList(s) - 0x01)];
      createStatic(place, x);
      break;
    case 0x06
      s = 0x0D08, 0x0D06, 0x0DC2, 0x0D07, 0x0DC3, 0x0DC1, 0x0D0A, 0x0DBC, 0x0D09, 0x0DBD, 0x0D0B, 0x0DBE, 0x0D04, 0x0D05, 0x324E, 0x3250, 0x324D, 0x324C, 0x0CF8, 0x0CFB, 0x0CFE, 0x0D01;
      x = s[random(0x00, numInList(s) - 0x01)];
      createStatic(place, x);
      loc Q5DL;
      if(x == 0x324E)
      {
        Q5DL = place;
        setY(place, (getY(place) - 0x01));
        createStatic(place, 0x324F);
      }
      if(x == 0x3250)
      {
        Q5DL = place;
        setX(place, (getX(place) - 0x01));
        createStatic(place, 0x324F);
      }
      break;
    case 0x07
      s = 0x1B7E, 0x1B7E, 0x1B7E, 0x1B7E, 0x1B7E, 0x0CD6, 0x0CD8, 0x0CD6, 0x0CD8, 0x0CD6, 0x0CD8, 0x0CD6, 0x0CD8, 0x0CD6, 0x0CD8, 0x0CD6, 0x0CD8, 0x0CD6, 0x0CD8, 0x0CD6, 0x0CD8, 0x0CD6, 0x0CD8, 0x0CD6, 0x0CD8, 0x0CD6, 0x0CD8, 0x0CD6, 0x0CD8, 0x0CD6, 0x0CD8, 0x0CD6, 0x0CD8, 0x0CD6, 0x0CD8, 0x0CD6, 0x0CD8, 0x0CD6, 0x0CD8, 0x0CD6, 0x0CD8, 0x0CD6, 0x0CD8, 0x0CD6, 0x0CD8, 0x0CD6, 0x0CD8, 0x0CD6, 0x0CD8;
      if(random(0x00, 0x07))
      {
        x = s[random(0x00, numInList(s) - 0x01)];
        createStatic(place, x);
        if(x == 0x0CD6)
        {
          createStatic(place, 0x0CD7);
        }
        if(x == 0x0CD8)
        {
          createStatic(place, 0x0CD9);
        }
      }
      else
      {
        escript(gm, "newrock", Q5H7);
      }
      break;
    case 0x08
      escript(gm, "underbrush", Q5H7);
      break;
    case 0x09
      escript(gm, "newrock", Q5H7);
      break;
    case 0x0A
      escript(gm, "newshroom", Q5H7);
      break;
    default
      break;
    }
  }
  return();
}

function void Q4B4(loc place)
{
  setElevation(place, Q4NL + (random((0x00 - Q4NK), Q4NK)));
  return();
}

function void Q5L5(loc place)
{
  int Q5CG = getZ(place);
  Q5CG = Q5CG + Q4NL;
  setElevation(place, Q5CG);
  return();
}

function void Q545(loc place)
{
  int Q5CG = getZ(place);
  Q5CG = Q5CG - Q4NL;
  setElevation(place, Q5CG);
  return();
}

function void Q5IL(loc place)
{
  setTile(place, Q5ZG[random(0x01, numInList(Q5ZG) - 0x01)]);
  return();
}

function int Q4Z3(loc place)
{
  int Q63M;
  int Q52M;
  int Q5NS;
  int Q48W;
  Q63M = getElevation(place);
  loc Q52P = getX(place), getY(place) + 0x01, 0x00;
  Q52M = getElevation(Q52P);
  loc Q5NU = getX(place) + 0x01, getY(place), 0x00;
  Q5NS = getElevation(Q5NU);
  loc Q48X = getX(place) + 0x01, getY(place) + 0x01, 0x00;
  Q48W = getElevation(Q48X);
  if(Q63M != Q48W)
  {
    return(0x00);
  }
  if(Q63M != Q5NS)
  {
    return(0x00);
  }
  if(Q63M != Q52M)
  {
    return(0x00);
  }
  return(0x01);
}

function void Q4M6(loc place)
{
  int Q63M;
  int Q52M;
  int Q5NS;
  int Q48W;
  list t;
  t = 0x022C, 0x022D, 0x022E, 0x022F;
  Q63M = getElevation(place);
  loc Q52P = getX(place), getY(place) + 0x01, 0x00;
  Q52M = getElevation(Q52P);
  loc Q5NU = getX(place) + 0x01, getY(place), 0x00;
  Q5NS = getElevation(Q5NU);
  loc Q48X = getX(place) + 0x01, getY(place) + 0x01, 0x00;
  Q48W = getElevation(Q48X);
  if(Q4Z3(place))
  {
    t = 0x0230;
    setTile(place, t[random(0x00, numInList(t) - 0x01)]);
    return();
  }
  if((Q63M > Q52M) && (Q48W == Q52M) && (Q63M > Q5NS))
  {
    t = 0x0229;
    setTile(place, t[random(0x00, numInList(t) - 0x01)]);
    return();
  }
  if((Q52M > Q63M) && (Q52M > Q48W) && (Q5NS > Q63M) && (Q5NS > Q48W))
  {
    t = 0x0227;
    setTile(place, t[random(0x00, numInList(t) - 0x01)]);
    return();
  }
  if(Q52M > Q5NS)
  {
    t = 0x022B, 0x021F, 0x0220, 0x0221, 0x0222, 0x0223, 0x0224, 0x0225, 0x0226;
    setTile(place, t[random(0x00, numInList(t) - 0x01)]);
    return();
  }
  if(getTile(place) != 0x022B)
  {
    if(getTile(Q5NU) == 0x022B)
    {
      t = 0x0220;
      setTile(place, t[random(0x00, numInList(t) - 0x01)]);
      return();
    }
  }
  setTile(place, t[random(0x00, numInList(t) - 0x01)]);
  return();
}

function void Q4JN(loc place)
{
  int Q66J;
  int Q66I;
  int Q66K;
  int left;
  int right;
  int Q546;
  int lower;
  int Q547;
  int Q4AU = getTile(place);
  int x = getX(place);
  int y = getY(place);
  loc Q5DL = place;
  int c = 0x00;
  loc Q4FA = place;
  int Q62L = getTile(place);
  setX(Q5DL, x - 0x01);
  left = getTile(Q5DL);
  setY(Q5DL, y - 0x01);
  Q66J = getTile(Q5DL);
  setX(Q5DL, x);
  Q66I = getTile(Q5DL);
  setX(Q5DL, x + 0x01);
  Q66K = getTile(Q5DL);
  setY(Q5DL, y);
  right = getTile(Q5DL);
  setY(Q5DL, y + 0x01);
  Q547 = getTile(Q5DL);
  setX(Q5DL, x);
  lower = getTile(Q5DL);
  setX(Q5DL, x - 0x01);
  Q546 = getTile(Q5DL);
  if(Q503(Q4AU))
  {
    return();
  }
  if((Q503(Q66J)) && (!Q503(left)) && (!Q503(Q66I)))
  {
    Q62L = 0x0D;
    c = 0x01;
    Q4FA = getX(place) - 0x01, getY(place) - 0x01, getZ(place);
  }
  if((Q503(Q66K)) && (!Q503(right)) && (!Q503(Q66I)))
  {
    Q62L = 0x0E;
    c = 0x01;
    Q4FA = getX(place) - 0x01, getY(place) + 0x01, getZ(place);
  }
  if((Q503(Q547)) && (!Q503(right)) && (!Q503(lower)))
  {
    Q62L = 0x0F;
    c = 0x01;
  }
  if((Q503(Q546)) && (!Q503(left)) && (!Q503(lower)))
  {
    Q62L = 0x10;
    c = 0x01;
  }
  if((Q503(left)) && (!Q503(right)))
  {
    Q62L = random(0x01, 0x03);
    c = 0x01;
    Q4FA = getX(place) - 0x01, getY(place), getZ(place);
  }
  if((Q503(right)) && (!Q503(left)))
  {
    Q62L = random(0x07, 0x09);
    c = 0x01;
  }
  if((Q503(Q66I)) && (!Q503(lower)))
  {
    Q62L = random(0x04, 0x06);
    c = 0x01;
    Q4FA = getX(place), getY(place) - 0x01, getZ(place);
  }
  if((Q503(lower)) && (!Q503(Q66I)))
  {
    Q62L = random(0x0A, 0x0C);
    c = 0x01;
  }
  if((Q503(left)) && (Q503(Q66I)))
  {
    Q62L = 0x0D + 0x06;
    c = 0x01;
  }
  if((Q503(left)) && (Q503(lower)))
  {
    Q62L = 0x0C + 0x06;
    c = 0x01;
    Q4FA = getX(place) - 0x01, getY(place) + 0x01, getZ(place);
  }
  if((Q503(right)) && (Q503(Q66I)))
  {
    Q62L = 0x0E + 0x06;
    c = 0x01;
    Q4FA = getX(place) - 0x01, getY(place) - 0x01, getZ(place);
  }
  if((Q503(right)) && (Q503(lower)))
  {
    Q62L = 0x0B + 0x06;
    c = 0x01;
  }
  if(c)
  {
    setTile(place, Q64K[Q62L]);
  }
  setElevation(place, getElevation(Q4FA));
  return();
}

function void Q4MP(int c, loc place)
{
  return();
  int Q6A0 = Q65Y[c];
  int t = Q65Y[c + 0x01];
  setElevation(place, Q6A0);
  setTile(place, t);
  return();
}

function void Q5OH(int Q65M)
{
  int Q5VV = getX(Q5VR);
  int Q5VW = getY(Q5VR);
  int Q4NW = getX(Q4NU);
  int Q4NX = getY(Q4NU);
  loc place;
  int y;
  int x;
  int Q6A0;
  int c = 0x00;
  systemMessage(gm, "Starting terrain scan from " + Q5VR + " to " + Q4NU + ".");
  updatesOff();
  for(y = Q5VW; y < (Q4NX + 0x01); y ++)
  {
    for(x = Q5VV; x < (Q4NW + 0x01); x ++)
    {
      place = x, y, 0x00;
      Q6A0 = getElevation(place);
      place = x, y, Q6A0;
      if(!Q4Z1(place))
      {
        switch(Q65M)
        {
        case 0x01
          Q5IL(place);
          break;
        case 0x02
          Q4B4(place);
          break;
        case 0x03
          Q4MO(place);
          break;
        case 0x04
          Q5IK(place);
          break;
        case 0x05
          Q4M6(place);
          break;
        case 0x06
          Q4JN(place);
          break;
        case 0x07
          break;
        case 0x08
          Q5L5(place);
          break;
        case 0x09
          Q545(place);
          break;
        default
          break;
        }
      }
    }
  }
  if(Q65M == 0x06)
  {
    copyList(Q5ZF, Q5RJ);
  }
  systemMessage(gm, "Terrain scan complete.");
  updatesOn();
  return();
}

trigger use
{
  if(!isEditing(user))
  {
    return(0x01);
  }
  Q4JL(user);
  return(0x00);
}

function void Q4JL(obj user)
{
  list Q56N;
  gm = user;
  string x = Q5ZF[0x00];
  appendToList(Q56N, 0x00);
  appendToList(Q56N, "Set the elevation filter. Terrain scans currently affect only elevations between " + Q542 + " and " + Q4W0 + ".");
  appendToList(Q56N, 0x01);
  appendToList(Q56N, "Set the terrain tile filter. Currently set to " + x + ".");
  appendToList(Q56N, 0x02);
  appendToList(Q56N, "Change area of operation. Currently set to " + Q5VR + " to " + Q4NU + ".");
  appendToList(Q56N, 0x03);
  appendToList(Q56N, "Transition terrain.");
  appendToList(Q56N, 0x04);
  appendToList(Q56N, "Shade mountains (Defaults to mountain tiles unless overridden by the terrain tile filter).");
  appendToList(Q56N, 0x05);
  appendToList(Q56N, "Auto-embankments.");
  appendToList(Q56N, 0x06);
  appendToList(Q56N, "Place static items.");
  appendToList(Q56N, 0x07);
  appendToList(Q56N, "Change elevations.");
  appendToList(Q56N, 0x08);
  appendToList(Q56N, "Terrain fill.");
  appendToList(Q56N, 0x09);
  appendToList(Q56N, "Raise terrain.");
  appendToList(Q56N, 0x0A);
  appendToList(Q56N, "Lower terrain.");
  if(numInList(Q65Y) > 0x00)
  {
    appendToList(Q56N, 0x0B);
    appendToList(Q56N, "Undo last operation.");
  }
  selectType(gm, this, 0x00, "Building tools menu.", Q56N);
  return();
}

trigger typeselected(0x00)
{
  if(listindex == 0x00)
  {
    return(0x00);
  }
  switch(objtype)
  {
  case 0x00
    Q5RB();
    break;
  case 0x01
    Q5RI();
    break;
  case 0x02
    Q5RG();
    break;
  case 0x03
    Q5IA();
    break;
  case 0x04
    Q5RR();
    break;
  case 0x05
    Q479();
    break;
  case 0x06
    Q5I8();
    break;
  case 0x07
    Q4B5();
    break;
  case 0x08
    Q5ZH();
    break;
  case 0x09
    Q5L4();
    break;
  case 0x0A
    Q544();
    break;
  case 0x0B
    Q65Z();
    break;
  default
    break;
  }
  return(0x00);
}

function void Q5L4()
{
  systemMessage(gm, "Enter the amount by which to move terrain up.");
  textEntry(this, gm, 0x04, 0x00, "");
  return();
}

trigger textentry(0x04)
{
  if(button == 0x00)
  {
    Q4JL(gm);
    return(0x00);
  }
  Q4NL = text;
  Q5OH(0x08);
  return(0x01);
}

function void Q544()
{
  systemMessage(gm, "Enter the amount by which to move terrain lower.");
  textEntry(this, gm, 0x05, 0x00, "");
  return();
}

trigger textentry(0x05)
{
  if(button == 0x00)
  {
    Q4JL(gm);
    return(0x00);
  }
  Q4NL = text;
  Q5OH(0x09);
  return(0x01);
}

function void Q5RB()
{
  systemMessage(gm, "Enter the low end of the elevation filter:");
  textEntry(this, gm, 0x00, 0x00, "");
  return();
}

trigger textentry(0x00)
{
  if(button == 0x00)
  {
    Q4JL(gm);
    return(0x00);
  }
  Q542 = text;
  systemMessage(gm, "Enter the high end of the elevation filter:");
  textEntry(this, gm, 0x01, 0x00, "");
  return(0x00);
}

trigger textentry(0x01)
{
  if(button == 0x00)
  {
    Q4JL(gm);
    return(0x00);
  }
  Q4W0 = text;
  Q4JL(gm);
  return(0x00);
}

function void Q5RI()
{
  list Q56N;
  string n;
  for(int i = 0x00; i < numInList(Q45U); i ++)
  {
    appendToList(Q56N, i);
    n = oprlist(Q45U[i], 0x00);
    appendToList(Q56N, n);
  }
  appendToList(Q56N, numInList(Q56N));
  appendToList(Q56N, "None.");
  selectType(gm, this, 0x01, "Terrain types.", Q56N);
  return();
}

trigger typeselected(0x01)
{
  if(listindex == 0x00)
  {
    systemMessage(gm, "Setting of terrain type cancelled.");
    Q4JL(gm);
    return(0x00);
  }
  if(objtype > (numInList(Q45U) - 0x01))
  {
    Q5ZF = "None";
  }
  else
  {
    copyList(Q5ZF, Q45U[objtype]);
  }
  Q4JL(gm);
  return(0x00);
}

function void Q5RG()
{
  systemMessage(gm, "Enter the area of operation for the terrain scan, in (x, y) (x, y) format:");
  textEntry(this, gm, 0x02, 0x00, "");
  return();
}

trigger textentry(0x02)
{
  if(button == 0x00)
  {
    systemMessage(gm, "Setting of operations area cancelled.");
    Q4JL(gm);
    return(0x00);
  }
  list t;
  split(t, text);
  if(numInList(t) != 0x04)
  {
    systemMessage(gm, "Format for operations area incorrect.");
    Q5RG();
    return(0x00);
  }
  string Q69G = t[0x00];
  string Q69P = t[0x01];
  string Q69I = t[0x02];
  string Q69R = t[0x03];
  int Q69N;
  int Q69O;
  int Q69Y;
  int Q69Z;
  Q69N = Q69G;
  Q69O = Q69I;
  Q69Y = Q69P;
  Q69Z = Q69R;
  Q5VR = Q69N, Q69Y, 0x00;
  Q4NU = Q69O, Q69Z, 0x00;
  Q4JL(gm);
  return(0x00);
}

function void Q5IA()
{
  list Q56N;
  string n;
  for(int i = 0x00; i < numInList(Q647); i ++)
  {
    appendToList(Q56N, i);
    n = oprlist(Q647[i], 0x00);
    appendToList(Q56N, n);
  }
  appendToList(Q56N, numInList(Q56N));
  appendToList(Q56N, "None.");
  selectType(gm, this, 0x02, "Transition types.", Q56N);
  return();
}

trigger typeselected(0x02)
{
  if(listindex == 0x00)
  {
    systemMessage(gm, "Setting of transition type cancelled.");
    Q4JL(gm);
    return(0x00);
  }
  if(objtype > (numInList(Q647) - 0x01))
  {
    Q64K = "None";
  }
  else
  {
    copyList(Q64K, Q647[objtype]);
    copyList(Q5RF, Q64K[0x01]);
    copyList(Q5RJ, Q64K[0x02]);
  }
  Q5OH(0x03);
  return(0x00);
}

function void Q5RR()
{
  Q5OH(0x05);
  return();
}

function void Q479()
{
  list Q56N;
  string n;
  for(int i = 0x00; i < numInList(Q4NM); i ++)
  {
    appendToList(Q56N, i);
    n = oprlist(Q4NM[i], 0x00);
    appendToList(Q56N, n);
  }
  appendToList(Q56N, numInList(Q56N));
  appendToList(Q56N, "None.");
  selectType(gm, this, 0x05, "Embankment types.", Q56N);
  return();
}

trigger typeselected(0x05)
{
  if(listindex == 0x00)
  {
    systemMessage(gm, "Setting of embankment type cancelled.");
    Q4JL(gm);
    return(0x00);
  }
  if(objtype > (numInList(Q4NM) - 0x01))
  {
    Q64K = "None";
  }
  else
  {
    copyList(Q64K, Q4NM[objtype]);
    copyList(Q5RJ, Q5ZF);
    Q5ZF = "None";
  }
  Q5OH(0x06);
  return(0x00);
}

function void Q5I8()
{
  list Q56N;
  appendToList(Q56N, 0x00);
  appendToList(Q56N, "Full forest");
  appendToList(Q56N, 0x01);
  appendToList(Q56N, "Desert flora and rocks");
  appendToList(Q56N, 0x02);
  appendToList(Q56N, "Jungle");
  appendToList(Q56N, 0x03);
  appendToList(Q56N, "Grassland flora");
  appendToList(Q56N, 0x04);
  appendToList(Q56N, "Trees only");
  appendToList(Q56N, 0x05);
  appendToList(Q56N, "Swamp flora (run on muck only)");
  appendToList(Q56N, 0x06);
  appendToList(Q56N, "Swamp trees (run on swamp water only)");
  appendToList(Q56N, 0x07);
  appendToList(Q56N, "Arctic forest");
  appendToList(Q56N, 0x08);
  appendToList(Q56N, "Underbrush");
  appendToList(Q56N, 0x09);
  appendToList(Q56N, "Rocks");
  appendToList(Q56N, 0x0A);
  appendToList(Q56N, "Mushrooms");
  selectType(gm, this, 0x04, "Terrain types.", Q56N);
  return();
}

trigger typeselected(0x04)
{
  if(listindex == 0x00)
  {
    systemMessage(gm, "Terrain fill cancelled.");
    Q4JL(gm);
    return(0x00);
  }
  Q5W4 = objtype;
  Q5OH(0x04);
  return(0x00);
}

function void Q65Z()
{
  Q5OH(0x07);
  return();
}

function void Q4B5()
{
  systemMessage(gm, "Enter the target elevation, then a +/- fudge factor for randomization, in the format (a, b):");
  textEntry(this, gm, 0x03, 0x00, "");
  return();
}

trigger textentry(0x03)
{
  if(button == 0x00)
  {
    systemMessage(gm, "Elevation changes cancelled.");
    Q4JL(gm);
    return(0x00);
  }
  list t;
  split(t, text);
  if(numInList(t) != 0x02)
  {
    systemMessage(gm, "Format for elevations change incorrect.");
    Q4B5();
    return(0x00);
  }
  string Q69G = t[0x00];
  string Q69P = t[0x01];
  Q4NL = Q69G;
  Q4NK = Q69P;
  Q5OH(0x02);
  Q4JL(gm);
  return(0x00);
}

function void Q5ZH()
{
  list Q56N;
  string n;
  for(int i = 0x00; i < numInList(Q45U); i ++)
  {
    appendToList(Q56N, i);
    n = oprlist(Q45U[i], 0x00);
    appendToList(Q56N, n);
  }
  appendToList(Q56N, numInList(Q56N));
  appendToList(Q56N, "None.");
  selectType(gm, this, 0x03, "Terrain types.", Q56N);
  return();
}

trigger typeselected(0x03)
{
  if(listindex == 0x00)
  {
    systemMessage(gm, "Terrain fill cancelled.");
    Q4JL(gm);
    return(0x00);
  }
  if(objtype > (numInList(Q45U) - 0x01))
  {
    systemMessage(gm, "Terrain fill cancelled.");
    Q4JL(gm);
    return(0x00);
  }
  else
  {
    copyList(Q5ZG, Q45U[objtype]);
    Q5OH(0x01);
  }
  Q4JL(gm);
  return(0x00);
}