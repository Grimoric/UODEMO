// UOSL (enhanced)
inherits sk_table;

trigger convofunc<"TalkerName">(obj talker, string arg)
{
  setConvoRet(getName(talker));
  return(0x00);
}

function void Q4E7(obj attacker, obj victim)
{
  attack(attacker, victim);
  return;
}