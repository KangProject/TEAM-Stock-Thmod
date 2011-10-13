.class Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$1;
.super Ljava/lang/Object;
.source "AppTrayEditor.java"

# interfaces
.implements Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter$AdaptorEnabledChecker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->createEnabledChecker()Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter$AdaptorEnabledChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 263
    iput-object p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$1;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$1;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$100(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Lcom/sonyericsson/home/resourceload/PackageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$1;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$000(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->getItem(I)Lcom/sonyericsson/home/data/ActivityInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/resourceload/PackageLoader;->isUninstallable(Lcom/sonyericsson/home/data/ActivityInfo;)Z

    move-result v0

    return v0
.end method
