.class Lcom/android/server/WallpaperManagerService;
.super Landroid/app/IWallpaperManager$Stub;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WallpaperManagerService$MyPackageMonitor;,
        Lcom/android/server/WallpaperManagerService$WallpaperConnection;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final MIN_WALLPAPER_CRASH_TIME:J = 0x2710L

.field static final TAG:Ljava/lang/String; = "WallpaperService"

.field static final WALLPAPER:Ljava/lang/String; = "wallpaper"

.field static final WALLPAPER_DIR:Ljava/io/File;

.field static final WALLPAPER_FILE:Ljava/io/File;


# instance fields
.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/app/IWallpaperManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field mHeight:I

.field final mIWindowManager:Landroid/view/IWindowManager;

.field mImageWallpaperComponent:Landroid/content/ComponentName;

.field mLastDiedTime:J

.field mLock:Ljava/lang/Object;

.field final mMonitor:Lcom/android/server/WallpaperManagerService$MyPackageMonitor;

.field mName:Ljava/lang/String;

.field mNextWallpaperComponent:Landroid/content/ComponentName;

.field mWallpaperComponent:Landroid/content/ComponentName;

.field mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

.field private final mWallpaperObserver:Landroid/os/FileObserver;

.field mWallpaperUpdating:Z

.field mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 88
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.android.settings/files"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/WallpaperManagerService;->WALLPAPER_DIR:Ljava/io/File;

    .line 91
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/WallpaperManagerService;->WALLPAPER_DIR:Ljava/io/File;

    const-string v2, "wallpaper"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/WallpaperManagerService;->WALLPAPER_FILE:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, -0x1

    .line 295
    invoke-direct {p0}, Landroid/app/IWallpaperManager$Stub;-><init>()V

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    .line 97
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 106
    new-instance v0, Lcom/android/server/WallpaperManagerService$1;

    sget-object v1, Lcom/android/server/WallpaperManagerService;->WALLPAPER_DIR:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x708

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/WallpaperManagerService$1;-><init>(Lcom/android/server/WallpaperManagerService;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperObserver:Landroid/os/FileObserver;

    .line 132
    iput v3, p0, Lcom/android/server/WallpaperManagerService;->mWidth:I

    .line 133
    iput v3, p0, Lcom/android/server/WallpaperManagerService;->mHeight:I

    .line 138
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;

    .line 154
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android"

    const-class v2, Lcom/android/internal/service/wallpaper/ImageWallpaper;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService;->mImageWallpaperComponent:Landroid/content/ComponentName;

    .line 297
    iput-object p1, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    .line 298
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    .line 300
    new-instance v0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;

    invoke-direct {v0, p0}, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;-><init>(Lcom/android/server/WallpaperManagerService;)V

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService;->mMonitor:Lcom/android/server/WallpaperManagerService$MyPackageMonitor;

    .line 301
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mMonitor:Lcom/android/server/WallpaperManagerService$MyPackageMonitor;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->register(Landroid/content/Context;Z)V

    .line 302
    sget-object v0, Lcom/android/server/WallpaperManagerService;->WALLPAPER_DIR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 303
    invoke-direct {p0}, Lcom/android/server/WallpaperManagerService;->loadSettingsLocked()V

    .line 304
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    .line 305
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/WallpaperManagerService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/server/WallpaperManagerService;->notifyCallbacksLocked()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/WallpaperManagerService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/server/WallpaperManagerService;->saveSettingsLocked()V

    return-void
.end method

.method private checkPermission(Ljava/lang/String;)V
    .registers 5
    .parameter "permission"

    .prologue
    .line 624
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2f

    .line 625
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Access denied to process: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", must have permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 628
    :cond_2f
    return-void
.end method

.method private loadSettingsLocked()V
    .registers 14

    .prologue
    .line 672
    invoke-static {}, Lcom/android/server/WallpaperManagerService;->makeJournaledFile()Lcom/android/internal/util/JournaledFile;

    move-result-object v3

    .line 673
    .local v3, journal:Lcom/android/internal/util/JournaledFile;
    const/4 v5, 0x0

    .line 674
    .local v5, stream:Ljava/io/FileInputStream;
    invoke-virtual {v3}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v2

    .line 675
    .local v2, file:Ljava/io/File;
    const/4 v7, 0x0

    .line 677
    .local v7, success:Z
    :try_start_a
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_f} :catch_75
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_f} :catch_9a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_f} :catch_bf
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_f} :catch_e5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_f} :catch_10b

    .line 678
    .end local v5           #stream:Ljava/io/FileInputStream;
    .local v6, stream:Ljava/io/FileInputStream;
    :try_start_f
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 679
    .local v4, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v10, 0x0

    invoke-interface {v4, v6, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 683
    :cond_17
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    .line 684
    .local v9, type:I
    const/4 v10, 0x2

    if-ne v9, v10, :cond_5c

    .line 685
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 686
    .local v8, tag:Ljava/lang/String;
    const-string v10, "wp"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5c

    .line 687
    const/4 v10, 0x0

    const-string v11, "width"

    invoke-interface {v4, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/android/server/WallpaperManagerService;->mWidth:I

    .line 688
    const/4 v10, 0x0

    const-string v11, "height"

    invoke-interface {v4, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/android/server/WallpaperManagerService;->mHeight:I

    .line 689
    const/4 v10, 0x0

    const-string v11, "name"

    invoke-interface {v4, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;

    .line 690
    const/4 v10, 0x0

    const-string v11, "component"

    invoke-interface {v4, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 691
    .local v0, comp:Ljava/lang/String;
    if-eqz v0, :cond_73

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v10

    :goto_5a
    iput-object v10, p0, Lcom/android/server/WallpaperManagerService;->mNextWallpaperComponent:Landroid/content/ComponentName;
    :try_end_5c
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_5c} :catch_145
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_5c} :catch_140
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_5c} :catch_13c
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_5c} :catch_138
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_f .. :try_end_5c} :catch_134

    .line 703
    .end local v0           #comp:Ljava/lang/String;
    .end local v8           #tag:Ljava/lang/String;
    :cond_5c
    const/4 v10, 0x1

    if-ne v9, v10, :cond_17

    .line 704
    const/4 v7, 0x1

    move-object v5, v6

    .line 717
    .end local v4           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v6           #stream:Ljava/io/FileInputStream;
    .end local v9           #type:I
    .restart local v5       #stream:Ljava/io/FileInputStream;
    :goto_61
    if-eqz v5, :cond_66

    .line 718
    :try_start_63
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_131

    .line 724
    :cond_66
    :goto_66
    if-nez v7, :cond_72

    .line 725
    const/4 v10, -0x1

    iput v10, p0, Lcom/android/server/WallpaperManagerService;->mWidth:I

    .line 726
    const/4 v10, -0x1

    iput v10, p0, Lcom/android/server/WallpaperManagerService;->mHeight:I

    .line 727
    const-string v10, ""

    iput-object v10, p0, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;

    .line 729
    :cond_72
    return-void

    .line 691
    .end local v5           #stream:Ljava/io/FileInputStream;
    .restart local v0       #comp:Ljava/lang/String;
    .restart local v4       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    .restart local v8       #tag:Ljava/lang/String;
    .restart local v9       #type:I
    :cond_73
    const/4 v10, 0x0

    goto :goto_5a

    .line 705
    .end local v0           #comp:Ljava/lang/String;
    .end local v4           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v6           #stream:Ljava/io/FileInputStream;
    .end local v8           #tag:Ljava/lang/String;
    .end local v9           #type:I
    .restart local v5       #stream:Ljava/io/FileInputStream;
    :catch_75
    move-exception v10

    move-object v1, v10

    .line 706
    .local v1, e:Ljava/lang/NullPointerException;
    :goto_77
    const-string v10, "WallpaperService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "failed parsing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61

    .line 707
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_9a
    move-exception v10

    move-object v1, v10

    .line 708
    .local v1, e:Ljava/lang/NumberFormatException;
    :goto_9c
    const-string v10, "WallpaperService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "failed parsing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61

    .line 709
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :catch_bf
    move-exception v10

    move-object v1, v10

    .line 710
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_c1
    const-string v10, "WallpaperService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "failed parsing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_61

    .line 711
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_e5
    move-exception v10

    move-object v1, v10

    .line 712
    .local v1, e:Ljava/io/IOException;
    :goto_e7
    const-string v10, "WallpaperService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "failed parsing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_61

    .line 713
    .end local v1           #e:Ljava/io/IOException;
    :catch_10b
    move-exception v10

    move-object v1, v10

    .line 714
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    :goto_10d
    const-string v10, "WallpaperService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "failed parsing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_61

    .line 720
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_131
    move-exception v10

    goto/16 :goto_66

    .line 713
    .end local v5           #stream:Ljava/io/FileInputStream;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    :catch_134
    move-exception v10

    move-object v1, v10

    move-object v5, v6

    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    goto :goto_10d

    .line 711
    .end local v5           #stream:Ljava/io/FileInputStream;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    :catch_138
    move-exception v10

    move-object v1, v10

    move-object v5, v6

    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    goto :goto_e7

    .line 709
    .end local v5           #stream:Ljava/io/FileInputStream;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    :catch_13c
    move-exception v10

    move-object v1, v10

    move-object v5, v6

    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    goto :goto_c1

    .line 707
    .end local v5           #stream:Ljava/io/FileInputStream;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    :catch_140
    move-exception v10

    move-object v1, v10

    move-object v5, v6

    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    goto/16 :goto_9c

    .line 705
    .end local v5           #stream:Ljava/io/FileInputStream;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    :catch_145
    move-exception v10

    move-object v1, v10

    move-object v5, v6

    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    goto/16 :goto_77
