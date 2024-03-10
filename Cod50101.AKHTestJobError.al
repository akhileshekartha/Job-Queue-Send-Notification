codeunit 50101 "AKH Test Job Error"
{
    
    trigger OnRun()
    begin 
        Error('Test Job Error');
    end;    
    
}
