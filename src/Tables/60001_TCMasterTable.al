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
            Caption = 'Source Type';
            ToolTip = 'Terms and Condition Source Type';
        }
        field(2; "TC Code"; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Code';
            ToolTip = 'Terms and Condition Code';
            AutoIncrement = true;
            // TableRelation = "No. Series";
        }
        field(3; "TC Group Code"; Text[150])
        {
            DataClassification = ToBeClassified;
            Caption = 'Group Code';
            ToolTip = 'Terms And Condition Group Code';
            TableRelation = "Terms and Conditions Groups"."TC Group Code";

            trigger OnLookup()
            var
                GroupTable: Record "Terms and Conditions Groups";
                lookuppage: Page "TC Group List Page";
            begin
                if Page.RunModal(Page::"TC Group List Page", GroupTable) = Action::LookupOK then begin
                    Rec."TC Group Code" := GroupTable."TC Group Description";
                end;
            end;
        }
        field(4; "Sequence"; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Sequence';
            ToolTip = 'Sequence';
            // AutoIncrement = true;
        }
        field(5; "TC Description"; Text[500])
        {
            DataClassification = ToBeClassified;
            Caption = 'Description 1';
            ToolTip = 'Terms and Condition Description';
        }
        field(6; "TC Long Description"; Text[1000])
        {
            DataClassification = ToBeClassified;
            Caption = 'Description 2';
            ToolTip = 'Terms and Condition Long (Detailed) Description';
        }
    }

    keys
    {
        key(PK; "TC Code") { Clustered = true; }
    }
    fieldgroups
    {
        fieldgroup(DropDown; "TC Code", "TC Group Code", "TC Description") { }
        fieldgroup(Brick; "TC Code", "TC Group Code", "TC Source Type") { }
    }

    trigger OnInsert()
    var
        Master: Record "TC Master Table";
    begin
        Master.Reset();
        Master.SetCurrentKey("Sequence"); // Sorts by your number field
        if Master.FindLast() then
            "Sequence" := Master."Sequence" + 1
        else
            "Sequence" := 1;
    end;
}