codeunit 50100 "AKH Job Queue Events"
{
    
    
     [EventSubscriber(ObjectType::Table, Database::"Job Queue Entry", 'OnBeforeTryRunJobQueueSendNotification', '', true, true)]
    local procedure JobQueueEmailNotification(JobQueueEntry: Record "Job Queue Entry")
    var
        EmailMessage: Codeunit "Email Message";
        Email: Codeunit Email;
        CompanyInfo: Record "Company Information";
        GenLedSetup: Record "General Ledger Setup";
        EmailScenario: Enum "Email Scenario";
        Recipients: Text[250];

        Subject: Text[250];
        Body: Text[1000];
        lblBody: Label 'Error occurred in job queue entry: %1 - Error Message : %2';
        lblSubject: Label '%1 Job Queue  Error %2';
    begin
        if not JobQueueEntry."AKH Notify Error by E-mail" then
            exit;
        if not GenLedSetup.Get() then
            exit;
        if not GenLedSetup."AKH Send Email Job Queue Error" then
            exit;
        GenLedSetup.TestField("AKH Notification Email Address");
        CompanyInfo.get();
        if JobQueueEntry.Status <> JobQueueEntry.Status::Error then
            exit;
        // Create a formatted error message
        Body := StrSubstNo(lblBody, JobQueueEntry.Description, JobQueueEntry."Error Message");
        
        
        Recipients := GenLedSetup."AKH Notification Email Address";
        // Email subject
        Subject := StrSubstNo( lblSubject, CompanyInfo.Name, JobQueueEntry.Description);
        EmailMessage.Create(Recipients, Subject, Body, true);  
        Email.Send(EmailMessage,EmailScenario::Default);
    end;

    
}
