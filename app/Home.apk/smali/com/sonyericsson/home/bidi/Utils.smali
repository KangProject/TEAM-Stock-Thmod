.class public Lcom/sonyericsson/home/bidi/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static sLeftToRightField:I

.field private static sReflectionOk:Z

.field private static sRtlAlphabetField:I

.field private static sSetDirectionalityMethod:Ljava/lang/reflect/Method;

.field private static sThemeBidiDialogAlert:I

.field private static sThemeDialogAlert:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const-class v1, Landroid/view/ViewGroup;

    const-string v1, "com.android.internal.R$style"

    .line 68
    :try_start_0
    const-class v1, Landroid/view/ViewGroup;

    const-string v2, "setDirectionality"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/sonyericsson/home/bidi/Utils;->sSetDirectionalityMethod:Ljava/lang/reflect/Method;

    .line 71
    const-class v1, Landroid/view/ViewGroup;

    const-string v2, "DIRECTIONALITY_LEFT_TO_RIGHT"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    sput v1, Lcom/sonyericsson/home/bidi/Utils;->sLeftToRightField:I

    .line 73
    const-string v1, "com.android.internal.R$bool"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "alphabet_isRtl"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    sput v1, Lcom/sonyericsson/home/bidi/Utils;->sRtlAlphabetField:I

    .line 75
    const-string v1, "com.android.internal.R$style"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "BidiDialogAlert"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    sput v1, Lcom/sonyericsson/home/bidi/Utils;->sThemeBidiDialogAlert:I

    .line 77
    const-string v1, "com.android.internal.R$style"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Theme_Dialog_Alert"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    sput v1, Lcom/sonyericsson/home/bidi/Utils;->sThemeDialogAlert:I

    .line 79
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sonyericsson/home/bidi/Utils;->sReflectionOk:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5

    .line 93
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 81
    .local v0, e:Ljava/lang/SecurityException;
    sput-boolean v6, Lcom/sonyericsson/home/bidi/Utils;->sReflectionOk:Z

    goto :goto_0

    .line 82
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 83
    .local v0, e:Ljava/lang/NoSuchMethodException;
    sput-boolean v6, Lcom/sonyericsson/home/bidi/Utils;->sReflectionOk:Z

    goto :goto_0

    .line 84
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    move-object v0, v1

    .line 85
    .local v0, e:Ljava/lang/NoSuchFieldException;
    sput-boolean v6, Lcom/sonyericsson/home/bidi/Utils;->sReflectionOk:Z

    goto :goto_0

    .line 86
    .end local v0           #e:Ljava/lang/NoSuchFieldException;
    :catch_3
    move-exception v1

    move-object v0, v1

    .line 87
    .local v0, e:Ljava/lang/IllegalArgumentException;
    sput-boolean v6, Lcom/sonyericsson/home/bidi/Utils;->sReflectionOk:Z

    goto :goto_0

    .line 88
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v1

    move-object v0, v1

    .line 89
    .local v0, e:Ljava/lang/IllegalAccessException;
    sput-boolean v6, Lcom/sonyericsson/home/bidi/Utils;->sReflectionOk:Z

    goto :goto_0

    .line 90
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_5
    move-exception v1

    move-object v0, v1

    .line 91
    .local v0, e:Ljava/lang/ClassNotFoundException;
    sput-boolean v6, Lcom/sonyericsson/home/bidi/Utils;->sReflectionOk:Z

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static final getDialogAlertThemeStyle(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, retVal:I
    sget-boolean v1, Lcom/sonyericsson/home/bidi/Utils;->sReflectionOk:Z

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/sonyericsson/home/bidi/Utils;->isRtlAlphabet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    sget v0, Lcom/sonyericsson/home/bidi/Utils;->sThemeBidiDialogAlert:I

    .line 148
    :goto_0
    return v0

    .line 146
    :cond_0
    sget v0, Lcom/sonyericsson/home/bidi/Utils;->sThemeDialogAlert:I

    goto :goto_0
.end method

.method public static final isRtlAlphabet(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 122
    const/4 v1, 0x0

    .line 123
    .local v1, retVal:Z
    sget-boolean v2, Lcom/sonyericsson/home/bidi/Utils;->sReflectionOk:Z

    if-eqz v2, :cond_0

    .line 125
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sonyericsson/home/bidi/Utils;->sRtlAlphabetField:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 130
    :cond_0
    :goto_0
    return v1

    .line 126
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 127
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    const-string v2, "Bidi"

    const-string v3, "Get rtl alphabet resource failed"

    invoke-static {v2, v3, v0}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static final setDirectionalityLeftToRight(Landroid/view/ViewGroup;)V
    .locals 7
    .parameter "viewGroup"

    .prologue
    const-string v6, "Set directionality failed"

    const-string v5, "Bidi"

    .line 102
    sget-boolean v1, Lcom/sonyericsson/home/bidi/Utils;->sReflectionOk:Z

    if-eqz v1, :cond_0

    .line 104
    :try_start_0
    sget-object v1, Lcom/sonyericsson/home/bidi/Utils;->sSetDirectionalityMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget v4, Lcom/sonyericsson/home/bidi/Utils;->sLeftToRightField:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 106
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "Bidi"

    const-string v1, "Set directionality failed"

    invoke-static {v5, v6, v0}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 107
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 108
    .local v0, e:Ljava/lang/IllegalAccessException;
    const-string v1, "Bidi"

    const-string v1, "Set directionality failed"

    invoke-static {v5, v6, v0}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 109
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    move-object v0, v1

    .line 110
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v1, "Bidi"

    const-string v1, "Set directionality failed"

    invoke-static {v5, v6, v0}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
