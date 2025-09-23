page 60000 "TC Group List Page"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Terms and Conditions Groups";
    Editable = true;
    Extensible = true;
    CardPageId = "TC Group Card Page";
    Caption = 'TC Groups List Page';
    // SourceTableView = sorting("TC Group Code") order(ascending);

    layout
    {
        area(Content)
        {
            repeater("TC Group")
            {
                field("TC Group Code"; Rec."TC Group Code")
                {
                    ApplicationArea = all;
                    Caption = 'Group Code';
                    ToolTip = 'Terms and condition Group code';
                }
                field("TC Group Description"; Rec."TC Group Description")
                {
                    ApplicationArea = all;
                    Caption = 'Group Description';
                    ToolTip = 'Terms and Conditions Group Description';
                }
                field("TC Group Sequence"; Rec."TC Group Sequence")
                {
                    ApplicationArea = all;
                    Caption = 'Sequence';
                    ToolTip = 'Terms and Conditions Sequence';
                }
            }
        }
    }
}