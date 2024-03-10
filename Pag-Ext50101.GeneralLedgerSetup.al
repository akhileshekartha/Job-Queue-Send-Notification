pageextension 50101 "AKH General Ledger Setup" extends "General Ledger Setup"
{
    layout
    {
        addafter("Register Time")
        {
            field("AKH Send Email Job Queue Error"; Rec."AKH Send Email Job Queue Error")
            {
                ApplicationArea = All;
                Caption = 'Send Email Job Queue Error';
                ToolTip = 'Send Email Job Queue Error';
            }

            field("JobQuaueErrorMessage"; Rec."AKH Notification Email Address")
            {
                ApplicationArea = All;
                Caption = 'Notification Email Address';
                ToolTip = 'Notification Email Address';

            }
        }
    }

}
