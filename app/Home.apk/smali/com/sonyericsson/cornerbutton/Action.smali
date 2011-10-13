.class public Lcom/sonyericsson/cornerbutton/Action;
.super Ljava/lang/Object;
.source "Action.java"


# instance fields
.field private mAngle:F

.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mId:J

.field private final mLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLandroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "label"
    .parameter "id"
    .parameter "icon"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/sonyericsson/cornerbutton/Action;->mLabel:Ljava/lang/String;

    .line 51
    iput-wide p2, p0, Lcom/sonyericsson/cornerbutton/Action;->mId:J

    .line 52
    iput-object p4, p0, Lcom/sonyericsson/cornerbutton/Action;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 53
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .parameter "obj"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 115
    if-ne p0, p1, :cond_0

    move v2, v7

    .line 124
    :goto_0
    return v2

    .line 117
    :cond_0
    if-nez p1, :cond_1

    move v2, v6

    .line 118
    goto :goto_0

    .line 119
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    move v2, v6

    .line 120
    goto :goto_0

    .line 121
    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/sonyericsson/cornerbutton/Action;

    move-object v1, v0

    .line 122
    .local v1, other:Lcom/sonyericsson/cornerbutton/Action;
    iget-wide v2, p0, Lcom/sonyericsson/cornerbutton/Action;->mId:J

    iget-wide v4, v1, Lcom/sonyericsson/cornerbutton/Action;->mId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    move v2, v6

    .line 123
    goto :goto_0

    :cond_3
    move v2, v7

    .line 124
    goto :goto_0
.end method

.method getAngle()F
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/sonyericsson/cornerbutton/Action;->mAngle:F

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/Action;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/sonyericsson/cornerbutton/Action;->mId:J

    return-wide v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/Action;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    .line 107
    const/16 v0, 0x1f

    .line 108
    .local v0, prime:I
    const/4 v1, 0x1

    .line 109
    .local v1, result:I
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v2, p0, Lcom/sonyericsson/cornerbutton/Action;->mId:J

    iget-wide v4, p0, Lcom/sonyericsson/cornerbutton/Action;->mId:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/lit8 v1, v2, 0x1f

    .line 110
    return v1
.end method

.method setAngle(F)V
    .locals 0
    .parameter "angle"

    .prologue
    .line 88
    iput p1, p0, Lcom/sonyericsson/cornerbutton/Action;->mAngle:F

    .line 89
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sonyericsson/cornerbutton/Action;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sonyericsson/cornerbutton/Action;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
