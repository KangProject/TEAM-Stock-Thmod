.class public Landroid/text/InputFilter$AllCaps;
.super Ljava/lang/Object;
.source "InputFilter.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/InputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AllCaps"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 10
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 56
    move v7, p2

    .local v7, i:I
    :goto_0
    if-ge v7, p3, :cond_2

    .line 57
    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    sub-int v1, p3, p2

    new-array v9, v1, [C

    .line 59
    .local v9, v:[C
    invoke-static {p1, p2, p3, v9, v6}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 60
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v9}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    .line 62
    .local v8, s:Ljava/lang/String;
    instance-of v1, p1, Landroid/text/Spanned;

    if-eqz v1, :cond_0

    .line 63
    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 64
    .local v5, sp:Landroid/text/SpannableString;
    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    move-object v1, v0

    move v2, p2

    move v3, p3

    invoke-static/range {v1 .. v6}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    move-object v1, v5

    .line 73
    .end local v5           #sp:Landroid/text/SpannableString;
    .end local v8           #s:Ljava/lang/String;
    .end local v9           #v:[C
    :goto_1
    return-object v1

    .restart local v8       #s:Ljava/lang/String;
    .restart local v9       #v:[C
    :cond_0
    move-object v1, v8

    .line 68
    goto :goto_1

    .line 56
    .end local v8           #s:Ljava/lang/String;
    .end local v9           #v:[C
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    move-object v1, v4

    .line 73
    goto :goto_1
.end method
