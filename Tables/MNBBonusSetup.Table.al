table 5010003 "MNB Bonus Setup"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
            DataClassification = CustomerContent;

        }
        field(2; "Bonus Nos"; Code[20])
        {
            Caption = 'Bonus Nos.';
            DataClassification = CustomerContent;
            TableRelation = "No. Series";
        }
    }

    Keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }

}