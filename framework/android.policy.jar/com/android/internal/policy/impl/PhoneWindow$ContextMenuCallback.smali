.class final Lcom/android/internal/policy/impl/PhoneWindow$ContextMenuCallback;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ContextMenuCallback"
.end annotation


# instance fields
.field private mFeatureId:I

.field private mSubMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindow;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindow;I)V
    .locals 0
    .parameter
    .parameter "featureId"

    .prologue
    .line 2757
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$ContextMenuCallback;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2758
    iput p2, p0, Lcom/android/internal/policy/impl/PhoneWindow$ContextMenuCallback;->mFeatureId:I

    .line 2759
    return-void
.end method


# virtual methods
.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 2
    .parameter "menu"
    .parameter "allMenusAreClosing"

    .prologue
    .line 2762
    if-eqz p2, :cond_2

    .line 2763
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$ContextMenuCallback;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 2764
    .local v0, callback:Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$ContextMenuCallback;->mFeatureId:I

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 2766
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$ContextMenuCallback;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->access$500(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/view/menu/ContextMenuBuilder;

    move-result-object v1

    if-ne p1, v1, :cond_1

    .line 2767
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$ContextMenuCallback;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1200(Lcom/android/internal/policy/impl/PhoneWindow;)V

    .line 2771
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$ContextMenuCallback;->mSubMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

    if-eqz v1, :cond_2

    .line 2772
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$ContextMenuCallback;->mSubMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuDialogHelper;->dismiss()V

    .line 2773
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$ContextMenuCallback;->mSubMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

    .line 2776
    .end local v0           #callback:Landroid/view/Window$Callback;
    :cond_2
    return-void
.end method

.method public onCloseSubMenu(Lcom/android/internal/view/menu/SubMenuBuilder;)V
    .locals 3
    .parameter "menu"

    .prologue
    .line 2779
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$ContextMenuCallback;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 2780
    .local v0, callback:Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$ContextMenuCallback;->mFeatureId:I

    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->getRootMenu()Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 2781
    :cond_0
    return-void
.end method

.method public onMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "menu"
    .parameter "item"

    .prologue
    .line 2784
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$ContextMenuCallback;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 2785
    .local v0, callback:Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$ContextMenuCallback;->mFeatureId:I

    invoke-interface {v0, v1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onMenuModeChange(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 2789
    return-void
.end method

.method public onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .locals 2
    .parameter "subMenu"

    .prologue
    .line 2793
    invoke-virtual {p1, p0}, Lcom/android/internal/view/menu/SubMenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 2796
    new-instance v0, Lcom/android/internal/view/menu/MenuDialogHelper;

    invoke-direct {v0, p1}, Lcom/android/internal/view/menu/MenuDialogHelper;-><init>(Lcom/android/internal/view/menu/MenuBuilder;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$ContextMenuCallback;->mSubMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

    .line 2797
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$ContextMenuCallback;->mSubMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuDialogHelper;->show(Landroid/os/IBinder;)V

    .line 2799
    const/4 v0, 0x1

    return v0
.end method
