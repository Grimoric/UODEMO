// Real-C
#include "ENGINE.hpp"

#include "sk_table.h"

MEMBER obj Q60G;

TRIGGER( message , "canUseSkill" )(obj sender, list args)
{
  return(0x00);
}

TRIGGER( callback , 0x4D )()
{
  detachScript(this, "mapmaking");
  return(0x00);
}

TRIGGER( message , "useSkill" )(obj sender, list args)
{
  callback(this, 0x0A, 0x4D);
  systemMessage(this, "Select the map upon which to draw.");
  targetObj(this, this);
  return(0x00);
}

TRIGGER( targetobj )(obj user, obj usedon)
{
  if(usedon == NULL())
  {
    return(0x00);
  }
  list Q60H = list( 0x14EB, 0x14EC, 0x14ED, 0x14EE );
  int Q4QI = 0x00;
  for(int i = 0x00; i < 0x04; i ++)
  {
    int Q615 = getObjType(usedon);
    int Q60Q = Q60H[i];
    if(Q615 == Q60Q)
    {
      Q4QI = 0x01;
    }
  }
  if(!Q4QI)
  {
    barkTo(usedon, user, "This is not a map.");
    return(0x00);
  }
  if(hasObjVar(usedon, "wasHandMade"))
  {
    barkTo(usedon, user, "You cannot overwrite this carefully hand-drawn map!");
    return(0x00);
  }
  Q60G = usedon;
  list Q55C = list( 0x196F, "A map of the local environs.", 0x1970, "A map suitable for cities.", 0x1971, "A moderately sized sea chart.", 0x1972, "A map of the world." );
  selectType(user, this, 0x1A, "Attempt what scale of map?", Q55C);
  return(0x00);
}

FUNCTION void Q6A4(obj Q60G)
{
  if(hasObjVar(Q60G, "stockmap"))
  {
    removeObjVar(Q60G, "stockmap");
    if(hasObjVar(Q60G, "lookAtText"))
    {
      removeObjVar(Q60G, "lookAtText");
    }
  }
  return;
}

TRIGGER( typeselected , 0x1A )(obj user, int listindex, int objtype, int objhue)
{
  bark(Q60G, "Making the map now.");
  if(hasObjVar(Q60G, "valueless"))
  {
    removeObjVar(this, "valueless");
  }
  if(!testSkill(this, 0x0C))
  {
    Q6A4(Q60G);
    setMapProperties(Q60G, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00);
    barkTo(Q60G, this, "Thy trembling hand results in an unusable map.");
    if(random(0x00, 0x03) == 0x01)
    {
      deleteObject(Q60G);
    }
    return(0x00);
  }
  int Q4OH;
  int Q5OG;
  int skill = getSkillLevel(this, 0x0C);
  loc Q5ZU = loc( getLocation(this) );
  switch(objtype)
  {
  case 0x196F:
    Q5OG = 0x04;
    break;
  case 0x1970:
    Q5OG = 0x08;
    break;
  case 0x1971:
    Q5OG = 0x14;
    break;
  case 0x1972:
    Q5OG = 0x28;
    Q5ZU = loc( 0x0580, 0x0680, 0x00 );
    break;
  default:
    Q5OG = 0x01;
    break;
  }
  if(skill < 0x0A)
  {
    skill = 0x0A;
  }
  Q4OH = ((skill * Q5OG) / 0x02) + 0x40;
  int Q5T8 = Q4OH / 0x02;
  if(Q5OG > 0x0A)
  {
    Q5T8 = Q5T8 - (Q5T8 / 0x03);
  }
  if(Q5T8 < 0xC8)
  {
    Q5T8 = 0xC8;
  }
  if(Q5T8 > 0x0190)
  {
    Q5T8 = 0x0190;
  }
  if(Q5T8 > Q4OH)
  {
    Q4OH = Q5T8;
  }
  int Q69M = Q5T8;
  int Q69X = Q5T8;
  int Q4AV = getX(Q5ZU);
  int Q4AW = getY(Q5ZU);
  int Q69G = Q4AV - Q4OH;
  int Q69P = Q4AW - Q4OH;
  int Q69I = Q4AV + Q4OH;
  int Q69R = Q4AW + Q4OH;
  if(Q69G < 0x00)
  {
    Q69G = 0x00;
  }
  if(Q69I > 0x13FF)
  {
    Q69I = 0x144F;
  }
  if(Q69P < 0x00)
  {
    Q69P = 0x00;
  }
  if(Q69R > 0x0FFF)
  {
    Q69R = 0x0FFF;
  }
  Q6A4(Q60G);
  setMapProperties(Q60G, 0x00, Q69G, Q69P, Q69I, Q69R, Q69M, Q69X);
  setObjVar(Q60G, "wasHandMade", 0x01);
  barkTo(Q60G, this, "With great care, thou dost make a chart of the geography.");
  return(0x00);
}