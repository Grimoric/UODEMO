// UOSL (native)
inherits identify;

function void hintupdate(int Q65M, obj item)
{
  obj Q4XN = item;
  int Q5MV = 0x00;
  string Q4RC = "";
  string Q5UI = "";
  loc location;
  obj Q5IY = NULL();
  string Q5J0 = "";
  int Q45N = 0x00;
  int Q5NC;
  int val = 0x00;
  string Q5K9;
  Q5K9 = getArticle(getObjType(item));
  if(getResource(val, item, "magic", 0x03, 0x02))
  {
    Q5MV = val;
  }
  Q4RC = Q4RB(item);
  Q5UI = Q4XP(item);
  location = getLocation(item);
  Q5IY = Q4RZ(item);
  if(Q5IY != NULL())
  {
    Q5J0 = getName(Q5IY);
  }
  updateHint(Q65M, Q4XN, Q5MV, Q4RC, Q5UI, location, Q5IY, Q5J0, Q45N);
  return;
}