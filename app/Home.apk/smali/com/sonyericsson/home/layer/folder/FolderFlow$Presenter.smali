.class public interface abstract Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;
.super Ljava/lang/Object;
.source "FolderFlow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/layer/folder/FolderFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# static fields
.field public static final SCROLL_DOWN:I = 0x2

.field public static final SCROLL_STOPPED:I = 0x0

.field public static final SCROLL_UP:I = 0x1


# virtual methods
.method public abstract getContentGlobalVisibleRect(Landroid/graphics/Rect;)V
.end method

.method public abstract getFolderGlobalVisibleRect(Landroid/graphics/Rect;)V
.end method

.method public abstract getItem(I)Lcom/sonyericsson/home/data/Info;
.end method

.method public abstract getOpenFolderIconHeight()I
.end method

.method public abstract getOpenFolderIconWidth()I
.end method

.method public abstract getScrollOffset()I
.end method

.method public abstract getScrollViewHeight()I
.end method

.method public abstract hide(Z)V
.end method

.method public abstract notifyDataSetChanged()V
.end method

.method public abstract requestFocus()Z
.end method

.method public abstract setLockScrollbarRange(Z)V
.end method

.method public abstract setOpenFolderIcon(I)V
.end method

.method public abstract setScroll(I)V
.end method

.method public abstract setTitle(Ljava/lang/String;)V
.end method

.method public abstract show(Landroid/graphics/Rect;IZ)V
.end method

.method public abstract transferView(Landroid/view/View;)V
.end method
