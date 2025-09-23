tableextension 60001 "Pur & Pay Setup Ext" extends "Purchases & Payables Setup"
{
    fields
    {
        field(60001; No; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'No Series Test';
        }
    }

    keys
    {
        key(PK; "No") { }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    // var
    //     myInt: Integer;
}