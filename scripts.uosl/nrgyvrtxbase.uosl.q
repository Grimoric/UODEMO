// UOSL (native)
inherits spelskil;

member loc Q4E1;

function int Q4JQ(obj user, loc place)
{
  int Q5NC = 0x00;
  int damage;
  loc Q4VS = getLocation(user);
  faceHere(user, getDirectionInternal(Q4VS, place));
  list Q5FG;
  getObjectsAt(Q5FG, place);
  if(numInList(Q5FG) == 0x00)
  {
    if(!getCompileFlag(0x01))
    {
      Q5UL(user, Q4E1, 0x02, 0x00);
    }
    Q4E1 = place;
    obj Q67S = createGlobalNPCAt(0x023D, Q4E1, 0x00);
    if(Q67S != NULL())
    {
      Q5NC = 0x01;
      copyControllerInfo(Q67S, user);
      attachScript(Q67S, "vortexai");
      attachScript(Q67S, "destcrea");
      setObjVar(Q67S, "summonDifficulty", 0x0320);
      sfx(Q4E1, 0x0212, 0x00);
      callback(Q67S, 0x5A, 0x08);
      int Q4XF = doNPCHandleStates(Q67S);
    }
  }
  else
  {
    barkTo(user, user, "That location is blocked.");
  }
  Q5UQ(this);
  return(Q5NC);
}