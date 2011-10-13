.class final enum Lcom/sonyericsson/paneview/GestureDetector$TouchState;
.super Ljava/lang/Enum;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/paneview/GestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "TouchState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/paneview/GestureDetector$TouchState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/paneview/GestureDetector$TouchState;

.field public static final enum CLICKED:Lcom/sonyericsson/paneview/GestureDetector$TouchState;

.field public static final enum DRAGGING_HORIZONTALLY:Lcom/sonyericsson/paneview/GestureDetector$TouchState;

.field public static final enum DRAGGING_VERTICALLY:Lcom/sonyericsson/paneview/GestureDetector$TouchState;

.field public static final enum LONGPRESSED:Lcom/sonyericsson/paneview/GestureDetector$TouchState;

.field public static final enum NON_ACTIVE_DRAG:Lcom/sonyericsson/paneview/GestureDetector$TouchState;

.field public static final enum RESTING:Lcom/sonyericsson/paneview/GestureDetector$TouchState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 33
    new-instance v0, Lcom/sonyericsson/paneview/GestureDetector$TouchState;

    const-string v1, "RESTING"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/paneview/GestureDetector$TouchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/paneview/GestureDetector$TouchState;->RESTING:Lcom/sonyericsson/paneview/GestureDetector$TouchState;

    .line 36
    new-instance v0, Lcom/sonyericsson/paneview/GestureDetector$TouchState;

    const-string v1, "CLICKED"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/paneview/GestureDetector$TouchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/paneview/GestureDetector$TouchState;->CLICKED:Lcom/sonyericsson/paneview/GestureDetector$TouchState;

    .line 39
    new-instance v0, Lcom/sonyericsson/paneview/GestureDetector$TouchState;

    const-string v1, "LONGPRESSED"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/paneview/GestureDetector$TouchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/paneview/GestureDetector$TouchState;->LONGPRESSED:Lcom/sonyericsson/paneview/GestureDetector$TouchState;

    .line 42
    new-instance v0, Lcom/sonyericsson/paneview/GestureDetector$TouchState;

    const-string v1, "DRAGGING_HORIZONTALLY"

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/paneview/GestureDetector$TouchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/paneview/GestureDetector$TouchState;->DRAGGING_HORIZONTALLY:Lcom/sonyericsson/paneview/GestureDetector$TouchState;

    .line 45
    new-instance v0, Lcom/sonyericsson/paneview/GestureDetector$TouchState;

    const-string v1, "DRAGGING_VERTICALLY"

    invoke-direct {v0, v1, v7}, Lcom/sonyericsson/paneview/GestureDetector$TouchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/paneview/GestureDetector$TouchState;->DRAGGING_VERTICALLY:Lcom/sonyericsson/paneview/GestureDetector$TouchState;

    .line 48
    new-instance v0, Lcom/sonyericsson/paneview/GestureDetector$TouchState;

    const-string v1, "NON_ACTIVE_DRAG"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/paneview/GestureDetector$TouchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/paneview/GestureDetector$TouchState;->NON_ACTIVE_DRAG:Lcom/sonyericsson/paneview/GestureDetector$TouchState;

    .line 31
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sonyericsson/paneview/GestureDetector$TouchState;

    sget-object v1, Lcom/sonyericsson/paneview/GestureDetector$TouchState;->RESTING:Lcom/sonyericsson/paneview/GestureDetector$TouchState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/paneview/GestureDetector$TouchState;->CLICKED:Lcom/sonyericsson/paneview/GestureDetector$TouchState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/paneview/GestureDetector$TouchState;->LONGPRESSED:Lcom/sonyericsson/paneview/GestureDetector$TouchState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/paneview/GestureDetector$TouchState;->DRAGGING_HORIZONTALLY:Lcom/sonyericsson/paneview/GestureDetector$TouchState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/paneview/GestureDetector$TouchState;->DRAGGING_VERTICALLY:Lcom/sonyericsson/paneview/GestureDetector$TouchState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sonyericsson/paneview/GestureDetector$TouchState;->NON_ACTIVE_DRAG:Lcom/sonyericsson/paneview/GestureDetector$TouchState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/paneview/GestureDetector$TouchState;->$VALUES:[Lcom/sonyericsson/paneview/GestureDetector$TouchState;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/paneview/GestureDetector$TouchState;
    .locals 1
    .parameter "name"

    .prologue
    .line 31
    const-class v0, Lcom/sonyericsson/paneview/GestureDetector$TouchState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sonyericsson/paneview/GestureDetector$TouchState;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/paneview/GestureDetector$TouchState;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/sonyericsson/paneview/GestureDetector$TouchState;->$VALUES:[Lcom/sonyericsson/paneview/GestureDetector$TouchState;

    invoke-virtual {v0}, [Lcom/sonyericsson/paneview/GestureDetector$TouchState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/paneview/GestureDetector$TouchState;

    return-object v0
.end method
