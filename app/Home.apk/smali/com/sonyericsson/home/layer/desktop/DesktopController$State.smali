.class final enum Lcom/sonyericsson/home/layer/desktop/DesktopController$State;
.super Ljava/lang/Enum;
.source "DesktopController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/layer/desktop/DesktopController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/home/layer/desktop/DesktopController$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

.field public static final enum INITIALIZED:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

.field public static final enum MODEL_INITIALIZED:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

.field public static final enum UNINITIALIZED:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 179
    new-instance v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    const-string v1, "UNINITIALIZED"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$State;->UNINITIALIZED:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    new-instance v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    const-string v1, "MODEL_INITIALIZED"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/home/layer/desktop/DesktopController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$State;->MODEL_INITIALIZED:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    new-instance v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    const-string v1, "INITIALIZED"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/home/layer/desktop/DesktopController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$State;->INITIALIZED:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    .line 178
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    sget-object v1, Lcom/sonyericsson/home/layer/desktop/DesktopController$State;->UNINITIALIZED:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/home/layer/desktop/DesktopController$State;->MODEL_INITIALIZED:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/home/layer/desktop/DesktopController$State;->INITIALIZED:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$State;->$VALUES:[Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 178
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/home/layer/desktop/DesktopController$State;
    .locals 1
    .parameter "name"

    .prologue
    .line 178
    const-class v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/home/layer/desktop/DesktopController$State;
    .locals 1

    .prologue
    .line 178
    sget-object v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$State;->$VALUES:[Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    invoke-virtual {v0}, [Lcom/sonyericsson/home/layer/desktop/DesktopController$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    return-object v0
.end method