.end method

.method private static makeJournaledFile()Lcom/android/internal/util/JournaledFile;
    .registers 5

    .prologue
    .line 631
    const-string v0, "/data/system/wallpaper_info.xml"

    .line 632
    .local v0, base:Ljava/lang/String;
    new-instance v1, Lcom/android/internal/util/JournaledFile;

    new-instance v2, Ljava/io/File;

    const-string v3, "/data/system/wallpaper_info.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    const-string v4, "/data/system/wallpaper_info.xml.tmp"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object v1
.end method

.method private notifyCallbacksLocked()V
    .registers 5

    .prologue
    .line 608
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 609
    .local v2, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    if-ge v0, v2, :cond_17

    .line 611
    :try_start_9
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/app/IWallpaperManagerCallback;

    invoke-interface {v3}, Landroid/app/IWallpaperManagerCallback;->onWallpaperChanged()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_29

    .line 609
    :goto_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 618
    :cond_17
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 619
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 620
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 621
    return-void

    .line 612
    .end local v1           #intent:Landroid/content/Intent;
    :catch_29
    move-exception v3

    goto :goto_14
.end method

.method private saveSettingsLocked()V
    .registers 9

    .prologue
    const-string v5, "wp"

    .line 636
    invoke-static {}, Lcom/android/server/WallpaperManagerService;->makeJournaledFile()Lcom/android/internal/util/JournaledFile;

    move-result-object v1

    .line 637
    .local v1, journal:Lcom/android/internal/util/JournaledFile;
    const/4 v3, 0x0

    .line 639
    .local v3, stream:Ljava/io/FileOutputStream;
    :try_start_7
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_11} :catch_6b

    .line 640
    .end local v3           #stream:Ljava/io/FileOutputStream;
    .local v4, stream:Ljava/io/FileOutputStream;
    :try_start_11
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 641
    .local v2, out:Lorg/xmlpull/v1/XmlSerializer;
    const-string v5, "utf-8"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 642
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 644
    const/4 v5, 0x0

    const-string v6, "wp"

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 645
    const/4 v5, 0x0

    const-string v6, "width"

    iget v7, p0, Lcom/android/server/WallpaperManagerService;->mWidth:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 646
    const/4 v5, 0x0

    const-string v6, "height"

    iget v7, p0, Lcom/android/server/WallpaperManagerService;->mHeight:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 647
    const/4 v5, 0x0

    const-string v6, "name"

    iget-object v7, p0, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 648
    iget-object v5, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v5, :cond_5a

    .line 649
    const/4 v5, 0x0

    const-string v6, "component"

    iget-object v7, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 652
    :cond_5a
    const/4 v5, 0x0

    const-string v6, "wp"

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 654
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 655
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 656
    invoke-virtual {v1}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_69} :catch_78

    move-object v3, v4

    .line 667
    .end local v2           #out:Lorg/xmlpull/v1/XmlSerializer;
    .end local v4           #stream:Ljava/io/FileOutputStream;
    .restart local v3       #stream:Ljava/io/FileOutputStream;
    :goto_6a
    return-void

    .line 657
    :catch_6b
    move-exception v5

    move-object v0, v5

    .line 659
    .local v0, e:Ljava/io/IOException;
    :goto_6d
    if-eqz v3, :cond_72

    .line 660
    :try_start_6f
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_76

    .line 665
    :cond_72
    :goto_72
    invoke-virtual {v1}, Lcom/android/internal/util/JournaledFile;->rollback()V

    goto :goto_6a

    .line 662
    :catch_76
    move-exception v5

    goto :goto_72

    .line 657
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #stream:Ljava/io/FileOutputStream;
    .restart local v4       #stream:Ljava/io/FileOutputStream;
    :catch_78
    move-exception v5

    move-object v0, v5

    move-object v3, v4

    .end local v4           #stream:Ljava/io/FileOutputStream;
    .restart local v3       #stream:Ljava/io/FileOutputStream;
    goto :goto_6d
