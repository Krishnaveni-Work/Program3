page 60000 "TC Group List Page"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Terms and Conditions Groups";
    Editable = true;
    Extensible = true;
    CardPageId = "TC Group Card Page";
    Caption = 'Terms and Condition Group List Page';

    layout
    {
        area(Content)
        {
            repeater("TC Group")
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
                    Caption = 'TC Group Desc';
                    ToolTip = 'Terms and Conditions Group Description';
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