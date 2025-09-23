pageextension 60018 "Pur & Pay Setup" extends "Purchases & Payables Setup"
{
    layout
    {
        addafter("Vendor Nos.")
        {
            field(No; Rec.No)
            {
                ApplicationArea = all;
                TableRelation = "No. Series";
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    // var
    //     myInt: Integer;
}