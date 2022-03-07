state("BlackOps")
{
    byte Paused : 0x2BF7988;
    int game_paused : 0x8902B4;
    byte resettime : 0x021FA4CB;
    byte round : 0x16569B6;
    byte roundchange : 0x165695D;
    byte dead : 0x25A66F4;
}

state("BGamerT5")
{
    byte Paused : 0x2BF7988;
    int game_paused : 0x8902B4;
    byte resettime : 0x021FA4CB;
    byte round : 0x16569B6;
    byte roundchange : 0x165695D;
    byte dead : 0x25A66F4;
}

startup
{
    settings.Add("2", false);
    settings.Add("30", true);
    settings.Add("50", true);
    settings.Add("70", true);
    settings.Add("100", true);
    settings.Add("110", true);
    settings.Add("120", true);
    settings.Add("130", true);
    settings.Add("140", true);
    settings.Add("150", true);
    settings.Add("160", true);
    settings.Add("170", true);
    settings.Add("180", true);
    settings.Add("190", true);
    settings.Add("200", true);
    settings.Add("210", true);
    settings.Add("220", true);
    settings.Add("230", true);
    settings.Add("240", true);
    settings.Add("250", true);
    settings.Add("260", true);
}

init
{
    vars.split = 0;
    vars.round = 0;
    vars.loop = 0;    
}

update
{  
    if (current.round != 0 || vars.round > 1)
    {
        if (current.roundchange == 0 && current.roundchange != old.roundchange)
        {
            if (vars.loop == 0)
            {
                vars.round += 1;
                vars.loop = 1;
            }
            else if (vars.loop == 1)
            {
                vars.loop = 0;
            }
        }
    }
}

isLoading
{
    if (current.Paused == 04)
    {
        return true;
    }
    else
    {
        return false;
    }
}

start
{
    if (current.Paused == 00)
    {
        return true;
    }
}

reset
{
    if (current.resettime == 105 || current.dead == 0)
    {   
        vars.loop = 0;
        vars.round = 0;
        vars.split = 0;
        return true;
    }
}

split
{
   if (vars.round == 2 && settings["2"] == true && vars.split < 1)
    {
        vars.split = 1;
        return true;
    }
    if (vars.round == 30 && settings["30"] == true && vars.split < 2)
    {
        vars.split = 2;
        return true;
    }
    if (vars.round == 50 && settings["50"] == true && vars.split < 3)
    {
        vars.split = 3;
        return true;
    }
    if (vars.round == 70 && settings["70"] == true && vars.split < 4)
    {
        vars.split = 4;
        return true;
    }
    if (vars.round == 100 && settings["100"] == true && vars.split < 5)
    {
        vars.split = 5;
        return true;
    }
    if (vars.round == 110 && settings["110"] == true && vars.split < 6)
    {
        vars.split = 6;
        return true;
    }
    if (vars.round == 120 && settings["120"] == true && vars.split < 7)
    {
        vars.split = 7;
        return true;
    }
    if (vars.round == 130 && settings["130"] == true && vars.split < 8)
    {
        vars.split = 8;
        return true;
    }
    if (vars.round == 140 && settings["140"] == true && vars.split < 9)
    {
        vars.split = 9;
        return true;
    }
    if (vars.round == 150 && settings["150"] == true && vars.split < 10)
    {
        vars.split = 10;
        return true;
    }
    if (vars.round == 160 && settings["160"] == true && vars.split < 11)
    {
        vars.split = 11;
        return true;
    }
    if (vars.round == 170 && settings["170"] == true && vars.split < 12)
    {
        vars.split = 12;
        return true;
    }
    if (vars.round == 180 && settings["180"] == true && vars.split < 13)
    {
        vars.split = 13;
        return true;
    }
    if (vars.round == 190 && settings["190"] == true && vars.split < 14)
    {
        vars.split = 14;
        return true;
    }
    if (vars.round == 200 && settings["200"] == true && vars.split < 15)
    {
        vars.split = 15;
        return true;
    }
    if (vars.round == 210 && settings["210"] == true && vars.split < 16)
    {
        vars.split = 16;
        return true;
    }
    if (vars.round == 220 && settings["220"] == true && vars.split < 17)
    {
        vars.split = 17;
        return true;
    }
    if (vars.round == 230 && settings["230"] == true && vars.split < 18)
    {
        vars.split = 18;
        return true;
    }
    if (vars.round == 240 && settings["240"] == true && vars.split < 19)
    {
        vars.split = 19;
        return true;
    }
}