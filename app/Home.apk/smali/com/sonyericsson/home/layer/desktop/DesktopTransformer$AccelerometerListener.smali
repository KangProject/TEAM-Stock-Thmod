.class Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$AccelerometerListener;
.super Ljava/lang/Object;
.source "DesktopTransformer.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccelerometerListener"
.end annotation


# static fields
.field private static final INVALID_TIME_STAMP:J = -0x1L

.field private static final MINIMUM_TIME_BETWEEN_Z_ORDER_SHUFFLES:J = 0x7d0L


# instance fields
.field private mLastZOrderShuffleTime:J

.field private final mPrevEventValues:[F

.field private mTimeOfLastSensorUpdate:J

.field final synthetic this$0:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;)V
    .locals 2
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$AccelerometerListener;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$AccelerometerListener;->mPrevEventValues:[F

    .line 215
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$AccelerometerListener;->mTimeOfLastSensorUpdate:J

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 259
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 20
    .parameter "event"

    .prologue
    .line 221
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$AccelerometerListener;->mTimeOfLastSensorUpdate:J

    move-wide v14, v0

    const-wide/16 v16, -0x1

    cmp-long v14, v14, v16

    if-eqz v14, :cond_4

    .line 222
    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/hardware/SensorEvent;->timestamp:J

    move-wide v14, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$AccelerometerListener;->mTimeOfLastSensorUpdate:J

    move-wide/from16 v16, v0

    sub-long v8, v14, v16

    .line 225
    .local v8, dt:J
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object v14, v0

    const/4 v15, 0x0

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$AccelerometerListener;->mPrevEventValues:[F

    move-object v15, v0

    const/16 v16, 0x0

    aget v15, v15, v16

    sub-float v5, v14, v15

    .line 226
    .local v5, dfx:F
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object v14, v0

    const/4 v15, 0x1

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$AccelerometerListener;->mPrevEventValues:[F

    move-object v15, v0

    const/16 v16, 0x1

    aget v15, v15, v16

    sub-float v6, v14, v15

    .line 227
    .local v6, dfy:F
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object v14, v0

    const/4 v15, 0x2

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$AccelerometerListener;->mPrevEventValues:[F

    move-object v15, v0

    const/16 v16, 0x2

    aget v15, v15, v16

    sub-float v7, v14, v15

    .line 229
    .local v7, dfz:F
    mul-float v14, v5, v5

    mul-float v15, v6, v6

    add-float/2addr v14, v15

    mul-float v15, v7, v7

    add-float/2addr v14, v15

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    move-wide v0, v8

    long-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    double-to-float v4, v14

    .line 230
    .local v4, dfdt:F
    const v14, 0x34a10fb0

    cmpl-float v14, v4, v14

    if-lez v14, :cond_4

    .line 231
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 235
    .local v11, now:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$AccelerometerListener;->mLastZOrderShuffleTime:J

    move-wide v14, v0

    sub-long v14, v11, v14

    const-wide/16 v16, 0x7d0

    cmp-long v14, v14, v16

    if-lez v14, :cond_2

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$AccelerometerListener;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;

    move-object v14, v0

    invoke-static {v14}, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->access$000(Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;)Ljava/util/HashMap;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;

    .line 237
    .local v13, t:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;
    iget-boolean v14, v13, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->enabled:Z

    if-eqz v14, :cond_0

    .line 238
    iget v14, v13, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->zOrder:I

    neg-int v14, v14

    iput v14, v13, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->zOrder:I

    goto :goto_0

    .line 241
    .end local v13           #t:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;
    :cond_1
    move-wide v0, v11

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$AccelerometerListener;->mLastZOrderShuffleTime:J

    .line 244
    .end local v10           #i$:Ljava/util/Iterator;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$AccelerometerListener;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;

    move-object v14, v0

    invoke-static {v14}, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->access$000(Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;)Ljava/util/HashMap;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10       #i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;

    .line 245
    .restart local v13       #t:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;
    iget-boolean v14, v13, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->enabled:Z

    if-eqz v14, :cond_3

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$AccelerometerListener;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;

    move-object v14, v0

    invoke-static {v14}, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->access$100(Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;)F

    move-result v14

    mul-float/2addr v14, v4

    const v15, 0x34a10fb0

    div-float v3, v14, v15

    .line 247
    .local v3, amount:F
    iget v14, v13, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->targetVx:F

    float-to-double v14, v14

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x3fe0

    sub-double v16, v16, v18

    move v0, v3

    float-to-double v0, v0

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    add-double v14, v14, v16

    double-to-float v14, v14

    iput v14, v13, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->targetVx:F

    .line 248
    iget v14, v13, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->targetVy:F

    float-to-double v14, v14

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x3fe0

    sub-double v16, v16, v18

    move v0, v3

    float-to-double v0, v0

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    add-double v14, v14, v16

    double-to-float v14, v14

    iput v14, v13, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->targetVy:F

    goto :goto_1

    .line 254
    .end local v3           #amount:F
    .end local v4           #dfdt:F
    .end local v5           #dfx:F
    .end local v6           #dfy:F
    .end local v7           #dfz:F
    .end local v8           #dt:J
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #now:J
    .end local v13           #t:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;
    :cond_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object v14, v0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$AccelerometerListener;->mPrevEventValues:[F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x3

    invoke-static/range {v14 .. v18}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 255
    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/hardware/SensorEvent;->timestamp:J

    move-wide v14, v0

    move-wide v0, v14

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$AccelerometerListener;->mTimeOfLastSensorUpdate:J

    .line 256
    return-void
.end method
