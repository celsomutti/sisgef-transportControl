unit sisgef.view.pages.layout;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Effects, FMX.Objects;

type
  TPageLayout = class(TForm)
    LayoutContainer: TLayout;
    LayoutHeader: TLayout;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PageLayout: TPageLayout;

implementation

{$R *.fmx}

end.
