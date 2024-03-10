pageextension 50100 "AKH Job Queue Entry Card" extends "Job Queue Entry Card"
{
   layout{
    addafter(Status)
    {
        field("AKH Notify Error by E-mail";Rec."AKH Notify Error by E-mail")
        {
            ApplicationArea = All;
            Caption = 'Notify Error by E-mail';
            ToolTip = 'If checked, the user will be notified by e-mail if an error occurs during the execution of the job queue entry.';
        }
    }
   } 
}
