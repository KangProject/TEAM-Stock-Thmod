.class Lcom/sonyericsson/home/GlobalCustomizationManager$GlobalCustomization;
.super Lcom/sonyericsson/home/customization/GenericCustomization;
.source "GlobalCustomizationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/GlobalCustomizationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GlobalCustomization"
.end annotation


# instance fields
.field mLandscapeModeEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "type"

    .prologue
    .line 207
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/home/customization/GenericCustomization;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/home/GlobalCustomizationManager$GlobalCustomization;->mLandscapeModeEnabled:Z

    .line 208
    return-void
.end method


# virtual methods
.method protected handleSetting(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 212
    const-string v0, "landscape-mode-enabled"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/home/GlobalCustomizationManager$GlobalCustomization;->mLandscapeModeEnabled:Z

    .line 214
    const/4 v0, 0x1

    .line 217
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
