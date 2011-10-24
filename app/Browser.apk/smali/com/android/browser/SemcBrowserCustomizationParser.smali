.class public Lcom/android/browser/SemcBrowserCustomizationParser;
.super Ljava/lang/Object;
.source "SemcBrowserCustomizationParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/SemcBrowserCustomizationParser$1;,
        Lcom/android/browser/SemcBrowserCustomizationParser$ParserThread;,
        Lcom/android/browser/SemcBrowserCustomizationParser$BookmarkItem;,
        Lcom/android/browser/SemcBrowserCustomizationParser$ParserListener;
    }
.end annotation


# instance fields
.field private mCurrentBookmarkItem:Lcom/android/browser/SemcBrowserCustomizationParser$BookmarkItem;

.field private mCurrentEvent:I

.field private final mParseResultListener:Lcom/android/browser/SemcBrowserCustomizationParser$ParserListener;

.field private final mParser:Lorg/xmlpull/v1/XmlPullParser;

.field private mVersionFound:Z


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/browser/SemcBrowserCustomizationParser$ParserListener;)V
    .locals 1
    .parameter "p"
    .parameter "result"

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/android/browser/SemcBrowserCustomizationParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 116
    iput-object p2, p0, Lcom/android/browser/SemcBrowserCustomizationParser;->mParseResultListener:Lcom/android/browser/SemcBrowserCustomizationParser$ParserListener;

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/SemcBrowserCustomizationParser;->mVersionFound:Z

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/SemcBrowserCustomizationParser;->mCurrentBookmarkItem:Lcom/android/browser/SemcBrowserCustomizationParser$BookmarkItem;

    .line 119
    return-void
.end method

.method static synthetic access$100(Lcom/android/browser/SemcBrowserCustomizationParser;)Lorg/xmlpull/v1/XmlPullParser;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/browser/SemcBrowserCustomizationParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/browser/SemcBrowserCustomizationParser;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/android/browser/SemcBrowserCustomizationParser;->mCurrentEvent:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/browser/SemcBrowserCustomizationParser;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput p1, p0, Lcom/android/browser/SemcBrowserCustomizationParser;->mCurrentEvent:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/browser/SemcBrowserCustomizationParser;)Lcom/android/browser/SemcBrowserCustomizationParser$ParserListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/browser/SemcBrowserCustomizationParser;->mParseResultListener:Lcom/android/browser/SemcBrowserCustomizationParser$ParserListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/browser/SemcBrowserCustomizationParser;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/android/browser/SemcBrowserCustomizationParser;->mVersionFound:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/browser/SemcBrowserCustomizationParser;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/android/browser/SemcBrowserCustomizationParser;->mVersionFound:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/browser/SemcBrowserCustomizationParser;)Lcom/android/browser/SemcBrowserCustomizationParser$BookmarkItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/browser/SemcBrowserCustomizationParser;->mCurrentBookmarkItem:Lcom/android/browser/SemcBrowserCustomizationParser$BookmarkItem;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/browser/SemcBrowserCustomizationParser;Lcom/android/browser/SemcBrowserCustomizationParser$BookmarkItem;)Lcom/android/browser/SemcBrowserCustomizationParser$BookmarkItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/android/browser/SemcBrowserCustomizationParser;->mCurrentBookmarkItem:Lcom/android/browser/SemcBrowserCustomizationParser$BookmarkItem;

    return-object p1
.end method


# virtual methods
.method public runCustomization()V
    .locals 3

    .prologue
    .line 122
    new-instance v0, Lcom/android/browser/SemcBrowserCustomizationParser$ParserThread;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/browser/SemcBrowserCustomizationParser$ParserThread;-><init>(Lcom/android/browser/SemcBrowserCustomizationParser;Lcom/android/browser/SemcBrowserCustomizationParser$1;)V

    .line 123
    .local v0, myParser:Lcom/android/browser/SemcBrowserCustomizationParser$ParserThread;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 124
    .local v1, runner:Ljava/lang/Thread;
    const-string v2, "BrowserCustomizationParser"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 126
    return-void
.end method
