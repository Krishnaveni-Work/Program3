table 60002 "TC Transaction Table"
{
    DataClassification = ToBeClassified;
    Extensible = true;
    Caption = 'Terms and Conditions Transaction Table';

    fields
    {
        field(1; "Src Doc Type"; enum "Src Doc Type")
        {
            Caption = 'Source Document Type';
        }
        field(2; "Src Doc No"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Source Document No.';
        }
        field(3; "TC Code"; Integer)
        {
            DataClassification = ToBeClassified;
            TableRelation = "TC Master Table";
            Caption = 'Terms and Conditon Code';
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