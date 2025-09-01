table 60001 "TC Master Table"
{
    DataClassification = ToBeClassified;
    Extensible = true;
    Caption = 'Terms and Caption Master Table';

    fields
    {
        field(1; "TC Source Type"; Enum "TC Source Type")
        {
            DataClassification = ToBeClassified;
            Caption = 'TC Src Type';
            ToolTip = 'Terms and Condition Source Type';
        }
        field(2; "TC Code"; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'TC Code';
            ToolTip = 'Terms and Condition Code';
        }
        field(3; "TC Group Code"; Text[150])
        {
            DataClassification = ToBeClassified;
            Caption = 'TC Grp Code';
            ToolTip = 'Terms And Condition Group Code';
            TableRelation = "Terms and Conditions Groups"."TC Group Code";
            // FieldClass = FlowField;
            // CalcFormula = Lookup(
            //     "Terms and Conditions Groups"."TC Group Description"
            //     WHERE("TC Group Description" = FIELD("TC Group Code")));

            // trigger OnValidate()

            // var
            //     TCGroupRec: Record "Terms and Conditions Groups";
            // begin
            //     if TCGroupRec.Get(TCGroupRec."TC Group Code") then begin
            //         Rec."TC Group Code" := TCGroupRec."TC Group Description";
            //     end;
            // end;



        }
        field(4; "Sequence"; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Seq';
            ToolTip = 'Sequence';
        }
        field(5; "TC Description"; Text[500])
        {
            DataClassification = ToBeClassified;
            Caption = 'TC Des';
            ToolTip = 'Terms and Condition Description';
        }
        field(6; "TC Long Description"; Text[1000])
        {
            DataClassification = ToBeClassified;
            Caption = 'TC Long Des';
            ToolTip = 'Terms and Condition Long (Detailed) Description';
        }
    }

    keys
    {
        key(PK; "TC Code")
        {
            Clustered = true;
        }
    }
}