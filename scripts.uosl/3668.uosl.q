// UOSL (native)
inherits itemmanip;

trigger lookedat
{
  barkTo(this, looker, "pile of boards");
  if(testSkill(looker, 0x0B))
  {
    Q4XA(looker, "wood");
  }
  return(0x00);
}