pageextension 60008 "PO Action Page" extends "Purchase Order"
{
    layout
    {

    }

    actions
    {
        addlast(processing)
        {
            action("My Custom Action")
            {
                ApplicationArea = All;
                Caption = 'Custom';
                image = Worksheet;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                // RunObject = page "Purchase Order";
                // RunPageLink = "Buy-from Vendor No." = field("No.");
                // RunPageView = sorting("Buy-from Vendor No.");
                ToolTip = 'Perform Custom Task';

                trigger OnAction()
                begin
                    Message('The custom action was triggered for purchase order %1', Rec."No.");
                end;
            }
        }
    }
}