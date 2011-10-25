.class public interface abstract Lcom/android/browser/SemcBrowserCustomizationParser$ParserListener;
.super Ljava/lang/Object;
.source "SemcBrowserCustomizationParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/SemcBrowserCustomizationParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ParserListener"
.end annotation


# virtual methods
.method public abstract onNewBookmark(Lcom/android/browser/SemcBrowserCustomizationParser$BookmarkItem;)V
.end method

.method public abstract onNewHomepage(Ljava/lang/String;Z)V
.end method

.method public abstract onNewSearchEngineSettingDisabled()V
.end method

.method public abstract onResult(I)V
.end method

.method public abstract onVersion(I)Z
.end method