.end method


# virtual methods
.method attachServiceLocked(Lcom/android/server/WallpaperManagerService$WallpaperConnection;)V
    .registers 10
    .parameter "conn"

    .prologue
    .line 596
    :try_start_0
    iget-object v0, p1, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    iget-object v2, p1, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    const/16 v3, 0x7dd

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/server/WallpaperManagerService;->mWidth:I

    iget v6, p0, Lcom/android/server/WallpaperManagerService;->mHeight:I

    move-object v1, p1

    invoke-interface/range {v0 .. v6}, Landroid/service/wallpaper/IWallpaperService;->attach(Landroid/service/wallpaper/IWallpaperConnection;Landroid/os/IBinder;IZII)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 605
    :cond_f
    :goto_f
    return-void

    .line 599
    :catch_10
    move-exception v0

    move-object v7, v0

    .line 600
    .local v7, e:Landroid/os/RemoteException;
    const-string v0, "WallpaperService"

    const-string v1, "Failed attaching wallpaper; clearing"

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 601
    iget-boolean v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperUpdating:Z

    if-nez v0, :cond_f

    .line 602
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;)V

    goto :goto_f
.end method

.method bindWallpaperComponentLocked(Landroid/content/ComponentName;)V
    .registers 20
    .parameter "componentName"

    .prologue
    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    move-object v12, v0

    if-eqz v12, :cond_1f

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mWallpaperComponent:Landroid/content/ComponentName;

    move-object v12, v0

    if-nez v12, :cond_11

    .line 477
    if-nez p1, :cond_1f

    .line 572
    :cond_10
    :goto_10
    return-void

    .line 482
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mWallpaperComponent:Landroid/content/ComponentName;

    move-object v12, v0

    move-object v0, v12

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_10

    .line 490
    :cond_1f
    if-nez p1, :cond_3b

    .line 491
    :try_start_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    move-object v12, v0

    const v13, 0x1040018

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 493
    .local v3, defaultComponent:Ljava/lang/String;
    if-eqz v3, :cond_33

    .line 495
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    .line 498
    :cond_33
    if-nez p1, :cond_3b

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mImageWallpaperComponent:Landroid/content/ComponentName;

    move-object/from16 p1, v0

    .line 506
    .end local v3           #defaultComponent:Ljava/lang/String;
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    move-object v12, v0

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const/16 v13, 0x1080

    move-object v0, v12

    move-object/from16 v1, p1

    move v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v10

    .line 508
    .local v10, si:Landroid/content/pm/ServiceInfo;
    const-string v12, "android.permission.BIND_WALLPAPER"

    iget-object v13, v10, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_92

    .line 509
    new-instance v12, Ljava/lang/SecurityException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Selected service does not require android.permission.BIND_WALLPAPER: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_74
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_21 .. :try_end_74} :catch_74

    .line 569
    .end local v10           #si:Landroid/content/pm/ServiceInfo;
    :catch_74
    move-exception v12

    move-object v4, v12

    .line 570
    .local v4, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unknown component "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 514
    .end local v4           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v10       #si:Landroid/content/pm/ServiceInfo;
    :cond_92
    const/4 v11, 0x0

    .line 516
    .local v11, wi:Landroid/app/WallpaperInfo;
    :try_start_93
    new-instance v6, Landroid/content/Intent;

    const-string v12, "android.service.wallpaper.WallpaperService"

    invoke-direct {v6, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 517
    .local v6, intent:Landroid/content/Intent;
    if-eqz p1, :cond_11d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mImageWallpaperComponent:Landroid/content/ComponentName;

    move-object v12, v0

    move-object/from16 v0, p1

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_11d

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    move-object v12, v0

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const/16 v13, 0x80

    invoke-virtual {v12, v6, v13}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 521
    .local v8, ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v5, 0x0

    .local v5, i:I
    :goto_ba
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-ge v5, v12, :cond_ec

    .line 522
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v9, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 523
    .local v9, rsi:Landroid/content/pm/ServiceInfo;
    iget-object v12, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget-object v13, v10, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11a

    iget-object v12, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v13, v10, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_d9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_93 .. :try_end_d9} :catch_74

    move-result v12

    if-eqz v12, :cond_11a

    .line 526
    :try_start_dc
    new-instance v11, Landroid/app/WallpaperInfo;

    .end local v11           #wi:Landroid/app/WallpaperInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    move-object v12, v0

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {v11, v12, v3}, Landroid/app/WallpaperInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_ec
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_dc .. :try_end_ec} :catch_10a
    .catch Ljava/io/IOException; {:try_start_dc .. :try_end_ec} :catch_112
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_dc .. :try_end_ec} :catch_74

    .line 535
    .end local v9           #rsi:Landroid/content/pm/ServiceInfo;
    .restart local v11       #wi:Landroid/app/WallpaperInfo;
    :cond_ec
    if-nez v11, :cond_11d

    .line 536
    :try_start_ee
    new-instance v12, Ljava/lang/SecurityException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Selected service is not a wallpaper: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 527
    .end local v11           #wi:Landroid/app/WallpaperInfo;
    .restart local v9       #rsi:Landroid/content/pm/ServiceInfo;
    :catch_10a
    move-exception v12

    move-object v4, v12

    .line 528
    .local v4, e:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v12, Ljava/lang/IllegalArgumentException;

    invoke-direct {v12, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v12

    .line 529
    .end local v4           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_112
    move-exception v12

    move-object v4, v12

    .line 530
    .local v4, e:Ljava/io/IOException;
    new-instance v12, Ljava/lang/IllegalArgumentException;

    invoke-direct {v12, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v12

    .line 521
    .end local v4           #e:Ljava/io/IOException;
    .restart local v11       #wi:Landroid/app/WallpaperInfo;
    :cond_11a
    add-int/lit8 v5, v5, 0x1

    goto :goto_ba

    .line 543
    .end local v5           #i:I
    .end local v8           #ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v9           #rsi:Landroid/content/pm/ServiceInfo;
    :cond_11d
    new-instance v7, Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object v2, v11

    invoke-direct {v0, v1, v2}, Lcom/android/server/WallpaperManagerService$WallpaperConnection;-><init>(Lcom/android/server/WallpaperManagerService;Landroid/app/WallpaperInfo;)V

    .line 544
    .local v7, newConn:Lcom/android/server/WallpaperManagerService$WallpaperConnection;
    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 545
    const-string v12, "android.intent.extra.client_label"

    const v13, 0x1040395

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 547
    const-string v12, "android.intent.extra.client_intent"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    move-object v13, v0

    const/4 v14, 0x0

    new-instance v15, Landroid/content/Intent;

    const-string v16, "android.intent.action.SET_WALLPAPER"

    invoke-direct/range {v15 .. v16}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x1040396

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v15

    const/16 v16, 0x0

    invoke-static/range {v13 .. v16}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    move-object v12, v0

    const/4 v13, 0x1

    invoke-virtual {v12, v6, v7, v13}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v12

    if-nez v12, :cond_185

    .line 554
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unable to bind service: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 558
    :cond_185
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WallpaperManagerService;->clearWallpaperComponentLocked()V

    .line 559
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WallpaperManagerService;->mWallpaperComponent:Landroid/content/ComponentName;

    .line 560
    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    .line 561
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    move-wide v0, v12

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/WallpaperManagerService;->mLastDiedTime:J
    :try_end_19c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_ee .. :try_end_19c} :catch_74

    .line 564
    :try_start_19c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    move-object v12, v0

    iget-object v13, v7, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    const/16 v14, 0x7dd

    invoke-interface {v12, v13, v14}, Landroid/view/IWindowManager;->addWindowToken(Landroid/os/IBinder;I)V
    :try_end_1a8
    .catch Landroid/os/RemoteException; {:try_start_19c .. :try_end_1a8} :catch_1aa
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_19c .. :try_end_1a8} :catch_74

    goto/16 :goto_10

    .line 566
    :catch_1aa
    move-exception v12

    goto/16 :goto_10
