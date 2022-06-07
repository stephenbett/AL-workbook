page 50104 "Test Page"
{
    ApplicationArea = All;
    Caption = 'Test Page';
    PageType = List;
    SourceTable = "Test Table";
    UsageCategory = Administration;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(Entry; Rec.Entry)
                {
                    ToolTip = 'Specifies the value of the Entry field.';
                    ApplicationArea = All;
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field.';
                    ApplicationArea = All;
                }
            }
        }
    }
}
