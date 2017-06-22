/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
var f = 0;
function show(i)
{
    switch(f)
    {
     case 1:$('#stu_login').fadeOut(500);
            break;
     case 2:$('#fac_login').fadeOut(500);
            break;
     case 3:$('#adm_login').fadeOut(500);
            break;
     case 4:$('#new_user').fadeOut(500);   
    }
    switch(i)
    {
     case 1:$('#stu_login').fadeIn(1000);
            break;
     case 2:$('#fac_login').fadeIn(1000);
            break;
     case 3:$('#adm_login').fadeIn(1000);
            break;
     case 4:$('#new_user').fadeIn(1000);
    }
    f = i;
}