.end method

.method public clearWallpaper()V
    .registers 3

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 333
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/WallpaperManagerService;->clearWallpaperLocked()V

    .line 334
    monitor-exit v0

    .line 335
    return-void

    .line 334
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method clearWallpaperComponentLocked()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 575
    iput-object v2, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperComponent:Landroid/content/ComponentName;

    .line 576
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_26

    .line 577
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v0, :cond_14

    .line 579
    :try_start_d
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v0}, Landroid/service/wallpaper/IWallpaperEngine;->destroy()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_29

    .line 583
    :cond_14
    :goto_14
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 587
    :try_start_1b
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iget-object v1, v1, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_24} :catch_27

    .line 590
    :goto_24
    iput-object v2, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    .line 592
    :cond_26
    return-void

    .line 588
    :catch_27
    move-exception v0

    goto :goto_24

    .line 580
    :catch_29
    move-exception v0

    goto :goto_14
.end method

.method public clearWallpaperLocked()V
    .registers 7

    .prologue
    .line 338
    sget-object v1, Lcom/android/server/WallpaperManagerService;->WALLPAPER_FILE:Ljava/io/File;

    .line 339
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 340
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 342
    :cond_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 344
    .local v2, ident:J
    const/4 v4, 0x0

    :try_start_10
    invoke-virtual {p0, v4}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_13} :catch_17

    .line 352
    :goto_13
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 354
    return-void

    .line 345
    :catch_17
    move-exception v0

    .line 350
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_18
    const-string v4, "WallpaperService"

    const-string v5, "Default wallpaper component not found!"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_20

    goto :goto_13

    .line 352
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catchall_20
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 853
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DUMP"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_33

    .line 856
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: can\'t dump wallpaper service from from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 880
    :goto_32
    return-void

    .line 862
    :cond_33
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 863
    :try_start_36
    const-string v2, "Current Wallpaper Service state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 864
    const-string v2, "  mWidth="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/WallpaperManagerService;->mWidth:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 865
    const-string v2, " mHeight="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/WallpaperManagerService;->mHeight:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 866
    const-string v2, "  mName="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 867
    const-string v2, "  mWallpaperComponent="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 868
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    if-eqz v2, :cond_b1

    .line 869
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    .line 870
    .local v0, conn:Lcom/android/server/WallpaperManagerService$WallpaperConnection;
    const-string v2, "  Wallpaper connection "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 871
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v2, ":"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 872
    const-string v2, "    mInfo.component="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    invoke-virtual {v2}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 873
    const-string v2, "    mToken="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 874
    const-string v2, "    mService="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 875
    const-string v2, "    mEngine="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 876
    const-string v2, "    mLastDiedTime="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 877
    iget-wide v2, p0, Lcom/android/server/WallpaperManagerService;->mLastDiedTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 879
    .end local v0           #conn:Lcom/android/server/WallpaperManagerService$WallpaperConnection;
    :cond_b1
    monitor-exit v1

    goto :goto_32

    :catchall_b3
    move-exception v2

    monitor-exit v1
    :try_end_b5
    .catchall {:try_start_36 .. :try_end_b5} :catchall_b3

    throw v2
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 309
    invoke-super {p0}, Landroid/app/IWallpaperManager$Stub;->finalize()V

    .line 310
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 311
    return-void
