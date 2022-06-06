report 50133 "MNB Bonus Overview"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    Caption = 'Bonus Overview';

    // DefaultLayout = RDLC;
    // RDLCLayout = './layout/BonusOverview.rdl';
    DefaultLayout = Word;
    WordLayout = 'BonusOverview.docx';
    dataset
    {
        dataitem("MNB Bonus Header"; "MNB Bonus Header")
        {
            RequestFilterFields = "No.", "Customer No";
            column(No_; "No.")
            {

            }
            column(Customer_No; "Customer No")
            {

            }
            column(Staring_Date; Format("Staring Date", 0))
            {

            }
            column(Ending_Date; Format("Ending Date", 0))
            {

            }
            column(BonusNoCaptionLbl; BonusNoCaptionLbl)
            {

            }
            column(StaringDate_MNBBonusHeader; "Staring Date")
            {
            }
            column(CustomerNoCaptionLbl; CustomerNoCaptionLbl)
            {

            }
            column(PostingDateCaptionLbl; PostingDateCaptionLbl)
            {

            }
            column(DocumentNoCaptionLbl; DocumentNoCaptionLbl)
            {

            }
            column(BonusAmountCaptionLbl; BonusAmountCaptionLbl)
            {

            }
            column(ItemNoCaptionLbl; ItemNoCaptionLbl)
            {

            }
            column(StartingDateCaptionLbl; StartingDateCaptionLbl)
            {

            }
            column(EndingDateCaptionLbl; EndingDateCaptionLbl)
            {

            }
            dataitem("MNB Bonus Entry"; "MNB Bonus Entry")
            {
                DataItemLink = "Bonus No." = field("No.");
                RequestFilterFields = "Posting Date";

                column(Document_No_; "Document No.")
                {

                }
                column(Posting_Date; Format("Posting Date", 0))
                {

                }
                column(Item_No_; "Item No.")
                {

                }
                column(Bonus_Amount; "Bonus Amount")
                {

                }


            }
            trigger OnAfterGetRecord()
            var
                MNBonusEntry: Record "MNB Bonus Entry";
            begin
                MNBonusEntry.CopyFilters("MNB Bonus Entry");
                MNBonusEntry.SetRange("Bonus No.", BonusAmountCaptionLbl);
                MNBonusEntry.CalcSums("Bonus Amount");

                AmountSum := MNBonusEntry."Bonus Amount";
            end;
        }
    }
    var
        AmountSum: Decimal;



    var
        BonusNoCaptionLbl: Label 'Bonus No.';
        CustomerNoCaptionLbl: Label 'Customer No.';
        PostingDateCaptionLbl: Label 'Posting Date';
        DocumentNoCaptionLbl: Label 'Document No.';
        BonusAmountCaptionLbl: Label 'Amount';
        ItemNoCaptionLbl: Label 'Item No.';
        StartingDateCaptionLbl: Label 'Starting Date';
        EndingDateCaptionLbl: Label 'Ending Date';




}

