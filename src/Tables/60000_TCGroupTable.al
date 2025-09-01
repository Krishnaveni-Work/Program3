table 60000 "Terms and Conditions Groups"
{
    DataClassification = ToBeClassified;
    Extensible = true;
    Caption = 'Terms and Conditions Groups Table';
    LookupPageId = "TC Group List Page";

    fields
    {
        field(1; "TC Group Code"; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'TC Grp Code';
            ToolTip = 'Terms And Condition Group Code';
        }
        field(2; "TC Group Description"; Text[50])
        {
            DataClassification = ToBeClassified;
            ToolTip = 'Terms and Conditions Group Description';
            Caption = 'TC Grp Desc';

        }
        field(3; "TC Group Sequence"; Integer)
        {
            DataClassification = ToBeClassified;
            ToolTip = 'Terms and Conditions Group Sequence';
            Caption = 'TC Grp Seq';
        }
    }

    keys
    {
        key(PK; "TC Group Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "TC Group Code", "TC Group Description", "TC Group Sequence")
        {
        }

        // fieldgroup(Brick; "TC Group Code", "TC Group Description", "TC Group Sequence")
        // {
        // }

    }

}