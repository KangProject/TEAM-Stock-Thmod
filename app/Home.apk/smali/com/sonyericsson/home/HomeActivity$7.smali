.class Lcom/sonyericsson/home/HomeActivity$7;
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
.field private mFolderResultSent:Z

.field final synthetic this$0:Lcom/sonyericsson/home/HomeActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/HomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1047
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$2300(Lcom/sonyericsson/home/HomeActivity$7;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1047
    iget-boolean v0, p0, Lcom/sonyericsson/home/HomeActivity$7;->mFolderResultSent:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/sonyericsson/home/HomeActivity$7;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1047
    iput-boolean p1, p0, Lcom/sonyericsson/home/HomeActivity$7;->mFolderResultSent:Z

    return p1
.end method


# virtual methods
.method public addActivity(Lcom/sonyericsson/home/data/ActivityInfo;)Z
    .locals 2
    .parameter "activityInfo"

    .prologue
    .line 1076
    const-string v0, "addActivity"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/util/LogUtil;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1078
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    iget v0, v0, Lcom/sonyericsson/home/HomeActivity;->mAddTo:I

    packed-switch v0, :pswitch_data_0

    .line 1089
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1080
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$1600(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$1700(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/grid/GridLocation;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->addActivity(Lcom/sonyericsson/grid/GridLocation;Lcom/sonyericsson/home/data/ActivityInfo;)Z

    move-result v0

    goto :goto_0

    .line 1084
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$200(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/stage/StageController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1085
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$200(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/stage/StageController;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$1800(Lcom/sonyericsson/home/HomeActivity;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/home/layer/stage/StageController;->addActivity(ILcom/sonyericsson/home/data/ActivityInfo;)Z

    move-result v0

    goto :goto_0

    .line 1078
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
    .line 1119
    const-string v0, "addAdvWidget"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/util/LogUtil;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1120
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$1600(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$1700(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/grid/GridLocation;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->addAdvWidget(Ljava/lang/String;Lcom/sonyericsson/grid/GridLocation;)Z

    move-result v0

    return v0
.end method

.method public addFolder(Ljava/lang/String;)Z
    .locals 3
    .parameter "folderName"

    .prologue
    .line 1125
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1126
    .local v0, params:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1127
    const-string v1, "addFolder"

    invoke-static {v1, v0}, Lcom/sonyericsson/util/LogUtil;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1129
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    iget v1, v1, Lcom/sonyericsson/home/HomeActivity;->mAddTo:I

    packed-switch v1, :pswitch_data_0

    .line 1139
    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 1131
    :pswitch_0
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$1600(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v2}, Lcom/sonyericsson/home/HomeActivity;->access$1700(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/grid/GridLocation;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->addFolder(Lcom/sonyericsson/grid/GridLocation;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 1134
    :pswitch_1
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$200(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/stage/StageController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1135
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$200(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/stage/StageController;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v2}, Lcom/sonyericsson/home/HomeActivity;->access$1800(Lcom/sonyericsson/home/HomeActivity;)I

    move-result v2

    invoke-virtual {v1, v2, p1}, Lcom/sonyericsson/home/layer/stage/StageController;->addFolder(ILjava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 1129
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
    .line 1095
    const-string v0, "addShortcut"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/util/LogUtil;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1097
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    iget v0, v0, Lcom/sonyericsson/home/HomeActivity;->mAddTo:I

    packed-switch v0, :pswitch_data_0

    .line 1107
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1099
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$1600(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$1700(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/grid/GridLocation;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->addShortcut(Landroid/os/Bundle;Lcom/sonyericsson/grid/GridLocation;)Z

    move-result v0

    goto :goto_0

    .line 1102
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$200(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/stage/StageController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1103
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$200(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/stage/StageController;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$1800(Lcom/sonyericsson/home/HomeActivity;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/home/layer/stage/StageController;->addShortcut(Landroid/os/Bundle;I)Z

    move-result v0

    goto :goto_0

    .line 1097
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
    .line 1113
    const-string v0, "addWidget"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/util/LogUtil;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1114
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$1600(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$1700(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/grid/GridLocation;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->addWidget(ILcom/sonyericsson/grid/GridLocation;)Z

    move-result v0

    return v0
.end method

.method public finishDeleteDrop(Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;Z)V
    .locals 2
    .parameter "dropListener"
    .parameter "success"

    .prologue
    const/4 v1, 0x1

    .line 1262
    if-eqz p2, :cond_0

    .line 1263
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0, v1}, Lcom/sonyericsson/home/HomeActivity;->access$1002(Lcom/sonyericsson/home/HomeActivity;Z)Z

    .line 1265
    :cond_0
    if-eqz p2, :cond_1

    move v0, v1

    :goto_0
    invoke-interface {p1, v0}, Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;->dropFinished(I)V

    .line 1267
    return-void

    .line 1265
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public openFolder(Lcom/sonyericsson/home/data/InfoGroup;ILjava/lang/Object;)V
    .locals 4
    .parameter "infoGroup"
    .parameter "layer"
    .parameter "location"

    .prologue
    .line 1151
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1152
    .local v0, params:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "name"

    invoke-virtual {p1}, Lcom/sonyericsson/home/data/InfoGroup;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1153
    const-string v1, "size"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v3}, Lcom/sonyericsson/home/HomeActivity;->access$1900(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/InfoGroupManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sonyericsson/home/layer/InfoGroupManager;->getInfoCount(Lcom/sonyericsson/home/data/InfoGroup;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1154
    const-string v1, "openFolder"

    invoke-static {v1, v0}, Lcom/sonyericsson/util/LogUtil;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1155
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const/4 v2, 0x1

    invoke-static {v1, p1, p2, p3, v2}, Lcom/sonyericsson/home/HomeActivity;->access$2000(Lcom/sonyericsson/home/HomeActivity;Lcom/sonyericsson/home/data/InfoGroup;ILjava/lang/Object;Z)V

    .line 1156
    return-void
.end method

.method public overrideTransition(Landroid/graphics/Rect;)V
    .locals 6
    .parameter "sourceBounds"

    .prologue
    .line 1271
    if-eqz p1, :cond_0

    .line 1272
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$2500(Lcom/sonyericsson/home/HomeActivity;)Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v2}, Lcom/sonyericsson/home/HomeActivity;->access$2500(Lcom/sonyericsson/home/HomeActivity;)Landroid/util/DisplayMetrics;

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

    .line 1276
    .local v0, enterAnim:I
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const v2, 0x7f04003d

    invoke-virtual {v1, v0, v2}, Lcom/sonyericsson/home/HomeActivity;->overridePendingTransition(II)V

    .line 1278
    .end local v0           #enterAnim:I
    :cond_0
    return-void
.end method

.method public resolveRect(ILjava/lang/Object;)Landroid/graphics/Rect;
    .locals 1
    .parameter "layer"
    .parameter "location"

    .prologue
    .line 1282
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0, p1, p2}, Lcom/sonyericsson/home/HomeActivity;->access$2600(Lcom/sonyericsson/home/HomeActivity;ILjava/lang/Object;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public setFolderLabel(Lcom/sonyericsson/home/data/InfoGroup;Ljava/lang/String;)V
    .locals 2
    .parameter "infoGroup"
    .parameter "label"

    .prologue
    .line 1252
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1253
    .local v0, params:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "name"

    invoke-virtual {v0, v1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1254
    const-string v1, "setFolderLabel"

    invoke-static {v1, v0}, Lcom/sonyericsson/util/LogUtil;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1256
    invoke-virtual {p1, p2}, Lcom/sonyericsson/home/data/InfoGroup;->setLabel(Ljava/lang/String;)V

    .line 1257
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$1900(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/InfoGroupManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/InfoGroupManager;->notifyAppearanceChanged()V

    .line 1258
    return-void
.end method

.method public showDeleteDialog(Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;)V
    .locals 8
    .parameter "onDialogResultListener"

    .prologue
    .line 1159
    iget-object v5, p0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030008

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1162
    .local v4, view:Landroid/view/View;
    new-instance v2, Lcom/sonyericsson/home/HomeActivity$7$1;

    invoke-direct {v2, p0, p1}, Lcom/sonyericsson/home/HomeActivity$7$1;-><init>(Lcom/sonyericsson/home/HomeActivity$7;Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;)V

    .line 1180
    .local v2, onClickListener:Landroid/view/View$OnClickListener;
    const v5, 0x7f0e0016

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1181
    const v5, 0x7f0e0017

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1183
    new-instance v1, Lcom/sonyericsson/home/HomeActivity$7$2;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/home/HomeActivity$7$2;-><init>(Lcom/sonyericsson/home/HomeActivity$7;Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;)V

    .line 1189
    .local v1, onCancelListener:Landroid/content/DialogInterface$OnCancelListener;
    new-instance v3, Lcom/sonyericsson/home/HomeActivity$7$3;

    invoke-direct {v3, p0}, Lcom/sonyericsson/home/HomeActivity$7$3;-><init>(Lcom/sonyericsson/home/HomeActivity$7;)V

    .line 1197
    .local v3, onDismissListener:Landroid/content/DialogInterface$OnDismissListener;
    iget-object v5, p0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v5}, Lcom/sonyericsson/home/bidi/Utils;->getAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1198
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1199
    iget-object v5, p0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sonyericsson/home/HomeActivity;->access$2102(Lcom/sonyericsson/home/HomeActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1200
    iget-object v5, p0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/sonyericsson/home/HomeActivity;->access$2202(Lcom/sonyericsson/home/HomeActivity;Z)Z

    .line 1201
    iget-object v5, p0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v5}, Lcom/sonyericsson/home/HomeActivity;->access$2100(Lcom/sonyericsson/home/HomeActivity;)Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1202
    iget-object v5, p0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v5}, Lcom/sonyericsson/home/HomeActivity;->access$2100(Lcom/sonyericsson/home/HomeActivity;)Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1203
    iget-object v5, p0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v5}, Lcom/sonyericsson/home/HomeActivity;->access$2100(Lcom/sonyericsson/home/HomeActivity;)Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 1204
    return-void
.end method

.method public showFolderDialog(Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;ILjava/lang/String;)V
    .locals 2
    .parameter "onDialogResultListener"
    .parameter "titleResource"
    .parameter "defaultText"

    .prologue
    .line 1211
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonyericsson/home/HomeActivity$7;->mFolderResultSent:Z

    .line 1213
    new-instance v0, Lcom/sonyericsson/home/layer/folder/FolderDialog;

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-direct {v0, v1}, Lcom/sonyericsson/home/layer/folder/FolderDialog;-><init>(Landroid/content/Context;)V

    .line 1214
    .local v0, folderDialog:Lcom/sonyericsson/home/layer/folder/FolderDialog;
    new-instance v1, Lcom/sonyericsson/home/HomeActivity$7$4;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/home/HomeActivity$7$4;-><init>(Lcom/sonyericsson/home/HomeActivity$7;Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/folder/FolderDialog;->setDialogListener(Lcom/sonyericsson/home/layer/folder/FolderDialog$FolderDialogListener;)V

    .line 1246
    invoke-virtual {v0, p2, p3}, Lcom/sonyericsson/home/layer/folder/FolderDialog;->show(ILjava/lang/String;)V

    .line 1247
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1, v0}, Lcom/sonyericsson/home/HomeActivity;->access$2102(Lcom/sonyericsson/home/HomeActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1248
    return-void
.end method

.method public showToast(I)V
    .locals 2
    .parameter "stringId"

    .prologue
    .line 1145
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/home/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/home/bidi/Utils;->getBidiContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 1146
    .local v0, ctx:Landroid/content/Context;
    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1147
    return-void
.end method

.method public startActivitySafely(Landroid/content/Intent;)Z
    .locals 3
    .parameter "intent"

    .prologue
    .line 1051
    const-string v1, "startActivitySafely"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sonyericsson/util/LogUtil;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1054
    const/high16 v1, 0x1000

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1055
    const/high16 v1, 0x20

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1056
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/home/HomeActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1061
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 1057
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1058
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startActivitySafelyForResult(Landroid/content/Intent;I)Z
    .locals 2
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 1067
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-virtual {v1, p1, p2}, Lcom/sonyericsson/home/HomeActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1072
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 1068
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1069
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method
