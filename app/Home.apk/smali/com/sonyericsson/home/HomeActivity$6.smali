.class Lcom/sonyericsson/home/HomeActivity$6;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/sonyericsson/home/HomeActivityFlow$Presenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/HomeActivity;->createActivityFlow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/HomeActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/HomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 568
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addActivity(Lcom/sonyericsson/home/data/ActivityInfo;)Z
    .locals 2
    .parameter "activityInfo"

    .prologue
    .line 597
    const-string v0, "addActivity"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/util/LogUtil;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 599
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    iget v0, v0, Lcom/sonyericsson/home/HomeActivity;->mAddTo:I

    packed-switch v0, :pswitch_data_0

    .line 610
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 601
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$000(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$1100(Lcom/sonyericsson/home/HomeActivity;)Landroid/graphics/Point;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->addActivity(Landroid/graphics/Point;Lcom/sonyericsson/home/data/ActivityInfo;)Z

    move-result v0

    goto :goto_0

    .line 605
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$800(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/stage/StageController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$800(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/stage/StageController;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$1200(Lcom/sonyericsson/home/HomeActivity;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/home/layer/stage/StageController;->addActivity(ILcom/sonyericsson/home/data/ActivityInfo;)Z

    move-result v0

    goto :goto_0

    .line 599
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public addAdvWidget(Ljava/lang/String;)Z
    .locals 2
    .parameter "packageName"

    .prologue
    .line 640
    const-string v0, "addAdvWidget"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/util/LogUtil;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 641
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$000(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$1100(Lcom/sonyericsson/home/HomeActivity;)Landroid/graphics/Point;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->addAdvWidget(Ljava/lang/String;Landroid/graphics/Point;)Z

    move-result v0

    return v0
.end method

.method public addFolder(Ljava/lang/String;I)Z
    .locals 3
    .parameter "folderName"
    .parameter "icon"

    .prologue
    .line 646
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 647
    .local v0, params:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    const-string v1, "icon"

    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v2}, Lcom/sonyericsson/home/HomeActivity;->access$1300(Lcom/sonyericsson/home/HomeActivity;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    const-string v1, "addFolder"

    invoke-static {v1, v0}, Lcom/sonyericsson/util/LogUtil;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 650
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    iget v1, v1, Lcom/sonyericsson/home/HomeActivity;->mAddTo:I

    packed-switch v1, :pswitch_data_0

    .line 661
    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 652
    :pswitch_0
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$000(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v2}, Lcom/sonyericsson/home/HomeActivity;->access$1100(Lcom/sonyericsson/home/HomeActivity;)Landroid/graphics/Point;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->addFolder(Landroid/graphics/Point;Ljava/lang/String;I)Z

    move-result v1

    goto :goto_0

    .line 656
    :pswitch_1
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$800(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/stage/StageController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 657
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$800(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/stage/StageController;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v2}, Lcom/sonyericsson/home/HomeActivity;->access$1200(Lcom/sonyericsson/home/HomeActivity;)I

    move-result v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/sonyericsson/home/layer/stage/StageController;->addFolder(ILjava/lang/String;I)Z

    move-result v1

    goto :goto_0

    .line 650
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public addShortcut(Landroid/os/Bundle;)Z
    .locals 2
    .parameter "bundle"

    .prologue
    .line 616
    const-string v0, "addShortcut"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/util/LogUtil;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 618
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    iget v0, v0, Lcom/sonyericsson/home/HomeActivity;->mAddTo:I

    packed-switch v0, :pswitch_data_0

    .line 628
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 620
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$000(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$1100(Lcom/sonyericsson/home/HomeActivity;)Landroid/graphics/Point;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->addShortcut(Landroid/os/Bundle;Landroid/graphics/Point;)Z

    move-result v0

    goto :goto_0

    .line 623
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$800(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/stage/StageController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$800(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/stage/StageController;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$1200(Lcom/sonyericsson/home/HomeActivity;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/home/layer/stage/StageController;->addShortcut(Landroid/os/Bundle;I)Z

    move-result v0

    goto :goto_0

    .line 618
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public addWidget(I)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 634
    const-string v0, "addWidget"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/util/LogUtil;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 635
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$000(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$1100(Lcom/sonyericsson/home/HomeActivity;)Landroid/graphics/Point;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->addWidget(ILandroid/graphics/Point;)Z

    move-result v0

    return v0
.end method

.method public finishDeleteDrop(Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;Z)V
    .locals 2
    .parameter "dropListener"
    .parameter "success"

    .prologue
    .line 852
    if-eqz p2, :cond_0

    .line 853
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/home/HomeActivity;->access$302(Lcom/sonyericsson/home/HomeActivity;Z)Z

    .line 855
    :cond_0
    invoke-interface {p1, p2}, Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;->dropFinished(Z)V

    .line 856
    return-void
.end method

.method public openFolder(Lcom/sonyericsson/home/data/InfoGroup;Landroid/graphics/Rect;)V
    .locals 4
    .parameter "infoGroup"
    .parameter "sourceBounds"

    .prologue
    .line 672
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 673
    .local v0, params:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "name"

    invoke-virtual {p1}, Lcom/sonyericsson/home/data/InfoGroup;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    const-string v1, "size"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v3}, Lcom/sonyericsson/home/HomeActivity;->access$1400(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/InfoGroupManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sonyericsson/home/layer/InfoGroupManager;->getInfoCount(Lcom/sonyericsson/home/data/InfoGroup;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    const-string v1, "openFolder"

    invoke-static {v1, v0}, Lcom/sonyericsson/util/LogUtil;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 676
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$1500(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/folder/FolderController;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/sonyericsson/home/layer/folder/FolderController;->openFolder(Lcom/sonyericsson/home/data/InfoGroup;Landroid/graphics/Rect;)V

    .line 677
    return-void
.end method

.method public overrideTransition(Landroid/graphics/Rect;)V
    .locals 6
    .parameter "sourceBounds"

    .prologue
    .line 860
    if-eqz p1, :cond_0

    .line 861
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$1800(Lcom/sonyericsson/home/HomeActivity;)Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v2}, Lcom/sonyericsson/home/HomeActivity;->access$1800(Lcom/sonyericsson/home/HomeActivity;)Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/sonyericsson/util/TransitionUtils;->getScaleUpTransition(IIII)I

    move-result v0

    .line 866
    .local v0, enterAnim:I
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const v2, 0x7f040038

    invoke-virtual {v1, v0, v2}, Lcom/sonyericsson/home/HomeActivity;->overridePendingTransition(II)V

    .line 868
    .end local v0           #enterAnim:I
    :cond_0
    return-void
.end method

.method public setFolderLabel(Lcom/sonyericsson/home/data/InfoGroup;Ljava/lang/String;I)V
    .locals 3
    .parameter "infoGroup"
    .parameter "label"
    .parameter "icon"

    .prologue
    .line 841
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 842
    .local v0, params:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "name"

    invoke-virtual {v0, v1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    const-string v1, "icon"

    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v2}, Lcom/sonyericsson/home/HomeActivity;->access$1300(Lcom/sonyericsson/home/HomeActivity;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p3

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    const-string v1, "setFolderLabel"

    invoke-static {v1, v0}, Lcom/sonyericsson/util/LogUtil;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 845
    invoke-virtual {p1, p2}, Lcom/sonyericsson/home/data/InfoGroup;->setLabel(Ljava/lang/String;)V

    .line 846
    invoke-virtual {p1, p3}, Lcom/sonyericsson/home/data/InfoGroup;->setIcon(I)V

    .line 847
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$1400(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/InfoGroupManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/InfoGroupManager;->notifyAppearanceChanged()V

    .line 848
    return-void
.end method

.method public showDeleteDialog(Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;)V
    .locals 7
    .parameter "onDialogResultListener"

    .prologue
    .line 680
    iget-object v4, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-virtual {v4}, Lcom/sonyericsson/home/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030001

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 683
    .local v3, view:Landroid/view/View;
    new-instance v2, Lcom/sonyericsson/home/HomeActivity$6$1;

    invoke-direct {v2, p0, p1}, Lcom/sonyericsson/home/HomeActivity$6$1;-><init>(Lcom/sonyericsson/home/HomeActivity$6;Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;)V

    .line 701
    .local v2, onClickListener:Landroid/view/View$OnClickListener;
    const v4, 0x7f0c0007

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 702
    const v4, 0x7f0c0008

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 704
    new-instance v1, Lcom/sonyericsson/home/HomeActivity$6$2;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/home/HomeActivity$6$2;-><init>(Lcom/sonyericsson/home/HomeActivity$6;Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;)V

    .line 710
    .local v1, onCancelListener:Landroid/content/DialogInterface$OnCancelListener;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 711
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 712
    iget-object v4, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonyericsson/home/HomeActivity;->access$1602(Lcom/sonyericsson/home/HomeActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 713
    iget-object v4, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/sonyericsson/home/HomeActivity;->access$1702(Lcom/sonyericsson/home/HomeActivity;Z)Z

    .line 714
    iget-object v4, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v4}, Lcom/sonyericsson/home/HomeActivity;->access$1600(Lcom/sonyericsson/home/HomeActivity;)Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 715
    iget-object v4, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v4}, Lcom/sonyericsson/home/HomeActivity;->access$1600(Lcom/sonyericsson/home/HomeActivity;)Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 716
    return-void
.end method

.method public showFolderDialog(Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;ILjava/lang/String;I)V
    .locals 11
    .parameter "onDialogResultListener"
    .parameter "titleResource"
    .parameter "defaultText"
    .parameter "defaultIcon"

    .prologue
    .line 721
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/home/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030004

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 724
    .local v3, view:Landroid/view/View;
    const v1, 0x7f0c0010

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 727
    const v1, 0x7f0c0011

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    .line 728
    .local v7, editText:Landroid/widget/EditText;
    if-eqz p3, :cond_0

    .line 729
    invoke-virtual {v7, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 733
    :goto_0
    invoke-virtual {v7}, Landroid/widget/EditText;->selectAll()V

    .line 734
    new-instance v1, Lcom/sonyericsson/home/HomeActivity$6$3;

    invoke-direct {v1, p0}, Lcom/sonyericsson/home/HomeActivity$6$3;-><init>(Lcom/sonyericsson/home/HomeActivity$6;)V

    invoke-virtual {v7, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 747
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sonyericsson/home/HomeActivity;->mSavedFolderText:Ljava/lang/String;

    .line 750
    const/16 v1, 0x8

    new-array v5, v1, [I

    fill-array-data v5, :array_0

    .line 754
    .local v5, iconIds:[I
    array-length v1, v5

    new-array v6, v1, [Landroid/view/View;

    .line 755
    .local v6, iconViews:[Landroid/view/View;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    array-length v1, v5

    if-ge v9, v1, :cond_1

    .line 756
    aget v1, v5, v9

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v6, v9

    .line 755
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 731
    .end local v5           #iconIds:[I
    .end local v6           #iconViews:[Landroid/view/View;
    .end local v9           #i:I
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$1300(Lcom/sonyericsson/home/HomeActivity;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p4

    invoke-virtual {v7, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 759
    .restart local v5       #iconIds:[I
    .restart local v6       #iconViews:[Landroid/view/View;
    .restart local v9       #i:I
    :cond_1
    new-instance v0, Lcom/sonyericsson/home/HomeActivity$6$4;

    move-object v1, p0

    move v2, p4

    move-object v4, p1

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/home/HomeActivity$6$4;-><init>(Lcom/sonyericsson/home/HomeActivity$6;ILandroid/view/View;Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;[I[Landroid/view/View;Landroid/widget/EditText;)V

    .line 819
    .local v0, onClickListener:Landroid/view/View$OnClickListener;
    const/4 v9, 0x0

    :goto_2
    array-length v1, v6

    if-ge v9, v1, :cond_2

    .line 820
    aget-object v1, v6, v9

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 819
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 822
    :cond_2
    const v1, 0x7f0c0007

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 823
    const v1, 0x7f0c0008

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 825
    new-instance v10, Lcom/sonyericsson/home/HomeActivity$6$5;

    invoke-direct {v10, p0, p1}, Lcom/sonyericsson/home/HomeActivity$6$5;-><init>(Lcom/sonyericsson/home/HomeActivity$6;Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;)V

    .line 831
    .local v10, onCancelListener:Landroid/content/DialogInterface$OnCancelListener;
    new-instance v8, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-direct {v8, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 832
    .local v8, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v8, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 833
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/home/HomeActivity;->access$1602(Lcom/sonyericsson/home/HomeActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 834
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sonyericsson/home/HomeActivity;->access$1702(Lcom/sonyericsson/home/HomeActivity;Z)Z

    .line 835
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$1600(Lcom/sonyericsson/home/HomeActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 836
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$1600(Lcom/sonyericsson/home/HomeActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 837
    return-void

    .line 750
    nop

    :array_0
    .array-data 0x4
        0x12t 0x0t 0xct 0x7ft
        0x13t 0x0t 0xct 0x7ft
        0x14t 0x0t 0xct 0x7ft
        0x15t 0x0t 0xct 0x7ft
        0x16t 0x0t 0xct 0x7ft
        0x17t 0x0t 0xct 0x7ft
        0x18t 0x0t 0xct 0x7ft
        0x19t 0x0t 0xct 0x7ft
    .end array-data
.end method

.method public showToast(I)V
    .locals 2
    .parameter "stringId"

    .prologue
    .line 667
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/home/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 668
    return-void
.end method

.method public startActivitySafely(Landroid/content/Intent;)Z
    .locals 3
    .parameter "intent"

    .prologue
    .line 572
    const-string v1, "startActivitySafely"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sonyericsson/util/LogUtil;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 575
    const/high16 v1, 0x1000

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 576
    const/high16 v1, 0x20

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 577
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/home/HomeActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 582
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 578
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 579
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startActivitySafelyForResult(Landroid/content/Intent;I)Z
    .locals 2
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 588
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-virtual {v1, p1, p2}, Lcom/sonyericsson/home/HomeActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 593
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 589
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 590
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method
