page 60002 "TC Master List Page"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "TC Master Table";
    Editable = true;
    Extensible = true;
    CardPageId = "TC Master Card Page";
    Caption = 'Terms and Condition Master List Page';

    layout
    {
        area(Content)
        {
            repeater("TC Master")
            {
                field("TC Source Type"; Rec."TC Source Type")
                {
                    ApplicationArea = all;
                    Caption = 'TC src type';
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
                    Caption = 'TC Grp Code';
                    ToolTip = 'Terms and Conditions Group Code';
                    TableRelation = "Terms and Conditions Groups";

                    // trigger OnValidate()
                    // begin
                    //     Rec."TC Group Code"(Rec, xRec);
                    //     CurrPage.Update();
                    // end;

                    // trigger OnLookup(var Text: Text): Boolean
                    // begin
                    //     exit(Rec.lookupTCGroupCode(Text));
                    // end;


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
                    Caption = 'Long Desc';
                    ToolTip = 'Terms and Conditions Long (Detailed) Description';
                }
            }
        }
    }


}