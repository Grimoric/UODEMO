// UOSL (enhanced)
inherits spelskil;

function void Q4KI(obj user, obj usedon)
{
  loc place = getLocation(usedon);
  int Q4HC = getX(place) + 0x01;
  int Q4HD = getY(place) + 0x01;
  setX(place, Q4HC);
  setY(place, Q4HD);
  int dummy;
  obj Q5OR = createGlobalObjectAt(0x0EF3, place);
  attachScript(Q5OR, "birdi");
  dummy = putObjContainer(Q5OR, usedon);
  obj Q5P2 = createGlobalObjectAt(0x0EF3, place);
  attachScript(Q5P2, "clumsy");
  dummy = putObjContainer(Q5P2, usedon);
  obj Q5PD = createGlobalObjectAt(0x0EF3, place);
  attachScript(Q5PD, "creatfod");
  dummy = putObjContainer(Q5PD, usedon);
  obj Q5PO = createGlobalObjectAt(0x0EF3, place);
  attachScript(Q5PO, "feblmind");
  dummy = putObjContainer(Q5PO, usedon);
  obj Q5PZ = createGlobalObjectAt(0x0EF3, place);
  attachScript(Q5PZ, "heal");
  dummy = putObjContainer(Q5PZ, usedon);
  obj Q5QA = createGlobalObjectAt(0x0EF3, place);
  attachScript(Q5QA, "magarrow");
  dummy = putObjContainer(Q5QA, usedon);
  obj Q5QG = createGlobalObjectAt(0x0EF3, place);
  attachScript(Q5QG, "nitesite");
  dummy = putObjContainer(Q5QG, usedon);
  obj Q5QH = createGlobalObjectAt(0x0EF3, place);
  attachScript(Q5QH, "weaken");
  dummy = putObjContainer(Q5QH, usedon);
  obj Q5QI = createGlobalObjectAt(0x0EF3, place);
  attachScript(Q5QI, "agility");
  dummy = putObjContainer(Q5QI, usedon);
  obj Q5OS = createGlobalObjectAt(0x0EF3, place);
  attachScript(Q5OS, "cunning");
  dummy = putObjContainer(Q5OS, usedon);
  obj Q5OT = createGlobalObjectAt(0x0EF3, place);
  attachScript(Q5OT, "cure");
  dummy = putObjContainer(Q5OT, usedon);
  obj Q5OU = createGlobalObjectAt(0x0EF3, place);
  attachScript(Q5OU, "harm");
  dummy = putObjContainer(Q5OU, usedon);
  obj Q5OV = createGlobalObjectAt(0x0EF3, place);
  attachScript(Q5OV, "magctrap");
  dummy = putObjContainer(Q5OV, usedon);
  obj Q5OW = createGlobalObjectAt(0x0EF3, place);
  attachScript(Q5OW, "mguntrap");
  dummy = putObjContainer(Q5OW, usedon);
  obj Q5OX = createGlobalObjectAt(0x0EF3, place);
  attachScript(Q5OX, "protect");
  dummy = putObjContainer(Q5OX, usedon);
  obj Q5OY = createGlobalObjectAt(0x0EF3, place);
  attachScript(Q5OY, "strength");
  dummy = putObjContainer(Q5OY, usedon);
  obj Q5OZ = createGlobalObjectAt(0x0EF3, place);
  attachScript(Q5OZ, "bless");
  dummy = putObjContainer(Q5OZ, usedon);
  obj Q5P0 = createGlobalObjectAt(0x0EF3, place);
  attachScript(Q5P0, "fireball");
  dummy = putObjContainer(Q5P0, usedon);
  obj Q5P1 = createGlobalObjectAt(0x0EF3, place);
  attachScript(Q5P1, "magclock");
  dummy = putObjContainer(Q5P1, usedon);
  obj Q5P3 = createGlobalObjectAt(0x0EF3, place);
  attachScript(Q5P3, "poison");
  dummy = putObjContainer(Q5P3, usedon);
  obj Q5P4 = createGlobalObjectAt(0x0EF3, place);
  attachScript(Q5P4, "telknsis");
  dummy = putObjContainer(Q5P4, usedon);
  obj Q5P5 = createGlobalObjectAt(0x0EF3, place);
  attachScript(Q5P5, "teleport");
  dummy = putObjContainer(Q5P5, usedon);
  obj Q5P6 = createGlobalObjectAt(0x0EF3, place);
  attachScript(Q5P6, "unlock");
  dummy = putObjContainer(Q5P6, usedon);
  obj Q5P7 = createGlobalObjectAt(0x0EF3, place);
  attachScript(Q5P7, "wallston");
  dummy = putObjContainer(Q5P7, usedon);
  obj Q5P8 = createGlobalObjectAt(0x0EF3, place);
  attachScript(Q5P8, "archcure");
  dummy = putObjContainer(Q5P8, usedon);
  obj Q5P9 = createGlobalObjectAt(0x0EF3, place);
  attachScript(Q5P9, "aprotect");
  dummy = putObjContainer(Q5P9, usedon);
  obj Q5PA = createGlobalObjectAt(0x0EF3, place);
  attachScript(Q5PA, "curse");
  dummy = putObjContainer(Q5PA, usedon);
  obj Q5PB = createGlobalObjectAt(0x0EF3, place);
  attachScript(Q5PB, "firefild");
  dummy = putObjContainer(Q5PB, usedon);
  obj Q5PC = createGlobalObjectAt(0x0EF3, place);
  attachScript(Q5PC, "grtheal");
  dummy = putObjContainer(Q5PC, usedon);
  obj Q5PE = createGlobalObjectAt(0x0EF3, place);
  attachScript(Q5PE, "lightng");
  dummy = putObjContainer(Q5PE, usedon);
  obj Q5PF = createGlobalObjectAt(0x0EF3, place);
  attachScript(Q5PF, "manadran");
  dummy = putObjContainer(Q5PF, usedon);
  obj Q5PG = createGlobalObjectAt(0x0EF3, place);
  attachScript(Q5PG, "recall");
  dummy = putObjContainer(Q5PG, usedon);
  obj Q5PH = createGlobalObjectAt(0x0EF3, place);
  attachScript(Q5PH, "bldsprts");
  dummy = putObjContainer(Q5PH, usedon);
  obj Q5PI = createGlobalObjectAt(0x0EF3, place);
  attachScript(Q5PI, "dsplfild");
  dummy = putObjContainer(Q5PI, usedon);
  obj Q5PJ = createGlobalObjectAt(0x0EF3, place);
  attachScript(Q5PJ, "incognto");
  dummy = putObjContainer(Q5PJ, usedon);
  obj Q5PK = createGlobalObjectAt(0x0EF3, place);
  attachScript(Q5PK, "magrflct");
  dummy = putObjContainer(Q5PK, usedon);
  obj Q5PL = createGlobalObjectAt(0x0EF3, place);
  attachScript(Q5PL, "mindblst");
  dummy = putObjContainer(Q5PL, usedon);
  obj Q5PM = createGlobalObjectAt(0x0EF3, place);
  attachScript(Q5PM, "paralyze");
  dummy = putObjContainer(Q5PM, usedon);
  obj Q5PN = createGlobalObjectAt(0x0EF3, place);
  attachScript(Q5PN, "posnfild");
  dummy = putObjContainer(Q5PN, usedon);
  obj Q5PP = createGlobalObjectAt(0x0EF3, place);
  attachScript(Q5PP, "summoncr");
  dummy = putObjContainer(Q5PP, usedon);
  obj Q5PQ = createGlobalObjectAt(0x0EF3, place);
  attachScript(Q5PQ, "dispel");
  dummy = putObjContainer(Q5PQ, usedon);
  obj Q5PR = createGlobalObjectAt(0x0EF3, place);
  attachScript(Q5PR, "nrgybolt");
  dummy = putObjContainer(Q5PR, usedon);
  obj Q5PS = createGlobalObjectAt(0x0EF3, place);
  attachScript(Q5PS, "exploson");
  dummy = putObjContainer(Q5PS, usedon);
  obj Q5PT = createGlobalObjectAt(0x0EF3, place);
  attachScript(Q5PT, "invis");
  dummy = putObjContainer(Q5PT, usedon);
  obj Q5PU = createGlobalObjectAt(0x0EF3, place);
  attachScript(Q5PU, "mark");
  dummy = putObjContainer(Q5PU, usedon);
  obj Q5PV = createGlobalObjectAt(0x0EF3, place);
  attachScript(Q5PV, "mascurse");
  dummy = putObjContainer(Q5PV, usedon);
  obj Q5PW = createGlobalObjectAt(0x0EF3, place);
  attachScript(Q5PW, "parafild");
  dummy = putObjContainer(Q5PW, usedon);
  obj Q5PX = createGlobalObjectAt(0x0EF3, place);
  attachScript(Q5PX, "reveal");
  dummy = putObjContainer(Q5PX, usedon);
  obj Q5PY = createGlobalObjectAt(0x0EF3, place);
  attachScript(Q5PY, "chainltg");
  dummy = putObjContainer(Q5PY, usedon);
  obj Q5Q0 = createGlobalObjectAt(0x0EF3, place);
  attachScript(Q5Q0, "nrgyfild");
  dummy = putObjContainer(Q5Q0, usedon);
  obj Q5Q1 = createGlobalObjectAt(0x0EF3, place);
  attachScript(Q5Q1, "flamstrk");
  dummy = putObjContainer(Q5Q1, usedon);
  obj Q5Q2 = createGlobalObjectAt(0x0EF3, place);
  attachScript(Q5Q2, "gatetrvl");
  dummy = putObjContainer(Q5Q2, usedon);
  obj Q5Q3 = createGlobalObjectAt(0x0EF3, place);
  attachScript(Q5Q3, "manavamp");
  dummy = putObjContainer(Q5Q3, usedon);
  obj Q5Q4 = createGlobalObjectAt(0x0EF3, place);
  attachScript(Q5Q4, "massdspl");
  dummy = putObjContainer(Q5Q4, usedon);
  obj Q5Q5 = createGlobalObjectAt(0x0EF3, place);
  attachScript(Q5Q5, "meteor");
  dummy = putObjContainer(Q5Q5, usedon);
  obj Q5Q6 = createGlobalObjectAt(0x0EF3, place);
  attachScript(Q5Q6, "polymrph");
  dummy = putObjContainer(Q5Q6, usedon);
  obj Q5Q7 = createGlobalObjectAt(0x0EF3, place);
  attachScript(Q5Q7, "earthquk");
  dummy = putObjContainer(Q5Q7, usedon);
  obj Q5Q8 = createGlobalObjectAt(0x0EF3, place);
  attachScript(Q5Q8, "nrgyvrtx");
  dummy = putObjContainer(Q5Q8, usedon);
  obj Q5Q9 = createGlobalObjectAt(0x0EF3, place);
  attachScript(Q5Q9, "resurect");
  dummy = putObjContainer(Q5Q9, usedon);
  obj Q5QB = createGlobalObjectAt(0x0EF3, place);
  attachScript(Q5QB, "sumaire");
  dummy = putObjContainer(Q5QB, usedon);
  obj Q5QC = createGlobalObjectAt(0x0EF3, place);
  attachScript(Q5QC, "sumdaem");
  dummy = putObjContainer(Q5QC, usedon);
  obj Q5QD = createGlobalObjectAt(0x0EF3, place);
  attachScript(Q5QD, "sumearth");
  dummy = putObjContainer(Q5QD, usedon);
  obj Q5QE = createGlobalObjectAt(0x0EF3, place);
  attachScript(Q5QE, "sumfire");
  dummy = putObjContainer(Q5QE, usedon);
  obj Q5QF = createGlobalObjectAt(0x0EF3, place);
  attachScript(Q5QF, "sumh2o");
  dummy = putObjContainer(Q5QF, usedon);
  return;
}

trigger use(obj user)
{
  targetObj(user, this);
  return(0x00);
}

trigger targetobj(obj user, obj usedon)
{
  Q4KI(user, usedon);
  return(0x00);
}