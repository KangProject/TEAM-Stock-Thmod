.class Lcom/sonyericsson/home/customization/GenericCustomization$SettingsGroup;
.super Ljava/lang/Object;
.source "GenericCustomization.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/customization/GenericCustomization;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SettingsGroup"
.end annotation


# instance fields
.field public id:Ljava/lang/String;

.field private settings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "type"
    .parameter "id"

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/customization/GenericCustomization$SettingsGroup;->settings:Ljava/util/HashMap;

    .line 86
    iput-object p1, p0, Lcom/sonyericsson/home/customization/GenericCustomization$SettingsGroup;->type:Ljava/lang/String;

    .line 87
    iput-object p2, p0, Lcom/sonyericsson/home/customization/GenericCustomization$SettingsGroup;->id:Ljava/lang/String;

    .line 88
    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/home/customization/GenericCustomization$SettingsGroup;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sonyericsson/home/customization/GenericCustomization$SettingsGroup;->settings:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public putSetting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sonyericsson/home/customization/GenericCustomization$SettingsGroup;->settings:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    return-void
.end method