.end method

.method public getHeightHint()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 390
    :try_start_3
    iget v1, p0, Lcom/android/server/WallpaperManagerService;->mHeight:I

    monitor-exit v0

    return v1

    .line 391
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;
    .registers 9
    .parameter "cb"
    .parameter "outParams"

    .prologue
    const/4 v5, 0x0

    .line 396
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 398
    if-eqz p2, :cond_14

    .line 399
    :try_start_6
    const-string v3, "width"

    iget v4, p0, Lcom/android/server/WallpaperManagerService;->mWidth:I

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 400
    const-string v3, "height"

    iget v4, p0, Lcom/android/server/WallpaperManagerService;->mHeight:I

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 402
    :cond_14
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 403
    sget-object v1, Lcom/android/server/WallpaperManagerService;->WALLPAPER_FILE:Ljava/io/File;

    .line 404
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_39
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_1e} :catch_2d

    move-result v3

    if-nez v3, :cond_24

    .line 405
    :try_start_21
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_39

    move-object v2, v5

    .line 412
    .end local v1           #f:Ljava/io/File;
    :goto_23
    return-object v2

    .line 407
    .restart local v1       #f:Ljava/io/File;
    :cond_24
    const/high16 v3, 0x1000

    :try_start_26
    invoke-static {v1, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_39
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_29} :catch_2d

    move-result-object v3

    :try_start_2a
    monitor-exit v2

    move-object v2, v3

    goto :goto_23

    .line 408
    .end local v1           #f:Ljava/io/File;
    :catch_2d
    move-exception v3

    move-object v0, v3

    .line 410
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v3, "WallpaperService"

    const-string v4, "Error getting wallpaper"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 412
    monitor-exit v2

    move-object v2, v5

    goto :goto_23

    .line 413
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catchall_39
    move-exception v3

    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_2a .. :try_end_3b} :catchall_39

    throw v3
.end method

