.class public Lcom/android/settings/LocalePicker$LocaleRecord;
.super Ljava/lang/Object;
.source "LocalePicker.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/LocalePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "LocaleRecord"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/settings/LocalePicker$LocaleRecord;",
        ">;"
    }
.end annotation


# static fields
.field static sCollator:Ljava/text/Collator;


# instance fields
.field enabled:Z

.field label:Ljava/lang/String;

.field locale:Ljava/util/Locale;

.field resourceId:I

.field type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 123
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/android/settings/LocalePicker$LocaleRecord;->sCollator:Ljava/text/Collator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/LocalePicker$LocaleRecord;-><init>(I)V

    .line 156
    return-void
.end method

.method private constructor <init>(I)V
    .locals 2
    .parameter "type"

    .prologue
    const/4 v1, 0x0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput p1, p0, Lcom/android/settings/LocalePicker$LocaleRecord;->type:I

    .line 133
    packed-switch p1, :pswitch_data_0

    .line 146
    :goto_0
    return-void

    .line 135
    :pswitch_0
    const v0, 0x7f03001c

    iput v0, p0, Lcom/android/settings/LocalePicker$LocaleRecord;->resourceId:I

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/LocalePicker$LocaleRecord;->enabled:Z

    .line 137
    iput-object v1, p0, Lcom/android/settings/LocalePicker$LocaleRecord;->locale:Ljava/util/Locale;

    .line 138
    iput-object v1, p0, Lcom/android/settings/LocalePicker$LocaleRecord;->label:Ljava/lang/String;

    goto :goto_0

    .line 141
    :pswitch_1
    const v0, 0x7f03001f

    iput v0, p0, Lcom/android/settings/LocalePicker$LocaleRecord;->resourceId:I

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/LocalePicker$LocaleRecord;->enabled:Z

    goto :goto_0

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 1
    .parameter "label"
    .parameter "locale"

    .prologue
    .line 149
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/LocalePicker$LocaleRecord;-><init>(I)V

    .line 150
    iput-object p1, p0, Lcom/android/settings/LocalePicker$LocaleRecord;->label:Ljava/lang/String;

    .line 151
    iput-object p2, p0, Lcom/android/settings/LocalePicker$LocaleRecord;->locale:Ljava/util/Locale;

    .line 152
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/settings/LocalePicker$LocaleRecord;)I
    .locals 3
    .parameter "another"

    .prologue
    .line 164
    sget-object v0, Lcom/android/settings/LocalePicker$LocaleRecord;->sCollator:Ljava/text/Collator;

    iget-object v1, p0, Lcom/android/settings/LocalePicker$LocaleRecord;->label:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/settings/LocalePicker$LocaleRecord;->label:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    check-cast p1, Lcom/android/settings/LocalePicker$LocaleRecord;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/LocalePicker$LocaleRecord;->compareTo(Lcom/android/settings/LocalePicker$LocaleRecord;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/settings/LocalePicker$LocaleRecord;->label:Ljava/lang/String;

    return-object v0
.end method
