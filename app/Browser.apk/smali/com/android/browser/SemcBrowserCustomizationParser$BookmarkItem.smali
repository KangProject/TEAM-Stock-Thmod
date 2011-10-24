.class public Lcom/android/browser/SemcBrowserCustomizationParser$BookmarkItem;
.super Ljava/lang/Object;
.source "SemcBrowserCustomizationParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/SemcBrowserCustomizationParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BookmarkItem"
.end annotation


# instance fields
.field private mEditable:Z

.field private mRuntime:Z

.field private mTitle:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object v1, p0, Lcom/android/browser/SemcBrowserCustomizationParser$BookmarkItem;->mTitle:Ljava/lang/String;

    .line 76
    iput-object v1, p0, Lcom/android/browser/SemcBrowserCustomizationParser$BookmarkItem;->mUrl:Ljava/lang/String;

    .line 77
    iput-boolean v0, p0, Lcom/android/browser/SemcBrowserCustomizationParser$BookmarkItem;->mEditable:Z

    .line 78
    iput-boolean v0, p0, Lcom/android/browser/SemcBrowserCustomizationParser$BookmarkItem;->mRuntime:Z

    .line 79
    return-void
.end method


# virtual methods
.method public getRuntime()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/browser/SemcBrowserCustomizationParser$BookmarkItem;->mRuntime:Z

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/browser/SemcBrowserCustomizationParser$BookmarkItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/browser/SemcBrowserCustomizationParser$BookmarkItem;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isEditable()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/browser/SemcBrowserCustomizationParser$BookmarkItem;->mEditable:Z

    return v0
.end method

.method public setEditable(Z)V
    .locals 0
    .parameter "e"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/browser/SemcBrowserCustomizationParser$BookmarkItem;->mEditable:Z

    .line 87
    return-void
.end method

.method public setRuntime(Z)V
    .locals 0
    .parameter "r"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/android/browser/SemcBrowserCustomizationParser$BookmarkItem;->mRuntime:Z

    .line 95
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/browser/SemcBrowserCustomizationParser$BookmarkItem;->mTitle:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/browser/SemcBrowserCustomizationParser$BookmarkItem;->mUrl:Ljava/lang/String;

    .line 111
    return-void
.end method
