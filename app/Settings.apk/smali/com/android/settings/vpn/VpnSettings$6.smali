.class Lcom/android/settings/vpn/VpnSettings$6;
.super Ljava/lang/Object;
.source "VpnSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/vpn/VpnSettings;->createCommonDialogBuilder()Landroid/app/AlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/vpn/VpnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/vpn/VpnSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcom/android/settings/vpn/VpnSettings$6;->this$0:Lcom/android/settings/vpn/VpnSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "w"

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/settings/vpn/VpnSettings$6;->this$0:Lcom/android/settings/vpn/VpnSettings;

    invoke-static {v0}, Lcom/android/settings/vpn/VpnSettings;->access$600(Lcom/android/settings/vpn/VpnSettings;)V

    .line 315
    return-void
.end method
