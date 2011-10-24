.class Lcom/android/browser/SemcBrowserCustomization$1;
.super Ljava/lang/Object;
.source "SemcBrowserCustomization.java"

# interfaces
.implements Lcom/android/browser/SemcBrowserCustomizationParser$ParserListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/SemcBrowserCustomization;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/SemcBrowserCustomization;


# direct methods
.method constructor <init>(Lcom/android/browser/SemcBrowserCustomization;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/browser/SemcBrowserCustomization$1;->this$0:Lcom/android/browser/SemcBrowserCustomization;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNewBookmark(Lcom/android/browser/SemcBrowserCustomizationParser$BookmarkItem;)V
    .locals 2
    .parameter "i"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/browser/SemcBrowserCustomization$1;->this$0:Lcom/android/browser/SemcBrowserCustomization;

    invoke-static {v0}, Lcom/android/browser/SemcBrowserCustomization;->access$200(Lcom/android/browser/SemcBrowserCustomization;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/browser/SemcBrowserCustomization$1;->this$0:Lcom/android/browser/SemcBrowserCustomization;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/android/browser/SemcBrowserCustomization;->access$202(Lcom/android/browser/SemcBrowserCustomization;Ljava/util/List;)Ljava/util/List;

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/browser/SemcBrowserCustomization$1;->this$0:Lcom/android/browser/SemcBrowserCustomization;

    invoke-static {v0}, Lcom/android/browser/SemcBrowserCustomization;->access$200(Lcom/android/browser/SemcBrowserCustomization;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    return-void
.end method

.method public onNewHomepage(Ljava/lang/String;Z)V
    .locals 1
    .parameter "url"
    .parameter "runtime"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/browser/SemcBrowserCustomization$1;->this$0:Lcom/android/browser/SemcBrowserCustomization;

    invoke-static {v0, p1}, Lcom/android/browser/SemcBrowserCustomization;->access$302(Lcom/android/browser/SemcBrowserCustomization;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    iget-object v0, p0, Lcom/android/browser/SemcBrowserCustomization$1;->this$0:Lcom/android/browser/SemcBrowserCustomization;

    invoke-static {v0, p2}, Lcom/android/browser/SemcBrowserCustomization;->access$402(Lcom/android/browser/SemcBrowserCustomization;Z)Z

    .line 114
    return-void
.end method

.method public onNewSearchEngineSettingDisabled()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/browser/SemcBrowserCustomization$1;->this$0:Lcom/android/browser/SemcBrowserCustomization;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/browser/SemcBrowserCustomization;->access$502(Lcom/android/browser/SemcBrowserCustomization;Z)Z

    .line 119
    return-void
.end method

.method public onResult(I)V
    .locals 6
    .parameter "status"

    .prologue
    const/4 v4, 0x1

    const-string v5, "BrowserCustomization"

    .line 121
    if-nez p1, :cond_4

    .line 122
    iget-object v0, p0, Lcom/android/browser/SemcBrowserCustomization$1;->this$0:Lcom/android/browser/SemcBrowserCustomization;

    invoke-static {v0}, Lcom/android/browser/SemcBrowserCustomization;->access$300(Lcom/android/browser/SemcBrowserCustomization;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/browser/SemcBrowserCustomization$1;->this$0:Lcom/android/browser/SemcBrowserCustomization;

    iget-object v1, p0, Lcom/android/browser/SemcBrowserCustomization$1;->this$0:Lcom/android/browser/SemcBrowserCustomization;

    invoke-static {v1}, Lcom/android/browser/SemcBrowserCustomization;->access$600(Lcom/android/browser/SemcBrowserCustomization;)Lcom/android/browser/BrowserSettings;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/SemcBrowserCustomization$1;->this$0:Lcom/android/browser/SemcBrowserCustomization;

    invoke-static {v2}, Lcom/android/browser/SemcBrowserCustomization;->access$300(Lcom/android/browser/SemcBrowserCustomization;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/browser/SemcBrowserCustomization;->access$700(Lcom/android/browser/SemcBrowserCustomization;Lcom/android/browser/BrowserSettings;Ljava/lang/String;)V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/browser/SemcBrowserCustomization$1;->this$0:Lcom/android/browser/SemcBrowserCustomization;

    invoke-static {v0}, Lcom/android/browser/SemcBrowserCustomization;->access$500(Lcom/android/browser/SemcBrowserCustomization;)Z

    move-result v0

    if-ne v0, v4, :cond_1

    .line 126
    iget-object v0, p0, Lcom/android/browser/SemcBrowserCustomization$1;->this$0:Lcom/android/browser/SemcBrowserCustomization;

    iget-object v1, p0, Lcom/android/browser/SemcBrowserCustomization$1;->this$0:Lcom/android/browser/SemcBrowserCustomization;

    invoke-static {v1}, Lcom/android/browser/SemcBrowserCustomization;->access$600(Lcom/android/browser/SemcBrowserCustomization;)Lcom/android/browser/BrowserSettings;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/android/browser/SemcBrowserCustomization;->access$800(Lcom/android/browser/SemcBrowserCustomization;Lcom/android/browser/BrowserSettings;Z)V

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/android/browser/SemcBrowserCustomization$1;->this$0:Lcom/android/browser/SemcBrowserCustomization;

    invoke-static {v0}, Lcom/android/browser/SemcBrowserCustomization;->access$200(Lcom/android/browser/SemcBrowserCustomization;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 129
    iget-object v0, p0, Lcom/android/browser/SemcBrowserCustomization$1;->this$0:Lcom/android/browser/SemcBrowserCustomization;

    invoke-static {v0}, Lcom/android/browser/SemcBrowserCustomization;->access$900(Lcom/android/browser/SemcBrowserCustomization;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/SemcBrowserCustomization$1;->this$0:Lcom/android/browser/SemcBrowserCustomization;

    invoke-static {v1}, Lcom/android/browser/SemcBrowserCustomization;->access$200(Lcom/android/browser/SemcBrowserCustomization;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/browser/SemcBrowserBookmarkPolicy;->initializePolicy(Landroid/content/Context;Ljava/util/List;)V

    .line 130
    iget-object v0, p0, Lcom/android/browser/SemcBrowserCustomization$1;->this$0:Lcom/android/browser/SemcBrowserCustomization;

    iget-object v1, p0, Lcom/android/browser/SemcBrowserCustomization$1;->this$0:Lcom/android/browser/SemcBrowserCustomization;

    invoke-static {v1}, Lcom/android/browser/SemcBrowserCustomization;->access$900(Lcom/android/browser/SemcBrowserCustomization;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/SemcBrowserCustomization$1;->this$0:Lcom/android/browser/SemcBrowserCustomization;

    invoke-static {v2}, Lcom/android/browser/SemcBrowserCustomization;->access$600(Lcom/android/browser/SemcBrowserCustomization;)Lcom/android/browser/BrowserSettings;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/SemcBrowserCustomization$1;->this$0:Lcom/android/browser/SemcBrowserCustomization;

    invoke-static {v3}, Lcom/android/browser/SemcBrowserCustomization;->access$200(Lcom/android/browser/SemcBrowserCustomization;)Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/browser/SemcBrowserCustomization;->access$1000(Lcom/android/browser/SemcBrowserCustomization;Landroid/content/Context;Lcom/android/browser/BrowserSettings;Ljava/util/List;)V

    .line 132
    :cond_2
    iget-object v0, p0, Lcom/android/browser/SemcBrowserCustomization$1;->this$0:Lcom/android/browser/SemcBrowserCustomization;

    invoke-static {v0}, Lcom/android/browser/SemcBrowserCustomization;->access$1100(Lcom/android/browser/SemcBrowserCustomization;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 133
    iget-object v0, p0, Lcom/android/browser/SemcBrowserCustomization$1;->this$0:Lcom/android/browser/SemcBrowserCustomization;

    invoke-static {v0, v4}, Lcom/android/browser/SemcBrowserCustomization;->access$1102(Lcom/android/browser/SemcBrowserCustomization;Z)Z

    .line 134
    iget-object v0, p0, Lcom/android/browser/SemcBrowserCustomization$1;->this$0:Lcom/android/browser/SemcBrowserCustomization;

    invoke-static {v0}, Lcom/android/browser/SemcBrowserCustomization;->access$1200(Lcom/android/browser/SemcBrowserCustomization;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "initialized"

    iget-object v2, p0, Lcom/android/browser/SemcBrowserCustomization$1;->this$0:Lcom/android/browser/SemcBrowserCustomization;

    invoke-static {v2}, Lcom/android/browser/SemcBrowserCustomization;->access$1100(Lcom/android/browser/SemcBrowserCustomization;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 135
    iget-object v0, p0, Lcom/android/browser/SemcBrowserCustomization$1;->this$0:Lcom/android/browser/SemcBrowserCustomization;

    invoke-static {v0}, Lcom/android/browser/SemcBrowserCustomization;->access$1200(Lcom/android/browser/SemcBrowserCustomization;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 137
    :cond_3
    const-string v0, "BrowserCustomization"

    const-string v0, "onResult CUSTOMIZATION OK"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :goto_0
    iget-object v0, p0, Lcom/android/browser/SemcBrowserCustomization$1;->this$0:Lcom/android/browser/SemcBrowserCustomization;

    invoke-static {v0}, Lcom/android/browser/SemcBrowserCustomization;->access$1300(Lcom/android/browser/SemcBrowserCustomization;)V

    .line 143
    return-void

    .line 140
    :cond_4
    const-string v0, "BrowserCustomization"

    const-string v0, "onResult CUSTOMIZATION REJECTED"

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onVersion(I)Z
    .locals 2
    .parameter "version"

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, done:Z
    iget-object v1, p0, Lcom/android/browser/SemcBrowserCustomization$1;->this$0:Lcom/android/browser/SemcBrowserCustomization;

    invoke-static {v1}, Lcom/android/browser/SemcBrowserCustomization;->access$000(Lcom/android/browser/SemcBrowserCustomization;)I

    move-result v1

    if-lt v1, p1, :cond_0

    .line 98
    const/4 v0, 0x1

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/android/browser/SemcBrowserCustomization$1;->this$0:Lcom/android/browser/SemcBrowserCustomization;

    invoke-static {v1, p1}, Lcom/android/browser/SemcBrowserCustomization;->access$102(Lcom/android/browser/SemcBrowserCustomization;I)I

    .line 102
    return v0
.end method
