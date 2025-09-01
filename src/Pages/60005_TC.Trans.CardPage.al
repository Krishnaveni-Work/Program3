page 60005 "TC Trans Card Page"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = ReportsAndAnalysis;
    SourceTable = "TC Transaction Table";
    Editable = true;
    Caption = 'Terms and Conditions Transaction Card Page';

    layout
    {
        area(Content)
        {
            group("TC Trans")
            {
                field("Src Doc Type"; Rec."Src Doc Type")
                {
                    ApplicationArea = All;
                    Caption = 'Src Doc Type';
                    ToolTip = 'Source Document Type';
                }
                field("Src Doc No"; Rec."Src Doc No")
                {
                    ApplicationArea = All;
                    Caption = 'Src Doc No.';
                    ToolTip = 'Source Document No.';
                }
                field("TC Code"; Rec."TC Code")
                {
                    ApplicationArea = All;
                    Caption = 'TC Code';
                    ToolTip = 'Terms and Condition Code';
                }
            }
        }
    }
}