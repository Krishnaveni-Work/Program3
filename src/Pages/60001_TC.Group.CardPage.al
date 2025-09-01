page 60001 "TC Group Card Page"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Terms and Conditions Groups";
    Editable = true;
    Caption = 'Terms and Condition Group Card Page';

    layout
    {
        area(Content)
        {
            group("TC Group")
            {
                field("TC Group Code"; Rec."TC Group Code")
                {
                    ApplicationArea = all;
                    Caption = 'TC Group Code';
                    ToolTip = 'Terms and condition Group code';
                }
                field("TC Group Description"; Rec."TC Group Description")
                {
                    ApplicationArea = all;
                    Caption = 'TC Grp Desc';
                    ToolTip = 'Terms and Conditions Group Description';
                    MultiLine = true;
                }
                field("TC Group Sequence"; Rec."TC Group Sequence")
                {
                    ApplicationArea = all;
                    Caption = 'TC Seq';
                    ToolTip = 'Terms and Conditions Sequence';
                }
            }
        }
    }
}