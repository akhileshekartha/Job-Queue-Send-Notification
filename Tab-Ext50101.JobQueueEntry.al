tableextension 50101 "AKH Job Queue Entry" extends "Job Queue Entry"
{
    fields
    {
        field(50100; "AKH Notify Error by E-mail"; Boolean)
        {
            Caption = 'Notify Error by E-mail';
            DataClassification = CustomerContent;
        }
         
    }
}
