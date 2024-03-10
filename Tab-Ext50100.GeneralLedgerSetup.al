tableextension 50100 "AKH General Ledger Setup" extends "General Ledger Setup"
{
    fields
    {
        field(50100; "AKH Send Email Job Queue Error"; Boolean)
        {
            Caption = 'Send Email Job Queue Error';
            DataClassification = CustomerContent;
        }
        field(50101; "AKH Notification Email Address"; Text[250])
        {
            Caption = 'Notification Email Address';
            DataClassification = CustomerContent;
        }
    }
}
