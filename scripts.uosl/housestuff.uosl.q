// UOSL (native)
inherits multistuff;

member int Q5NG;

function int Q4WW(int Q65M, int state)
{
  return(0x64 + (Q65M * 0x02) + state);
}

function int Q4X3(obj Q5AK, int state)
{
  string Q5N7;
  int myhousetype = getObjVar(Q5AK, "myhousetype");
  int Q5CT = Q4WW(myhousetype, state);
  int Q5NC = recycleMulti(Q5AK, Q5CT);
  if(Q5NC > 0x00)
  {
    setObjVar(Q5AK, "myhousestate", state);
  }
  return(Q5NC);
}

function obj Q4X5(int Q65M, loc place)
{
  Q5NG = (0x00 - 0x06);
  int Q59C = Q4WW(Q65M, 0x00);
  if(areMobilesInMultiArea(Q59C, place))
  {
    Q5NG = (0x00 - 0x09);
    return(NULL());
  }
  obj Q5AK = makeMultiInstCheck(place, Q59C, 0x08, (0x00 - 0x03), Q5NG, 0x00, 0x00, 0x00);
  if(Q5AK != NULL())
  {
    setObjVar(Q5AK, "myhousetype", Q65M);
    setObjVar(Q5AK, "myhousestate", 0x00);
    string Q5AS;
    getCurrentTimeStr(Q5AS);
    setObjVar(Q5AK, "creationtime", Q5AS);
  }
  return(Q5AK);
}

function int Q4X4(obj Q5AK, int Q5CX)
{
  int Q5AR = getObjVar(Q5AK, "myhousestate");
  if(Q5CX != Q5AR)
  {
    return(Q4X3(Q5AK, Q5CX));
  }
  return(0x00);
}

function int Q4WX(int Q65M)
{
  int Q59C = Q4WW(Q65M, 0x00);
  return(getNumInMultiType(Q59C) * 0xC8);
}

function loc Q4X1(int Q65M, loc place)
{
  loc Q63N;
  loc Q48Y;
  int Q4XN = Q4WW(Q65M, 0x00);
  if(getMultiExtents(Q4XN, Q63N, Q48Y))
  {
    setY(place, getY(place) - getY(Q48Y));
  }
  return(place);
}

function void Q4X0(obj it)
{
  setObjVar(it, "multiDelete", 0x01);
  return();
}