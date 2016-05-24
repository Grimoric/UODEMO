// Real-C
#include "ENGINE.hpp"

#include "globals.h"

FORWARD int Q4RK(string );
FORWARD loc Q4RH(int );
FORWARD string Q4TG(int );

TRIGGER( creation )()
{
  string Q46O;
  string Q4HR;
  loc Q61V = loc( getLocation(this) );
  loc Q64W;
  loc Q4HQ;
  int Q4NJ;
  int Q4HH;
  Q4HH = getLocalizedDesc(Q46O, Q64W, Q61V, Q61V);
  string Q5WM = Q4HH;
  Q4NJ = Q4RK(Q46O);
  if(Q4NJ == 0x029A)
  {
    return(0x00);
  }
  Q4HQ = loc( Q4RH(Q4NJ) );
  Q4HR = Q4TG(Q4NJ);
  setObjVar(this, "markLoc", Q4HQ);
  setObjVar(this, "lookAtText", "Marked item for " + Q4HR);
  return(0x00);
}

FUNCTION int Q4RK(string Q46O)
{
  list Q46P = list( "city_britain", "city_bucden", "city_jhelom", "city_magincia", "city_minoc", "city_moonglow", "city_ocllo", "city_serphold", "city_skara", "city_trinsic", "city_vesper", "city_yew" );
  string name;
  int Q53A = numInList(Q46P);
  for(int i = 0x00; i < Q53A; i ++)
  {
    name = Q46P[i];
    if(Q46O == name)
    {
      string Q5X8 = i;
      return(i);
    }
  }
  return(0x029A);
}

FUNCTION loc Q4RH(int Q4NJ)
{
  loc Q5AH = loc( 0x0615, 0x0652, 0x0A );
  switch(Q4NJ)
  {
  case 0x00:
    Q5AH = loc( 0x0615, 0x0652, 0x0A );
    break;
  case 0x01:
    Q5AH = loc( 0x0A9A, 0x0875, 0x00 );
    break;
  case 0x02:
    Q5AH = loc( 0x0586, 0x0EF7, 0x00 );
    break;
  case 0x03:
    Q5AH = loc( 0x0E9C, 0x08BB, 0x14 );
    break;
  case 0x04:
    Q5AH = loc( 0x099D, 0x01B9, 0x0F );
    break;
  case 0x05:
    Q5AH = loc( 0x116B, 0x0478, 0x00 );
    break;
  case 0x06:
    Q5AH = loc( 0x0E44, 0x09EE, 0x00 );
    break;
  case 0x07:
    Q5AH = loc( 0x0BA4, 0x0D71, 0x0F );
    break;
  case 0x08:
    Q5AH = loc( 0x027B, 0x085E, 0x00 );
    break;
  case 0x09:
    Q5AH = loc( 0x0764, 0x0B21, 0x14 );
    break;
  case 0x0A:
    Q5AH = loc( 0x0B27, 0x037C, 0x00 );
    break;
  case 0x0B:
    Q5AH = loc( 0x0232, 0x03DC, 0x00 );
    break;
  }
  return(Q5AH);
}

FUNCTION string Q4TG(int Q4NJ)
{
  string name = "Britain";
  switch(Q4NJ)
  {
  case 0x00:
    name = "Britain";
    break;
  case 0x01:
    name = "Buccaneer's Den";
    break;
  case 0x02:
    name = "Jhelom";
    break;
  case 0x03:
    name = "Magincia";
    break;
  case 0x04:
    name = "Minoc";
    break;
  case 0x05:
    name = "Moonglow";
    break;
  case 0x06:
    name = "Ocllo";
    break;
  case 0x07:
    name = "Serpent's Hold";
    break;
  case 0x08:
    name = "Skara Brae";
    break;
  case 0x09:
    name = "Trinsic";
    break;
  case 0x0A:
    name = "Vesper";
    break;
  case 0x0B:
    name = "Yew";
    break;
  }
  return(name);
}