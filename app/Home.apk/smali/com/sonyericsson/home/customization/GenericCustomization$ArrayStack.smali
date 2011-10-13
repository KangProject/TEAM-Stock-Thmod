.class Lcom/sonyericsson/home/customization/GenericCustomization$ArrayStack;
.super Ljava/util/ArrayList;
.source "GenericCustomization.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/customization/GenericCustomization;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArrayStack"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x151989335202e84bL


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 56
    .local p0, this:Lcom/sonyericsson/home/customization/GenericCustomization$ArrayStack;,"Lcom/sonyericsson/home/customization/GenericCustomization$ArrayStack<TE;>;"
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/home/customization/GenericCustomization$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    .local p0, this:Lcom/sonyericsson/home/customization/GenericCustomization$ArrayStack;,"Lcom/sonyericsson/home/customization/GenericCustomization$ArrayStack<TE;>;"
    invoke-direct {p0}, Lcom/sonyericsson/home/customization/GenericCustomization$ArrayStack;-><init>()V

    return-void
.end method


# virtual methods
.method public getTop()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, this:Lcom/sonyericsson/home/customization/GenericCustomization$ArrayStack;,"Lcom/sonyericsson/home/customization/GenericCustomization$ArrayStack<TE;>;"
    invoke-virtual {p0}, Lcom/sonyericsson/home/customization/GenericCustomization$ArrayStack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/sonyericsson/home/customization/GenericCustomization$ArrayStack;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/customization/GenericCustomization$ArrayStack;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 74
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pop()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, this:Lcom/sonyericsson/home/customization/GenericCustomization$ArrayStack;,"Lcom/sonyericsson/home/customization/GenericCustomization$ArrayStack<TE;>;"
    invoke-virtual {p0}, Lcom/sonyericsson/home/customization/GenericCustomization$ArrayStack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/sonyericsson/home/customization/GenericCustomization$ArrayStack;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/customization/GenericCustomization$ArrayStack;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 67
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public push(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, this:Lcom/sonyericsson/home/customization/GenericCustomization$ArrayStack;,"Lcom/sonyericsson/home/customization/GenericCustomization$ArrayStack<TE;>;"
    .local p1, obj:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/customization/GenericCustomization$ArrayStack;->add(Ljava/lang/Object;)Z

    .line 61
    return-void
.end method
