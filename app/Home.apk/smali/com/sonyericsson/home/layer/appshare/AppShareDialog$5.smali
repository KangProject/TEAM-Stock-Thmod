.class Lcom/sonyericsson/home/layer/appshare/AppShareDialog$5;
.super Landroid/os/AsyncTask;
.source "AppShareDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->prepareDialog(Landroid/app/Dialog;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field mSharedAppIcon:Landroid/graphics/drawable/Drawable;

.field mSharedAppName:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/sonyericsson/home/layer/appshare/AppShareDialog;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/appshare/AppShareDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog$5;->this$0:Lcom/sonyericsson/home/layer/appshare/AppShareDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/layer/appshare/AppShareDialog$5;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 7
    .parameter "params"

    .prologue
    const/4 v4, 0x0

    .line 154
    aget-object v3, p1, v4

    .line 155
    .local v3, packageNameToShare:Ljava/lang/String;
    iget-object v4, p0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog$5;->this$0:Lcom/sonyericsson/home/layer/appshare/AppShareDialog;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->access$700(Lcom/sonyericsson/home/layer/appshare/AppShareDialog;)Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 157
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 158
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog$5;->mSharedAppIcon:Landroid/graphics/drawable/Drawable;

    .line 159
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog$5;->mSharedAppName:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    :goto_0
    const/4 v4, 0x0

    return-object v4

    .line 160
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 161
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "AppShareDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to get application info; "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 148
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/layer/appshare/AppShareDialog$5;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 168
    iget-object v2, p0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog$5;->this$0:Lcom/sonyericsson/home/layer/appshare/AppShareDialog;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->access$000(Lcom/sonyericsson/home/layer/appshare/AppShareDialog;)Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 169
    iget-object v2, p0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog$5;->this$0:Lcom/sonyericsson/home/layer/appshare/AppShareDialog;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->access$000(Lcom/sonyericsson/home/layer/appshare/AppShareDialog;)Landroid/app/Dialog;

    move-result-object v2

    const v3, 0x7f0e0023

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 170
    .local v1, sharedIconView:Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog$5;->mSharedAppIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 172
    iget-object v2, p0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog$5;->this$0:Lcom/sonyericsson/home/layer/appshare/AppShareDialog;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->access$000(Lcom/sonyericsson/home/layer/appshare/AppShareDialog;)Landroid/app/Dialog;

    move-result-object v2

    const v3, 0x7f0e0024

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 173
    .local v0, appNameView:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog$5;->mSharedAppName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    .end local v0           #appNameView:Landroid/widget/TextView;
    .end local v1           #sharedIconView:Landroid/widget/ImageView;
    :cond_0
    return-void
.end method
