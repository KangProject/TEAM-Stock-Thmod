.class Lcom/sonyericsson/home/GlobalCustomizationManager$GlobalCustomizationTask;
.super Lcom/sonyericsson/util/Worker$Task;
.source "GlobalCustomizationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/GlobalCustomizationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GlobalCustomizationTask"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field mCustomization:Lcom/sonyericsson/home/GlobalCustomizationManager$GlobalCustomization;

.field final synthetic this$0:Lcom/sonyericsson/home/GlobalCustomizationManager;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/home/GlobalCustomizationManager;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/sonyericsson/home/GlobalCustomizationManager$GlobalCustomizationTask;->this$0:Lcom/sonyericsson/home/GlobalCustomizationManager;

    .line 72
    const-string v0, "GlobalCustomizationTask"

    invoke-direct {p0, v0}, Lcom/sonyericsson/util/Worker$Task;-><init>(Ljava/lang/String;)V

    .line 73
    iput-object p2, p0, Lcom/sonyericsson/home/GlobalCustomizationManager$GlobalCustomizationTask;->mContext:Landroid/content/Context;

    .line 74
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 78
    new-instance v0, Lcom/sonyericsson/home/GlobalCustomizationManager$GlobalCustomization;

    iget-object v1, p0, Lcom/sonyericsson/home/GlobalCustomizationManager$GlobalCustomizationTask;->mContext:Landroid/content/Context;

    const-string v2, "global"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/home/GlobalCustomizationManager$GlobalCustomization;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/home/GlobalCustomizationManager$GlobalCustomizationTask;->mCustomization:Lcom/sonyericsson/home/GlobalCustomizationManager$GlobalCustomization;

    .line 79
    iget-object v0, p0, Lcom/sonyericsson/home/GlobalCustomizationManager$GlobalCustomizationTask;->mCustomization:Lcom/sonyericsson/home/GlobalCustomizationManager$GlobalCustomization;

    const-string v1, "/etc/customization/settings/com/sonyericsson/home/default_settings_global.xml"

    invoke-virtual {v0, v1, v3}, Lcom/sonyericsson/home/GlobalCustomizationManager$GlobalCustomization;->applyCustomization(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/sonyericsson/home/GlobalCustomizationManager$GlobalCustomizationTask;->mCustomization:Lcom/sonyericsson/home/GlobalCustomizationManager$GlobalCustomization;

    const v1, 0x7f050004

    invoke-virtual {v0, v1, v3}, Lcom/sonyericsson/home/GlobalCustomizationManager$GlobalCustomization;->applyCustomization(IZ)Z

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/GlobalCustomizationManager$GlobalCustomizationTask;->mCustomization:Lcom/sonyericsson/home/GlobalCustomizationManager$GlobalCustomization;

    invoke-static {}, Lcom/sonyericsson/home/GlobalCustomizationManager;->access$000()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/sonyericsson/home/GlobalCustomizationManager$GlobalCustomization;->applyCustomization(Landroid/net/Uri;Z)Z

    .line 84
    return-void
.end method

.method public postExecute()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sonyericsson/home/GlobalCustomizationManager$GlobalCustomizationTask;->this$0:Lcom/sonyericsson/home/GlobalCustomizationManager;

    iget-object v1, p0, Lcom/sonyericsson/home/GlobalCustomizationManager$GlobalCustomizationTask;->mCustomization:Lcom/sonyericsson/home/GlobalCustomizationManager$GlobalCustomization;

    invoke-static {v0, v1}, Lcom/sonyericsson/home/GlobalCustomizationManager;->access$100(Lcom/sonyericsson/home/GlobalCustomizationManager;Lcom/sonyericsson/home/GlobalCustomizationManager$GlobalCustomization;)V

    .line 89
    return-void
.end method
