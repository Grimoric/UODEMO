// UOSL (enhanced)
inherits spelskil;

function void Q65X()
{
  setDefaultReturn(0x01);
  Q42D(this, 0x00, 0x01);
  return;
}

trigger message<"cancelmagic">(obj sender, list args)
{
  Q65X();
  return(0x01);
}

trigger callback<0x67>()
{
  Q65X();
  return(0x01);
}