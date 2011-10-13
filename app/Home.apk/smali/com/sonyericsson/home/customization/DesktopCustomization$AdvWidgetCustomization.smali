.class Lcom/sonyericsson/home/customization/DesktopCustomization$AdvWidgetCustomization;
.super Ljava/lang/Object;
.source "DesktopCustomization.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/customization/DesktopCustomization;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdvWidgetCustomization"
.end annotation


# instance fields
.field public info:Lcom/sonyericsson/home/data/AdvWidgetInfo;

.field public settings:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/home/data/AdvWidgetInfo;Landroid/os/Bundle;)V
    .locals 0
    .parameter "info"
    .parameter "settings"

    .prologue
    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    iput-object p1, p0, Lcom/sonyericsson/home/customization/DesktopCustomization$AdvWidgetCustomization;->info:Lcom/sonyericsson/home/data/AdvWidgetInfo;

    .line 251
    iput-object p2, p0, Lcom/sonyericsson/home/customization/DesktopCustomization$AdvWidgetCustomization;->settings:Landroid/os/Bundle;

    .line 252
    return-void
.end method