.method public getWallpaperInfo()Landroid/app/WallpaperInfo;
    .registers 3

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 418
    :try_start_3
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    if-eqz v1, :cond_e

    .line 419
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iget-object v1, v1, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    monitor-exit v0

    move-object v0, v1

    .line 421
    :goto_d
    return-object v0

    :cond_e
    const/4 v1, 0x0

    monitor-exit v0

    move-object v0, v1

    goto :goto_d

    .line 422
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public getWidthHint()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 384
    :try_start_3
    iget v1, p0, Lcom/android/server/WallpaperManagerService;->mWidth:I

    monitor-exit v0

    return v1

    .line 385
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method restoreNamedResourceLocked()Z
    .registers 24

    .prologue
    .line 778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_15a

    const-string v19, "res:"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x4

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_15a

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x4

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 781
    .local v16, resName:Ljava/lang/String;
    const/4 v12, 0x0

    .line 782
    .local v12, pkg:Ljava/lang/String;
    const/16 v19, 0x3a

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 783
    .local v7, colon:I
    if-lez v7, :cond_4c

    .line 784
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    move v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 787
    :cond_4c
    const/4 v11, 0x0

    .line 788
    .local v11, ident:Ljava/lang/String;
    const/16 v19, 0x2f

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v17

    .line 789
    .local v17, slash:I
    if-lez v17, :cond_63

    .line 790
    add-int/lit8 v19, v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 793
    :cond_63
    const/16 v18, 0x0

    .line 794
    .local v18, type:Ljava/lang/String;
    if-lez v7, :cond_7f

    if-lez v17, :cond_7f

    sub-int v19, v17, v7

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_7f

    .line 795
    add-int/lit8 v19, v7, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 798
    :cond_7f
    if-eqz v12, :cond_15a

    if-eqz v11, :cond_15a

    if-eqz v18, :cond_15a

    .line 799
    const/4 v15, -0x1

    .line 800
    .local v15, resId:I
    const/4 v14, 0x0

    .line 801
    .local v14, res:Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 803
    .local v9, fos:Ljava/io/FileOutputStream;
    :try_start_88
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const/16 v20, 0x4

    move-object/from16 v0, v19

    move-object v1, v12

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v6

    .line 804
    .local v6, c:Landroid/content/Context;
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 805
    .local v13, r:Landroid/content/res/Resources;
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v0, v13

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 806
    if-nez v15, :cond_f4

    .line 807
    const-string v19, "WallpaperService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "couldn\'t resolve identifier pkg="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " type="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " ident="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e4
    .catchall {:try_start_88 .. :try_end_e4} :catchall_1d8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_88 .. :try_end_e4} :catch_204
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_88 .. :try_end_e4} :catch_18d
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_e4} :catch_1bb

    .line 809
    const/16 v19, 0x0

    .line 834
    if-eqz v14, :cond_eb

    .line 836
    :try_start_e8
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_eb
    .catch Ljava/io/IOException; {:try_start_e8 .. :try_end_eb} :catch_1f2

    .line 839
    :cond_eb
    :goto_eb
    if-eqz v9, :cond_f3

    .line 840
    invoke-static {v9}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 842
    :try_start_f0
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_f3
    .catch Ljava/io/IOException; {:try_start_f0 .. :try_end_f3} :catch_18a

    .line 848
    .end local v6           #c:Landroid/content/Context;
    .end local v7           #colon:I
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .end local v11           #ident:Ljava/lang/String;
    .end local v12           #pkg:Ljava/lang/String;
    .end local v13           #r:Landroid/content/res/Resources;
    .end local v14           #res:Ljava/io/InputStream;
    .end local v15           #resId:I
    .end local v16           #resName:Ljava/lang/String;
    .end local v17           #slash:I
    .end local v18           #type:Ljava/lang/String;
    :cond_f3
    :goto_f3
    return v19

    .line 812
    .restart local v6       #c:Landroid/content/Context;
    .restart local v7       #colon:I
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    .restart local v11       #ident:Ljava/lang/String;
    .restart local v12       #pkg:Ljava/lang/String;
    .restart local v13       #r:Landroid/content/res/Resources;
    .restart local v14       #res:Ljava/io/InputStream;
    .restart local v15       #resId:I
    .restart local v16       #resName:Ljava/lang/String;
    .restart local v17       #slash:I
    .restart local v18       #type:Ljava/lang/String;
    :cond_f4
    :try_start_f4
    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v14

    .line 813
    sget-object v19, Lcom/android/server/WallpaperManagerService;->WALLPAPER_FILE:Ljava/io/File;

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_105

    .line 814
    sget-object v19, Lcom/android/server/WallpaperManagerService;->WALLPAPER_FILE:Ljava/io/File;

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z

    .line 816
    :cond_105
    new-instance v10, Ljava/io/FileOutputStream;

    sget-object v19, Lcom/android/server/WallpaperManagerService;->WALLPAPER_FILE:Ljava/io/File;

    move-object v0, v10

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_10f
    .catchall {:try_start_f4 .. :try_end_10f} :catchall_1d8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f4 .. :try_end_10f} :catch_204
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_f4 .. :try_end_10f} :catch_18d
    .catch Ljava/io/IOException; {:try_start_f4 .. :try_end_10f} :catch_1bb

    .line 818
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .local v10, fos:Ljava/io/FileOutputStream;
    const v19, 0x8000

    :try_start_112
    move/from16 v0, v19

    new-array v0, v0, [B

    move-object v5, v0

    .line 820
    .local v5, buffer:[B
    :goto_117
    invoke-virtual {v14, v5}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, amt:I
    if-lez v4, :cond_15d

    .line 821
    const/16 v19, 0x0

    move-object v0, v10

    move-object v1, v5

    move/from16 v2, v19

    move v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_127
    .catchall {:try_start_112 .. :try_end_127} :catchall_1f7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_112 .. :try_end_127} :catch_128
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_112 .. :try_end_127} :catch_1ff
    .catch Ljava/io/IOException; {:try_start_112 .. :try_end_127} :catch_1fa

    goto :goto_117

    .line 827
    .end local v4           #amt:I
    .end local v5           #buffer:[B
    :catch_128
    move-exception v19

    move-object/from16 v8, v19

    move-object v9, v10

    .line 828
    .end local v6           #c:Landroid/content/Context;
    .end local v10           #fos:Ljava/io/FileOutputStream;
    .end local v13           #r:Landroid/content/res/Resources;
    .local v8, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    :goto_12c
    :try_start_12c
    const-string v19, "WallpaperService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Package name "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " not found"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14d
    .catchall {:try_start_12c .. :try_end_14d} :catchall_1d8

    .line 834
    if-eqz v14, :cond_152

    .line 836
    :try_start_14f
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_152
    .catch Ljava/io/IOException; {:try_start_14f .. :try_end_152} :catch_1eb

    .line 839
    :cond_152
    :goto_152
    if-eqz v9, :cond_15a

    .line 840
    invoke-static {v9}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 842
    :try_start_157
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_15a
    .catch Ljava/io/IOException; {:try_start_157 .. :try_end_15a} :catch_1b9

    .line 848
    .end local v7           #colon:I
    .end local v8           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .end local v11           #ident:Ljava/lang/String;
    .end local v12           #pkg:Ljava/lang/String;
    .end local v14           #res:Ljava/io/InputStream;
    .end local v15           #resId:I
    .end local v16           #resName:Ljava/lang/String;
    .end local v17           #slash:I
    .end local v18           #type:Ljava/lang/String;
    :cond_15a
    :goto_15a
    const/16 v19, 0x0

    goto :goto_f3

    .line 825
    .restart local v4       #amt:I
    .restart local v5       #buffer:[B
    .restart local v6       #c:Landroid/content/Context;
    .restart local v7       #colon:I
    .restart local v10       #fos:Ljava/io/FileOutputStream;
    .restart local v11       #ident:Ljava/lang/String;
    .restart local v12       #pkg:Ljava/lang/String;
    .restart local v13       #r:Landroid/content/res/Resources;
    .restart local v14       #res:Ljava/io/InputStream;
    .restart local v15       #resId:I
    .restart local v16       #resName:Ljava/lang/String;
    .restart local v17       #slash:I
    .restart local v18       #type:Ljava/lang/String;
    :cond_15d
    :try_start_15d
    const-string v19, "WallpaperService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Restored wallpaper: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_179
    .catchall {:try_start_15d .. :try_end_179} :catchall_1f7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_15d .. :try_end_179} :catch_128
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_15d .. :try_end_179} :catch_1ff
    .catch Ljava/io/IOException; {:try_start_15d .. :try_end_179} :catch_1fa

    .line 826
    const/16 v19, 0x1

    .line 834
    if-eqz v14, :cond_180

    .line 836
    :try_start_17d
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_180
    .catch Ljava/io/IOException; {:try_start_17d .. :try_end_180} :catch_1f5

    .line 839
    :cond_180
    :goto_180
    if-eqz v10, :cond_f3

    .line 840
    invoke-static {v10}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 842
    :try_start_185
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_188
    .catch Ljava/io/IOException; {:try_start_185 .. :try_end_188} :catch_18a

    goto/16 :goto_f3

    .line 843
    .end local v4           #amt:I
    .end local v5           #buffer:[B
    .end local v10           #fos:Ljava/io/FileOutputStream;
    :catch_18a
    move-exception v20

    goto/16 :goto_f3

    .line 829
    .end local v6           #c:Landroid/content/Context;
    .end local v13           #r:Landroid/content/res/Resources;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    :catch_18d
    move-exception v19

    move-object/from16 v8, v19

    .line 830
    .local v8, e:Landroid/content/res/Resources$NotFoundException;
    :goto_190
    :try_start_190
    const-string v19, "WallpaperService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Resource not found: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ab
    .catchall {:try_start_190 .. :try_end_1ab} :catchall_1d8

    .line 834
    if-eqz v14, :cond_1b0

    .line 836
    :try_start_1ad
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_1b0
    .catch Ljava/io/IOException; {:try_start_1ad .. :try_end_1b0} :catch_1ee

    .line 839
    :cond_1b0
    :goto_1b0
    if-eqz v9, :cond_15a

    .line 840
    invoke-static {v9}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 842
    :try_start_1b5
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_1b8
    .catch Ljava/io/IOException; {:try_start_1b5 .. :try_end_1b8} :catch_1b9

    goto :goto_15a

    .line 843
    .end local v8           #e:Landroid/content/res/Resources$NotFoundException;
    :catch_1b9
    move-exception v19

    goto :goto_15a

    .line 831
    :catch_1bb
    move-exception v19

    move-object/from16 v8, v19

    .line 832
    .local v8, e:Ljava/io/IOException;
    :goto_1be
    :try_start_1be
    const-string v19, "WallpaperService"

    const-string v20, "IOException while restoring wallpaper "

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1ca
    .catchall {:try_start_1be .. :try_end_1ca} :catchall_1d8

    .line 834
    if-eqz v14, :cond_1cf

    .line 836
    :try_start_1cc
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_1cf
    .catch Ljava/io/IOException; {:try_start_1cc .. :try_end_1cf} :catch_1f0

    .line 839
    :cond_1cf
    :goto_1cf
    if-eqz v9, :cond_15a

    .line 840
    invoke-static {v9}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 842
    :try_start_1d4
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_1d7
    .catch Ljava/io/IOException; {:try_start_1d4 .. :try_end_1d7} :catch_1b9

    goto :goto_15a

    .line 834
    .end local v8           #e:Ljava/io/IOException;
    :catchall_1d8
    move-exception v19

    :goto_1d9
    if-eqz v14, :cond_1de

    .line 836
    :try_start_1db
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_1de
    .catch Ljava/io/IOException; {:try_start_1db .. :try_end_1de} :catch_1e7

    .line 839
    :cond_1de
    :goto_1de
    if-eqz v9, :cond_1e6

    .line 840
    invoke-static {v9}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 842
    :try_start_1e3
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_1e6
    .catch Ljava/io/IOException; {:try_start_1e3 .. :try_end_1e6} :catch_1e9

    .line 834
    :cond_1e6
    :goto_1e6
    throw v19

    .line 837
    :catch_1e7
    move-exception v20

    goto :goto_1de

    .line 843
    :catch_1e9
    move-exception v20

    goto :goto_1e6

    .line 837
    .local v8, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1eb
    move-exception v19

    goto/16 :goto_152

    .local v8, e:Landroid/content/res/Resources$NotFoundException;
    :catch_1ee
    move-exception v19

    goto :goto_1b0

    .local v8, e:Ljava/io/IOException;
    :catch_1f0
    move-exception v19

    goto :goto_1cf

    .end local v8           #e:Ljava/io/IOException;
    .restart local v6       #c:Landroid/content/Context;
    .restart local v13       #r:Landroid/content/res/Resources;
    :catch_1f2
    move-exception v20

    goto/16 :goto_eb

    .end local v9           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #amt:I
    .restart local v5       #buffer:[B
    .restart local v10       #fos:Ljava/io/FileOutputStream;
    :catch_1f5
    move-exception v20

    goto :goto_180

    .line 834
    .end local v4           #amt:I
    .end local v5           #buffer:[B
    :catchall_1f7
    move-exception v19

    move-object v9, v10

    .end local v10           #fos:Ljava/io/FileOutputStream;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    goto :goto_1d9

    .line 831
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .restart local v10       #fos:Ljava/io/FileOutputStream;
    :catch_1fa
    move-exception v19

    move-object/from16 v8, v19

    move-object v9, v10

    .end local v10           #fos:Ljava/io/FileOutputStream;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    goto :goto_1be

    .line 829
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .restart local v10       #fos:Ljava/io/FileOutputStream;
    :catch_1ff
    move-exception v19

    move-object/from16 v8, v19

    move-object v9, v10

    .end local v10           #fos:Ljava/io/FileOutputStream;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    goto :goto_190

    .line 827
    .end local v6           #c:Landroid/content/Context;
    .end local v13           #r:Landroid/content/res/Resources;
    :catch_204
    move-exception v19

    move-object/from16 v8, v19

    goto/16 :goto_12c
