page 60003 "TC Master Card Page"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "TC Master Table";
    // InsertAllowed = true;
    // Editable = false;
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
                    Caption = 'Source Type';
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
                    ApplicationArea = all;
                    TableRelation = "Terms and Conditions Groups";
                    Importance = Additional;
                    QuickEntry = false;
                    Caption = 'Group Code';
                    ToolTip = 'Terms and Conditions Group Code';
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
                    MultiLine = true;
                }
            }
        }
    }
}