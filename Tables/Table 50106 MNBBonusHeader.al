table 50106 "MNB Bonus Header"
{
    Caption = 'Bonus';
    DataClassification = CustomerContent;
    DrillDownPageId = "MNB Bonus List";
    LookupPageId = "MNB Bonus List";

    fields
    {
        field(1; "No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'No.';
            trigger OnValidate()
            var
                MNBBonusSetup: Record "MNB Bonus Setup";
                NoSeriesManagement: Codeunit NoSeriesManagement;
            begin
                TestStatusOpen();
                if "No." <> xRec."No." then begin
                    MNBBonusSetup.Get();
                    MNBBonusSetup.TestField("Bonus Nos");
                    NoSeriesManagement.TestManual(MNBBonusSetup."Bonus Nos");
                end;
            end;

        }
        field(2; "Customer No"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Customer No';
            TableRelation = "Customer";


        }
        field(3; "Staring Date"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Starting Date';
        }

        field(4; "Ending Date"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Ending Date';
        }
        field(5; Status; Enum "Approval Status")
        {
            DataClassification = CustomerContent;
            Caption = 'Status';
        }
        field(6; "Customer Name"; Text[100])
        {
            // DataClassification = CustomerContent;
            Caption = 'Customer Name';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = lookup(Customer.Name where("No." = field("Customer No")));

            trigger OnValidate()
            begin
                TestStatusOpen();
                CalcFields("Customer Name");
            end;

        }
        field(7; "Bonus Amount"; Decimal)
        {
            Caption = 'Bonus Amount';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = sum("MNB Bonus Entry"."Bonus Amount" where("Bonus No." = field("No.")));
        }

    }
    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }
    trigger OnInsert()
    var
        MNBBonusSetup: Record "MNB Bonus Setup";
        NoSeriesManagement: Codeunit NoSeriesManagement;
    begin
        if "No." = '' then begin
            MNBBonusSetup.Get();
            MNBBonusSetup.TestField("Bonus Nos");
            NoSeriesManagement.InitSeries(MNBBonusSetup."Bonus Nos", MNBBonusSetup."Bonus Nos", WorkDate(), "No.", MNBBonusSetup."Bonus Nos");
        end;
    end;

    local procedure TestStatusOpen()
    begin
        Error('Procedure TestStatusOpen not implemented.');
    end;
}



