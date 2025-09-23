page 60001 "TC Group Card Page"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Terms and Conditions Groups";
    Editable = true;
    Caption = 'Terms and Condition Group Card Page';

    layout
    {
        area(Content)
        {
            group("TC Group")
            {
                field("TC Group Code"; Rec."TC Group Code")
                {
                    ApplicationArea = all;
                    Caption = 'Group Code';
                    ToolTip = 'Terms and condition Group code';

                    trigger OnAssistEdit()
                    var
                        NoSeries: Codeunit "No. Series";
                        PurSetup: Record "Purchases & Payables Setup";
                    begin
                        if Rec."TC Group Code" = '' then begin
                            PurSetup.Get();
                            PurSetup.TestField(No);
                            Rec."TC Group Code" := NoSeries.GetNextNo(PurSetup.No, Today, true);
                            CurrPage.Update();
                        end;
                    end;

                }
                field("TC Group Description"; Rec."TC Group Description")
                {
                    ApplicationArea = all;
                    Caption = 'Group Description';
                    ToolTip = 'Terms and Conditions Group Description';
                    MultiLine = true;
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