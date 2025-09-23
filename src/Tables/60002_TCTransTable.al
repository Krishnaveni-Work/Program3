table 60002 "TC Transaction Table"
{
    DataClassification = ToBeClassified;
    Extensible = true;
    Caption = 'Terms and Conditions Transaction Table';
    LookupPageId = "TC Trans List page";

    fields
    {
        field(1; "Src Doc Type"; enum "Purchase Document Type")
        {
            Caption = 'Document Type';
            ToolTip = 'Source Document Type';
        }
        field(2; "Src Doc No"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Document No.';
            ToolTip = 'Source Document Number';
        }
        field(3; "TC Code"; Integer)
        {
            DataClassification = ToBeClassified;
            TableRelation = "TC Master Table";
            Caption = 'Code';
            ToolTip = 'Terms and Conditions Code';
        }
        field(4; "Type"; Enum "TC Source Type")
        {
            DataClassification = ToBeClassified;
            Caption = 'Entry Type';
            ToolTip = 'Source type (Sales / Purchase)';
        }
    }

    keys
    {
        key(PK; "Src Doc No", "Src Doc Type", "TC Code", "Type") { Clustered = true; }
        key(Seq; "Type", "Src Doc No", "Src Doc Type", "TC Code") { }
    }
}