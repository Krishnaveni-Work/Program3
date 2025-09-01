page 60004 "TC Trans List page"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "TC Transaction Table";
    Editable = true;
    Extensible = true;
    CardPageId = "TC Trans Card Page";
    Caption = 'Terms and Conditions Transaction List Page';

    layout
    {
        area(Content)
        {
            repeater("TC Trans")
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