.class Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter$1;
.super Ljava/lang/Object;
.source "AppTrayAdapter.java"

# interfaces
.implements Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager$AppTrayModelObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;Lcom/sonyericsson/home/layer/AdapterHelper;Lcom/sonyericsson/grid/Grid;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter$1;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter$1;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->notifyDataSetChanged()V

    .line 91
    return-void
.end method
