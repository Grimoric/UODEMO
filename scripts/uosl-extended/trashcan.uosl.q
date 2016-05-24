// UOSL (enhanced)
trigger give(obj giver, obj givenobj)
{
  deleteObject(givenobj);
  return(0x00);
}