page 60002 "TC Master List Page"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "TC Master Table";
    Editable = true;
    Extensible = true;
    CardPageId = "TC Master Card Page";
    Caption = 'TC Masters List Page';

    layout
    {
        area(Content)
        {
            repeater("TC Master")
            {
                field("TC Source Type"; Rec."TC Source Type")
                {
                    ApplicationArea = all;
                    Caption = 'source type';
                    ToolTip = 'Terms and Condition Source Type';
                }
                field("TC Code"; Rec."TC Code")
                {
                    ApplicationArea = all;
                    Caption = 'Code';
                    ToolTip = 'Terms and Conditions Code';
                }
                field("TC Group Code"; Rec."TC Group Code")
                {
                    ApplicationArea = Suite;
                    Caption = 'Group Code';
                    ToolTip = 'Terms and Conditions Group Code';
                    TableRelation = "Terms and Conditions Groups";
                    Importance = Additional;
                    QuickEntry = false;
                }
                field(Sequence; Rec.Sequence)
                {
                    ApplicationArea = all;
                    Caption = 'Sequence';
                    ToolTip = 'Sequence';
                }
                field("TC Description"; Rec."TC Description")
                {
                    ApplicationArea = all;
                    Caption = 'Description 1';
                    ToolTip = 'Terms and Conditions Description';
                }
                field("TC Long Description"; Rec."TC Long Description")
                {
                    ApplicationArea = all;
                    Caption = 'Description 2';
                    ToolTip = 'Terms and Conditions Long (Detailed) Description';
                }
            }
        }
    }


}