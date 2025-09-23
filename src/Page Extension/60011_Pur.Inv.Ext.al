pageextension 60011 "Purchase Invoice Action Page" extends "Purchase Invoice"
{
    actions
    {
        addlast(processing)
        {
            action(Conditions)
            {
                ApplicationArea = all;
                Caption = 'Conditions';
                Image = Navigate;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                ToolTip = 'Perform Custom Sales Task';

                trigger OnAction()
                var
                    ConditionPage: Page "TC Trans List page";
                    TCTransTable: Record "TC Transaction Table";
                begin
                    TCTransTable.SetRange("Src Doc No", Rec."No.");
                    TCTransTable.SetRange("Src Doc Type", Rec."Document Type");
                    TCTransTable.SetRange("Type", TCTransTable.Type::Purchase);

                    ConditionPage.SetTableView(TCTransTable);
                    ConditionPage.RunModal();
                end;
            }

            action(ViewData)
            {
                Caption = 'View';
                ApplicationArea = All;
                Image = View;

                trigger OnAction()
                var
                    TCRec: Record "TC Transaction Table";
                begin
                    TCRec.Copy(Rec);
                    Page.Run(Page::"TC Trans Card Page", TCRec); // Opens full card to view
                end;
            }
        }
    }
}