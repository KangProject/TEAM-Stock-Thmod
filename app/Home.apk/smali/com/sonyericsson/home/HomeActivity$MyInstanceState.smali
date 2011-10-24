.class Lcom/sonyericsson/home/HomeActivity$MyInstanceState;
.super Ljava/lang/Object;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MyInstanceState"
.end annotation


# instance fields
.field public adapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

.field public addFolderToDesktopLocation:Lcom/sonyericsson/grid/GridLocation;

.field public addFolderToStageLocation:I

.field public addTo:I

.field public addingFolder:Z

.field public apptrayDisableDuringSortDialog:Z

.field public apptrayIsEditing:Z

.field public apptrayIsOpen:Z

.field public apptrayModel:Ljava/lang/Object;

.field public apptrayPane:I

.field public isFolderOpen:Z

.field public isInOverview:Z

.field public openCorner:I

.field public openFolder:Lcom/sonyericsson/home/data/InfoGroup;

.field public openFolderRenaming:Z

.field public openFolderSourceLayer:I

.field public openFolderSourceLocation:Ljava/lang/Object;

.field public overviewProgress:F

.field public resourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

.field public savedFolderText:Ljava/lang/String;

.field public stageCreatingFolder:Z

.field public stageDroppedAtInfo:Lcom/sonyericsson/home/data/Info;

.field public stageHintLocation:I

.field public stageModel:Ljava/lang/Object;

.field public stageSavedPickedUpInfo:Lcom/sonyericsson/home/data/Info;

.field public statistics:Lcom/sonyericsson/home/statistics/Statistics;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
