state("DiluvianUltra-Win64-Shipping")
{
    byte pause: "DiluvianUltra-Win64-Shipping.exe", 0x0509A140, 0x3C0, 0x8;
    int load: "DiluvianUltra-Win64-Shipping.exe", 0x4D87258;
}

isLoading
{
    if(current.pause != 16 | current.load != 0)
    {
        return true;
    }
    {
        return false;
    }
}

split
{
    if(current.pause == 18 & old.pause == 16 | current.pause == 27 & old.pause == 16)
    {
        return true;
    }
    {
        return false;
    }
}

reset
{
    if(current.pause == 63)
    {
       return true;
    }
    {
        return false;
    }
}

start
{
    if(current.load == 0 & old.load == 21)
    {
        return true;
    }
    {
        return false;
    }
}