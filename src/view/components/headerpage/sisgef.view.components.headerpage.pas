unit sisgef.view.components.headerpage;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Layouts, FMX.Effects, FMX.Objects, FMX.Controls.Presentation;

type
  TComponentHeaderPage = class(TFrame)
    LayoutContainer: TLayout;
    LayoutDescApp: TLayout;
    LayoutLogoApp: TLayout;
    LayoutAppName: TLayout;
    LabelAppName: TLabel;
    LayoutUserButon: TLayout;
    ImageLogoApp: TImage;
    CircleLogoApp: TCircle;
  private
    procedure BuildImageLogo;
  public
    class function New(AOwner: TComponent): TComponentHeaderPage;
    function Component: TFMXObject;
  end;

implementation

{$R *.fmx}

uses
  Router4D,
  System.Generics.Collections,
  sisgef.services.utils;

{ TComponentHeaderPage }

procedure TComponentHeaderPage.BuildImageLogo;
begin
  TUtils.ResourceImage('logoapp', ImageLogoApp);
end;

function TComponentHeaderPage.Component: TFMXObject;
begin
  BuildImageLogo;
  Result := LayoutContainer;
end;

class function TComponentHeaderPage.New(AOwner: TComponent)
  : TComponentHeaderPage;
begin
  Result := Self.Create(AOwner);
end;

end.
