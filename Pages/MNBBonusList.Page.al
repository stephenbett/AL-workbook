page 50114 "MNB Bonus List"
{
    PageType = List;
    Caption = 'Bonuses';
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "MNB Bonus Header";
    Editable = false;
    CardPageId = "MNB Bonus Card";

    layout
    {
        area(Content)
        {
            repeater(Control1)
            {
                field("No."; "No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the bonus number';
                    Caption = 'No';
                }
                field("Customer No."; "Customer No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the customer number.';
                    Caption = 'Customer No';
                }
                field("Starting Date"; "Staring Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the starting date.';
                    Caption = 'Starting Date';
                }
                field("Ending Date"; "Ending Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the ending date.';
                }
                field(Status; Status)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the bonus status.';
                }
            }
        }
    }

    actions
    {
        area(Navigation)
        {
            action(CustomerCard)
            {
                ApplicationArea = All;
                Caption = 'Customer Card';
                Image = Customer;
                Promoted = true;
                PromotedCategory = Process;
                RunObject = page "Customer Card";
                RunPageLink = "No." = field("Customer No");
                ToolTip = 'Opens customer card.';
            }
        }
    }

}


