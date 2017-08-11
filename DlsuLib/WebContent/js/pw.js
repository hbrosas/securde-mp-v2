function init()
{
    strPassword= $("#inputPassword").val();
    charPassword = strPassword.split("");
         
    num.Excess = 0;
    num.Upper = 0;
    num.Numbers = 0;
    num.Symbols = 0;
    bonus.Combo = 0; 
    bonus.FlatLower = 0;
    bonus.FlatNumber = 0;
    baseScore = 0;
    score =0;
}

function checkVal()
{
    init();
     
    // Other code
}

function outputResult()
{
    if ($("#inputPassword").val()== "")
    { complexity.html("Enter a random value").removeClass("weak strong stronger strongest").addClass("default");}
    else if (charPassword.length < minPasswordLength)
    {complexity.html("At least " + minPasswordLength+ " characters please!").removeClass("strong stronger strongest").addClass("weak");}
    else if (score<50)
    {complexity.html("Weak!").removeClass("strong stronger strongest").addClass("weak");}
    else if (score>=50 && score<75)
    {complexity.html("Average!").removeClass("stronger strongest").addClass("strong");}
    else if (score>=75 && score<100)
    {complexity.html("Strong!").removeClass("strongest").addClass("stronger");}
    else if (score>=100)
    {complexity.html("Secure!").addClass("strongest");}
 
    // Details updating code
}