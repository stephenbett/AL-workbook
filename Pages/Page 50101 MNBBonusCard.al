page 50101 "MNB Bonus Card"
{
    PageType = Document;
    SourceTable = "MNB Bonus Header";
    Caption = 'Bonus Card';

    layout
    {
        area(Content)
        {
            part(Lines; "MNB Bonus Subform")
            {
                ApplicationArea = All;
                SubPageLink = "Document No." = field("No.");
            }
            group(General)
            {
                Caption = 'General';
                field("No."; "No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies bonus number.';
                }
                field("Customer No."; "Customer No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies bonus customer number.';
                    Caption = 'Customer No';
                }
                field("Customer No"; Rec."Customer No")
                {
                    ToolTip = 'Specifies the value of the Customer No field.';
                    ApplicationArea = All;
                }
                field("Staring Date"; Rec."Staring Date")
                {
                    ToolTip = 'Specifies the value of the Starting Date field.';
                    ApplicationArea = All;
                }
                field("Starting Date"; "Staring Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies bonus starting date.';
                    Caption = 'Starting Date';
                }
                field("Ending Date"; "Ending Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies bonus ending date.';
                }
                field(Status; Status)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies bonus status.';
                }
            }
        }
    }
    actions
    {
        area(Navigation)
        {
            action(BonusEntries)
            {
                ApplicationArea = All;
                Caption = 'Bonus Entries';
                Promoted = true;
                PromotedCategory = Process;
                RunObject = page "MNB Bonus Entries";
                RunPageLink = "Bonus No." = field("No.");
                ToolTip = 'Opens bonus entries.';
            }
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
