page 50118 "Bonus Statistic"
{
    Caption = 'Bonus Statistic';
    PageType = CardPart;
    SourceTable = "MNB Bonus Header";

    layout
    {
        area(content)
        {
            group(General)
            {
                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the bonus number';
                    ApplicationArea = All;
                }
                field("Bonus Amount"; Rec."Bonus Amount")
                {
                    ToolTip = 'Specifies the value of the Bonus Amount field.';
                    ApplicationArea = All;
                }
            }
        }
    }
}
