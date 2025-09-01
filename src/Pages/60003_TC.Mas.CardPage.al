page 60003 "TC Master Card Page"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "TC Master Table";
    Editable = true;
    Caption = 'Terms and Condition Master Card Page';

    layout
    {
        area(Content)
        {
            group("TC Master")
            {
                field("TC Source Type"; Rec."TC Source Type")
                {
                    ApplicationArea = all;
                    Caption = 'TC Src Type';
                    ToolTip = 'Terms and Condition Source Type';
                }
                field("TC Code"; Rec."TC Code")
                {
                    ApplicationArea = all;
                    Caption = 'TC Code';
                    ToolTip = 'Terms and Conditions Code';
                }
                field("TC Group Code"; Rec."TC Group Code")
                {
                    ApplicationArea = all;
                    TableRelation = "Terms and Conditions Groups";
                    Caption = 'TC Grp Code';
                    ToolTip = 'Terms and Conditions Group Code';
                }
                field(Sequence; Rec.Sequence)
                {
                    ApplicationArea = all;
                    Caption = 'Seq';
                    ToolTip = 'Sequence';
                }
                field("TC Description"; Rec."TC Description")
                {
                    ApplicationArea = all;
                    Caption = 'TC Desc';
                    ToolTip = 'Terms and Conditions Description';
                }
                field("TC Long Description"; Rec."TC Long Description")
                {
                    ApplicationArea = all;
                    Caption = 'TC Long Desc';
                    ToolTip = 'Terms and Conditions Long (Detailed) Description';
                }
            }
        }
    }
}