.end method

.method public setDimensionHints(II)V
    .registers 5
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 357
    const-string v0, "android.permission.SET_WALLPAPER_HINTS"

    invoke-direct {p0, v0}, Lcom/android/server/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 359
    if-lez p1, :cond_9

    if-gtz p2, :cond_11

    .line 360
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "width and height must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 363
    :cond_11
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 364
    :try_start_14
    iget v1, p0, Lcom/android/server/WallpaperManagerService;->mWidth:I

    if-ne p1, v1, :cond_1c

    iget v1, p0, Lcom/android/server/WallpaperManagerService;->mHeight:I

    if-eq p2, v1, :cond_37

    .line 365
    :cond_1c
    iput p1, p0, Lcom/android/server/WallpaperManagerService;->mWidth:I

    .line 366
    iput p2, p0, Lcom/android/server/WallpaperManagerService;->mHeight:I

    .line 367
    invoke-direct {p0}, Lcom/android/server/WallpaperManagerService;->saveSettingsLocked()V

    .line 368
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    if-eqz v1, :cond_37

    .line 369
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iget-object v1, v1, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_2b
    .catchall {:try_start_14 .. :try_end_2b} :catchall_39

    if-eqz v1, :cond_37

    .line 371
    :try_start_2d
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iget-object v1, v1, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v1, p1, p2}, Landroid/service/wallpaper/IWallpaperEngine;->setDesiredSize(II)V
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_39
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_34} :catch_3c

    .line 375
    :goto_34
    :try_start_34
    invoke-direct {p0}, Lcom/android/server/WallpaperManagerService;->notifyCallbacksLocked()V

    .line 379
    :cond_37
    monitor-exit v0

    .line 380
    return-void

    .line 379
    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_39

    throw v1

    .line 373
    :catch_3c
    move-exception v1

    goto :goto_34
.end method

