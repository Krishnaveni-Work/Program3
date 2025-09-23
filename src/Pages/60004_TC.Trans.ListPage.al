page 60004 "TC Trans List page"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "TC Transaction Table";
    InsertAllowed = true;
    Editable = false;
    Extensible = true;
    CardPageId = "TC Trans Card Page";
    Caption = 'TC Transactions List Page';

    layout
    {
        area(Content)
        {
            repeater("TC Trans")
            {
                field(Type; Rec.Type)
                {
                    ApplicationArea = All;
                }
                field("Src Doc Type"; Rec."Src Doc Type")
                {
                    ApplicationArea = All;
                    Caption = 'Documrnt Type';
                    ToolTip = 'Source Document Type';
                }
                field("Src Doc No"; Rec."Src Doc No")
                {
                    ApplicationArea = All;
                    Caption = 'Document No.';
                    ToolTip = 'Source Document No.';
                }
                field("TC Code"; Rec."TC Code")
                {
                    ApplicationArea = All;
                    Caption = 'Code';
                    ToolTip = 'Terms and Condition Code';
                }
            }
        }
    }
}