table 60000 "Terms and Conditions Groups"
{
    DataClassification = ToBeClassified;
    Extensible = true;
    Caption = 'Terms and Conditions Groups Table';
    LookupPageId = "TC Group List Page";

    fields
    {
        field(1; "TC Group Code"; Code[20])
        {

            DataClassification = ToBeClassified;
            Caption = 'Group Code';
            ToolTip = 'Terms And Condition Group Code';
            // AutoIncrement = true;
            // TableRelation = "No. Series";
        }
        field(2; "TC Group Description"; Text[50])
        {
            DataClassification = ToBeClassified;
            ToolTip = 'Terms and Conditions Group Description';
            Caption = 'Group Description';
        }
        field(3; "TC Group Sequence"; Integer)
        {
            DataClassification = ToBeClassified;
            ToolTip = 'Terms and Conditions Group Sequence';
            Caption = 'Group Sequence';
            // AutoIncrement = true;
        }
    }

    keys
    {
        key(PK; "TC Group Code") { Clustered = true; }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "TC Group Description") { }
        fieldgroup(Brick; "TC Group Code", "TC Group Description", "TC Group Sequence") { }
    }
}