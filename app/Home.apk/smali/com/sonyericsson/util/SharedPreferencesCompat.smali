.class public Lcom/sonyericsson/util/SharedPreferencesCompat;
.super Ljava/lang/Object;
.source "SharedPreferencesCompat.java"


# static fields
.field private static final sApplyMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/sonyericsson/util/SharedPreferencesCompat;->findApplyMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/util/SharedPreferencesCompat;->sApplyMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(Landroid/content/SharedPreferences$Editor;)V
    .locals 2
    .parameter "editor"

    .prologue
    .line 44
    sget-object v0, Lcom/sonyericsson/util/SharedPreferencesCompat;->sApplyMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 46
    :try_start_0
    sget-object v0, Lcom/sonyericsson/util/SharedPreferencesCompat;->sApplyMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 54
    :cond_0
    :goto_1
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 48
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private static findApplyMethod()Ljava/lang/reflect/Method;
    .locals 3

    .prologue
    .line 35
    :try_start_0
    const-class v0, Landroid/content/SharedPreferences$Editor;

    .line 36
    .local v0, cls:Ljava/lang/Class;,"Ljava/lang/Class<Landroid/content/SharedPreferences$Editor;>;"
    const-string v1, "apply"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 40
    .end local v0           #cls:Ljava/lang/Class;,"Ljava/lang/Class<Landroid/content/SharedPreferences$Editor;>;"
    :goto_0
    return-object v1

    .line 37
    :catch_0
    move-exception v1

    .line 40
    const/4 v1, 0x0

    goto :goto_0
.end method