.method public setWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 7
    .parameter "name"

    .prologue
    .line 428
    const-string v3, "android.permission.SET_WALLPAPER"

    invoke-direct {p0, v3}, Lcom/android/server/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 429
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 430
    :try_start_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_24

    move-result-wide v0

    .line 432
    .local v0, ident:J
    :try_start_c
    invoke-virtual {p0, p1}, Lcom/android/server/WallpaperManagerService;->updateWallpaperBitmapLocked(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 433
    .local v2, pfd:Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_1a

    .line 435
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService;->mImageWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {p0, v4}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;)V

    .line 436
    invoke-direct {p0}, Lcom/android/server/WallpaperManagerService;->saveSettingsLocked()V
    :try_end_1a
    .catchall {:try_start_c .. :try_end_1a} :catchall_1f

    .line 440
    :cond_1a
    :try_start_1a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 438
    monitor-exit v3

    return-object v2

    .line 440
    .end local v2           #pfd:Landroid/os/ParcelFileDescriptor;
    :catchall_1f
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 442
    .end local v0           #ident:J
    :catchall_24
    move-exception v4

    monitor-exit v3
    :try_end_26
    .catchall {:try_start_1a .. :try_end_26} :catchall_24

    throw v4
.end method

.method public setWallpaperComponent(Landroid/content/ComponentName;)V
    .registers 6
    .parameter "name"

    .prologue
    .line 460
    const-string v2, "android.permission.SET_WALLPAPER_COMPONENT"

    invoke-direct {p0, v2}, Lcom/android/server/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 461
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 462
    :try_start_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_19

    move-result-wide v0

    .line 464
    .local v0, ident:J
    :try_start_c
    invoke-virtual {p0, p1}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;)V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_14

    .line 466
    :try_start_f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 468
    monitor-exit v2

    .line 469
    return-void

    .line 466
    :catchall_14
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 468
    .end local v0           #ident:J
    :catchall_19
    move-exception v3

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_19

    throw v3
.end method

.method settingsRestored()V
    .registers 7

    .prologue
    const-string v5, ""

    .line 735
    const/4 v1, 0x0

    .line 736
    .local v1, success:Z
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 737
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/WallpaperManagerService;->loadSettingsLocked()V

    .line 738
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mNextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_5b

    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mNextWallpaperComponent:Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/server/WallpaperManagerService;->mImageWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_58

    move-result v3

    if-nez v3, :cond_5b

    .line 741
    :try_start_17
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mNextWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {p0, v3}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;)V
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_58
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_1c} :catch_51

    .line 748
    :goto_1c
    const/4 v1, 0x1

    .line 764
    :cond_1d
    :goto_1d
    :try_start_1d
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_58

    .line 766
    if-nez v1, :cond_49

    .line 767
    const-string v2, "WallpaperService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to restore wallpaper: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    const-string v2, ""

    iput-object v5, p0, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;

    .line 769
    sget-object v2, Lcom/android/server/WallpaperManagerService;->WALLPAPER_FILE:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 772
    :cond_49
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 773
    :try_start_4c
    invoke-direct {p0}, Lcom/android/server/WallpaperManagerService;->saveSettingsLocked()V

    .line 774
    monitor-exit v2
    :try_end_50
    .catchall {:try_start_4c .. :try_end_50} :catchall_73

    .line 775
    return-void

    .line 742
    :catch_51
    move-exception v3

    move-object v0, v3

    .line 746
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const/4 v3, 0x0

    :try_start_54
    invoke-virtual {p0, v3}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;)V

    goto :goto_1c

    .line 764
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catchall_58
    move-exception v3

    monitor-exit v2
    :try_end_5a
    .catchall {:try_start_54 .. :try_end_5a} :catchall_58

    throw v3

    .line 752
    :cond_5b
    :try_start_5b
    const-string v3, ""

    iget-object v4, p0, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 754
    const/4 v1, 0x1

    .line 760
    :goto_66
    if-eqz v1, :cond_1d

    .line 761
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mImageWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {p0, v3}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;)V

    goto :goto_1d

    .line 757
    :cond_6e
    invoke-virtual {p0}, Lcom/android/server/WallpaperManagerService;->restoreNamedResourceLocked()Z
    :try_end_71
    .catchall {:try_start_5b .. :try_end_71} :catchall_58

    move-result v1

    goto :goto_66

    .line 774
    :catchall_73
    move-exception v3

    :try_start_74
    monitor-exit v2
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_73

    throw v3
.end method

.method public systemReady()V
    .registers 6

    .prologue
    const-string v2, "WallpaperService"

    .line 315
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 317
    :try_start_5
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mNextWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {p0, v3}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_26
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_a} :catch_c

    .line 327
    :goto_a
    :try_start_a
    monitor-exit v2

    .line 328
    return-void

    .line 318
    :catch_c
    move-exception v3

    move-object v0, v3

    .line 319
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v3, "WallpaperService"

    const-string v4, "Failure starting previous wallpaper"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_26

    .line 321
    const/4 v3, 0x0

    :try_start_16
    invoke-virtual {p0, v3}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_26
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_a

    .line 322
    :catch_1a
    move-exception v1

    .line 323
    .local v1, e2:Ljava/lang/RuntimeException;
    :try_start_1b
    const-string v3, "WallpaperService"

    const-string v4, "Failure starting default wallpaper"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 324
    invoke-virtual {p0}, Lcom/android/server/WallpaperManagerService;->clearWallpaperComponentLocked()V

    goto :goto_a

    .line 327
    .end local v0           #e:Ljava/lang/RuntimeException;
    .end local v1           #e2:Ljava/lang/RuntimeException;
    :catchall_26
    move-exception v3

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_1b .. :try_end_28} :catchall_26

    throw v3
.end method

.method updateWallpaperBitmapLocked(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 6
    .parameter "name"

    .prologue
    .line 446
    if-nez p1, :cond_4

    const-string p1, ""

    .line 448
    :cond_4
    :try_start_4
    sget-object v2, Lcom/android/server/WallpaperManagerService;->WALLPAPER_FILE:Ljava/io/File;

    const/high16 v3, 0x3800

    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 450
    .local v1, fd:Landroid/os/ParcelFileDescriptor;
    iput-object p1, p0, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_e} :catch_10

    move-object v2, v1

    .line 455
    .end local v1           #fd:Landroid/os/ParcelFileDescriptor;
    :goto_f
    return-object v2

    .line 452
    :catch_10
    move-exception v2

    move-object v0, v2

    .line 453
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v2, "WallpaperService"

    const-string v3, "Error setting wallpaper"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 455
    const/4 v2, 0x0

    goto :goto_f
.end method
