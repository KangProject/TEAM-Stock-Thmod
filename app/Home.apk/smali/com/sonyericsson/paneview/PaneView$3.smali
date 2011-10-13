.class Lcom/sonyericsson/paneview/PaneView$3;
.super Ljava/lang/Object;
.source "PaneView.java"

# interfaces
.implements Lcom/sonyericsson/paneview/GestureDetector$GestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/paneview/PaneView;->createGestureListener()Lcom/sonyericsson/paneview/GestureDetector$GestureListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private horizontalDrag:Z

.field final synthetic this$0:Lcom/sonyericsson/paneview/PaneView;


# direct methods
.method constructor <init>(Lcom/sonyericsson/paneview/PaneView;)V
    .locals 0
    .parameter

    .prologue
    .line 1100
    iput-object p1, p0, Lcom/sonyericsson/paneview/PaneView$3;->this$0:Lcom/sonyericsson/paneview/PaneView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(II)V
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView$3;->this$0:Lcom/sonyericsson/paneview/PaneView;

    invoke-static {v0}, Lcom/sonyericsson/paneview/PaneView;->access$600(Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView$3;->this$0:Lcom/sonyericsson/paneview/PaneView;

    invoke-static {v0}, Lcom/sonyericsson/paneview/PaneView;->access$600(Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView$3;->this$0:Lcom/sonyericsson/paneview/PaneView;

    invoke-static {v0}, Lcom/sonyericsson/paneview/PaneView;->access$100(Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/paneview/PaneAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView$3;->this$0:Lcom/sonyericsson/paneview/PaneView;

    invoke-static {v1}, Lcom/sonyericsson/paneview/PaneView;->access$600(Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$400(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/paneview/PaneAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1158
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView$3;->this$0:Lcom/sonyericsson/paneview/PaneView;

    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView$3;->this$0:Lcom/sonyericsson/paneview/PaneView;

    invoke-static {v1}, Lcom/sonyericsson/paneview/PaneView;->access$600(Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    move-result-object v1

    iget-object v1, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView$3;->this$0:Lcom/sonyericsson/paneview/PaneView;

    invoke-static {v2}, Lcom/sonyericsson/paneview/PaneView;->access$600(Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$400(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView$3;->this$0:Lcom/sonyericsson/paneview/PaneView;

    invoke-static {v3}, Lcom/sonyericsson/paneview/PaneView;->access$600(Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$1000(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonyericsson/paneview/PaneView;->performItemClick(Landroid/view/View;IJ)Z

    .line 1162
    :cond_0
    :goto_0
    return-void

    .line 1159
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView$3;->this$0:Lcom/sonyericsson/paneview/PaneView;

    invoke-static {v0}, Lcom/sonyericsson/paneview/PaneView;->access$1100(Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/paneview/PaneView$PaneViewTouchListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1160
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView$3;->this$0:Lcom/sonyericsson/paneview/PaneView;

    invoke-static {v0}, Lcom/sonyericsson/paneview/PaneView;->access$1100(Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/paneview/PaneView$PaneViewTouchListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sonyericsson/paneview/PaneView$PaneViewTouchListener;->onClick(II)V

    goto :goto_0
.end method

.method public onFling(FF)V
    .locals 7
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 1135
    iget-boolean v3, p0, Lcom/sonyericsson/paneview/PaneView$3;->horizontalDrag:Z

    if-eqz v3, :cond_0

    .line 1136
    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView$3;->this$0:Lcom/sonyericsson/paneview/PaneView;

    neg-float v4, p1

    invoke-static {v3, v4}, Lcom/sonyericsson/paneview/PaneView;->access$1200(Lcom/sonyericsson/paneview/PaneView;F)F

    move-result v1

    .line 1137
    .local v1, scaledVelocity:F
    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView$3;->this$0:Lcom/sonyericsson/paneview/PaneView;

    invoke-static {v3}, Lcom/sonyericsson/paneview/PaneView;->access$1300(Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/util/Dynamics;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v0

    .line 1138
    .local v0, position:F
    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView$3;->this$0:Lcom/sonyericsson/paneview/PaneView;

    invoke-static {v3}, Lcom/sonyericsson/paneview/PaneView;->access$1300(Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/util/Dynamics;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v0, v1, v4, v5}, Lcom/sonyericsson/util/Dynamics;->setState(FFJ)V

    .line 1140
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sonyericsson/paneview/PaneView$3;->this$0:Lcom/sonyericsson/paneview/PaneView;

    invoke-static {v5}, Lcom/sonyericsson/paneview/PaneView;->access$1400(Lcom/sonyericsson/paneview/PaneView;)I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-static {v3, v4, v5}, Lcom/sonyericsson/util/MathUtil;->clamp(III)I

    move-result v3

    int-to-float v2, v3

    .line 1142
    .local v2, snapPosition:F
    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView$3;->this$0:Lcom/sonyericsson/paneview/PaneView;

    invoke-static {v3, p1, v0, v2}, Lcom/sonyericsson/paneview/PaneView;->access$1500(Lcom/sonyericsson/paneview/PaneView;FFF)F

    move-result v2

    .line 1143
    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView$3;->this$0:Lcom/sonyericsson/paneview/PaneView;

    invoke-static {v3}, Lcom/sonyericsson/paneview/PaneView;->access$1300(Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/util/Dynamics;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sonyericsson/util/Dynamics;->setMaxPosition(F)V

    .line 1144
    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView$3;->this$0:Lcom/sonyericsson/paneview/PaneView;

    invoke-static {v3}, Lcom/sonyericsson/paneview/PaneView;->access$1300(Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/util/Dynamics;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sonyericsson/util/Dynamics;->setMinPosition(F)V

    .line 1153
    .end local v2           #snapPosition:F
    :goto_0
    return-void

    .line 1146
    .end local v0           #position:F
    .end local v1           #scaledVelocity:F
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView$3;->this$0:Lcom/sonyericsson/paneview/PaneView;

    neg-float v4, p2

    invoke-static {v3, v4}, Lcom/sonyericsson/paneview/PaneView;->access$1200(Lcom/sonyericsson/paneview/PaneView;F)F

    move-result v1

    .line 1147
    .restart local v1       #scaledVelocity:F
    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView$3;->this$0:Lcom/sonyericsson/paneview/PaneView;

    invoke-static {v3}, Lcom/sonyericsson/paneview/PaneView;->access$1600(Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/util/Dynamics;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v0

    .line 1148
    .restart local v0       #position:F
    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView$3;->this$0:Lcom/sonyericsson/paneview/PaneView;

    invoke-static {v3}, Lcom/sonyericsson/paneview/PaneView;->access$1600(Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/util/Dynamics;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v0, v1, v4, v5}, Lcom/sonyericsson/util/Dynamics;->setState(FFJ)V

    .line 1150
    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView$3;->this$0:Lcom/sonyericsson/paneview/PaneView;

    invoke-static {v3}, Lcom/sonyericsson/paneview/PaneView;->access$1600(Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/util/Dynamics;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView$3;->this$0:Lcom/sonyericsson/paneview/PaneView;

    invoke-static {v4}, Lcom/sonyericsson/paneview/PaneView;->access$1700(Lcom/sonyericsson/paneview/PaneView;)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/util/Dynamics;->setMaxPosition(F)V

    .line 1151
    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView$3;->this$0:Lcom/sonyericsson/paneview/PaneView;

    invoke-static {v3}, Lcom/sonyericsson/paneview/PaneView;->access$1600(Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/util/Dynamics;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sonyericsson/util/Dynamics;->setMinPosition(F)V

    goto :goto_0
.end method

.method public onHorizontalDrag(I)V
    .locals 6
    .parameter "dx"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 1165
    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView$3;->this$0:Lcom/sonyericsson/paneview/PaneView;

    invoke-static {v1}, Lcom/sonyericsson/paneview/PaneView;->access$1800(Lcom/sonyericsson/paneview/PaneView;)V

    .line 1166
    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView$3;->this$0:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v1}, Lcom/sonyericsson/paneview/PaneView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1167
    iput-boolean v2, p0, Lcom/sonyericsson/paneview/PaneView$3;->horizontalDrag:Z

    .line 1168
    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView$3;->this$0:Lcom/sonyericsson/paneview/PaneView;

    invoke-static {v1}, Lcom/sonyericsson/paneview/PaneView;->access$1300(Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/util/Dynamics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v0

    .line 1169
    .local v0, currentPosition:F
    cmpg-float v1, v0, v5

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView$3;->this$0:Lcom/sonyericsson/paneview/PaneView;

    invoke-static {v1}, Lcom/sonyericsson/paneview/PaneView;->access$1400(Lcom/sonyericsson/paneview/PaneView;)I

    move-result v1

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    .line 1170
    :cond_0
    int-to-float v1, p1

    const v2, 0x3ecccccd

    mul-float/2addr v1, v2

    float-to-int p1, v1

    .line 1172
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView$3;->this$0:Lcom/sonyericsson/paneview/PaneView;

    invoke-static {v1}, Lcom/sonyericsson/paneview/PaneView;->access$1300(Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/util/Dynamics;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView$3;->this$0:Lcom/sonyericsson/paneview/PaneView;

    int-to-float v3, p1

    invoke-static {v2, v3}, Lcom/sonyericsson/paneview/PaneView;->access$1200(Lcom/sonyericsson/paneview/PaneView;F)F

    move-result v2

    sub-float v2, v0, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v5, v3, v4}, Lcom/sonyericsson/util/Dynamics;->setState(FFJ)V

    .line 1174
    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView$3;->this$0:Lcom/sonyericsson/paneview/PaneView;

    invoke-static {v1}, Lcom/sonyericsson/paneview/PaneView;->access$1900(Lcom/sonyericsson/paneview/PaneView;)V

    .line 1175
    return-void
.end method

.method public onLongPress(II)Z
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1116
    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView$3;->this$0:Lcom/sonyericsson/paneview/PaneView;

    invoke-static {v1}, Lcom/sonyericsson/paneview/PaneView;->access$600(Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1117
    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView$3;->this$0:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v1}, Lcom/sonyericsson/paneview/PaneView;->getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    .line 1118
    .local v0, listener:Landroid/widget/AdapterView$OnItemLongClickListener;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView$3;->this$0:Lcom/sonyericsson/paneview/PaneView;

    invoke-static {v1}, Lcom/sonyericsson/paneview/PaneView;->access$600(Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    move-result-object v1

    iget-object v1, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1119
    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView$3;->this$0:Lcom/sonyericsson/paneview/PaneView;

    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView$3;->this$0:Lcom/sonyericsson/paneview/PaneView;

    invoke-static {v2}, Lcom/sonyericsson/paneview/PaneView;->access$600(Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    move-result-object v2

    iget-object v2, v2, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView$3;->this$0:Lcom/sonyericsson/paneview/PaneView;

    invoke-static {v3}, Lcom/sonyericsson/paneview/PaneView;->access$600(Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$400(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)I

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView$3;->this$0:Lcom/sonyericsson/paneview/PaneView;

    invoke-static {v4}, Lcom/sonyericsson/paneview/PaneView;->access$600(Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$1000(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    .line 1122
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView$3;->this$0:Lcom/sonyericsson/paneview/PaneView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sonyericsson/paneview/PaneView;->access$602(Lcom/sonyericsson/paneview/PaneView;Lcom/sonyericsson/paneview/PaneView$AdapterItem;)Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    .line 1123
    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView$3;->this$0:Lcom/sonyericsson/paneview/PaneView;

    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView$3;->this$0:Lcom/sonyericsson/paneview/PaneView;

    invoke-static {v2}, Lcom/sonyericsson/paneview/PaneView;->access$800(Lcom/sonyericsson/paneview/PaneView;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/paneview/PaneView;->invalidate(Landroid/graphics/Rect;)V

    .line 1124
    const/4 v1, 0x1

    .line 1131
    .end local v0           #listener:Landroid/widget/AdapterView$OnItemLongClickListener;
    :goto_0
    return v1

    .line 1127
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView$3;->this$0:Lcom/sonyericsson/paneview/PaneView;

    invoke-static {v1}, Lcom/sonyericsson/paneview/PaneView;->access$1100(Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/paneview/PaneView$PaneViewTouchListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1128
    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView$3;->this$0:Lcom/sonyericsson/paneview/PaneView;

    invoke-static {v1}, Lcom/sonyericsson/paneview/PaneView;->access$1100(Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/paneview/PaneView$PaneViewTouchListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/sonyericsson/paneview/PaneView$PaneViewTouchListener;->onLongPress(II)Z

    move-result v1

    goto :goto_0

    .line 1131
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onNotClickOrLongPress()V
    .locals 2

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView$3;->this$0:Lcom/sonyericsson/paneview/PaneView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->access$602(Lcom/sonyericsson/paneview/PaneView;Lcom/sonyericsson/paneview/PaneView$AdapterItem;)Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    .line 1192
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView$3;->this$0:Lcom/sonyericsson/paneview/PaneView;

    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView$3;->this$0:Lcom/sonyericsson/paneview/PaneView;

    invoke-static {v1}, Lcom/sonyericsson/paneview/PaneView;->access$800(Lcom/sonyericsson/paneview/PaneView;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->invalidate(Landroid/graphics/Rect;)V

    .line 1193
    return-void
.end method

.method public onTouchEnd()V
    .locals 2

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView$3;->this$0:Lcom/sonyericsson/paneview/PaneView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->access$602(Lcom/sonyericsson/paneview/PaneView;Lcom/sonyericsson/paneview/PaneView$AdapterItem;)Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    .line 1112
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView$3;->this$0:Lcom/sonyericsson/paneview/PaneView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->access$900(Lcom/sonyericsson/paneview/PaneView;Z)V

    .line 1113
    return-void
.end method

.method public onTouchStart(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView$3;->this$0:Lcom/sonyericsson/paneview/PaneView;

    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView$3;->this$0:Lcom/sonyericsson/paneview/PaneView;

    invoke-static {v1}, Lcom/sonyericsson/paneview/PaneView;->access$500(Lcom/sonyericsson/paneview/PaneView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1106
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView$3;->this$0:Lcom/sonyericsson/paneview/PaneView;

    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView$3;->this$0:Lcom/sonyericsson/paneview/PaneView;

    invoke-static {v1, p1, p2}, Lcom/sonyericsson/paneview/PaneView;->access$700(Lcom/sonyericsson/paneview/PaneView;II)Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->access$602(Lcom/sonyericsson/paneview/PaneView;Lcom/sonyericsson/paneview/PaneView$AdapterItem;)Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    .line 1107
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView$3;->this$0:Lcom/sonyericsson/paneview/PaneView;

    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView$3;->this$0:Lcom/sonyericsson/paneview/PaneView;

    invoke-static {v1}, Lcom/sonyericsson/paneview/PaneView;->access$800(Lcom/sonyericsson/paneview/PaneView;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->invalidate(Landroid/graphics/Rect;)V

    .line 1108
    return-void
.end method

.method public onVerticalDrag(I)V
    .locals 6
    .parameter "dy"

    .prologue
    const/4 v5, 0x0

    .line 1178
    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView$3;->this$0:Lcom/sonyericsson/paneview/PaneView;

    invoke-static {v1}, Lcom/sonyericsson/paneview/PaneView;->access$1800(Lcom/sonyericsson/paneview/PaneView;)V

    .line 1179
    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView$3;->this$0:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v1}, Lcom/sonyericsson/paneview/PaneView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1180
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonyericsson/paneview/PaneView$3;->horizontalDrag:Z

    .line 1181
    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView$3;->this$0:Lcom/sonyericsson/paneview/PaneView;

    invoke-static {v1}, Lcom/sonyericsson/paneview/PaneView;->access$1600(Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/util/Dynamics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v0

    .line 1182
    .local v0, currentPosition:F
    cmpg-float v1, v0, v5

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView$3;->this$0:Lcom/sonyericsson/paneview/PaneView;

    invoke-static {v1}, Lcom/sonyericsson/paneview/PaneView;->access$1700(Lcom/sonyericsson/paneview/PaneView;)F

    move-result v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    .line 1183
    :cond_0
    int-to-float v1, p1

    const v2, 0x3ecccccd

    mul-float/2addr v1, v2

    float-to-int p1, v1

    .line 1185
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView$3;->this$0:Lcom/sonyericsson/paneview/PaneView;

    invoke-static {v1}, Lcom/sonyericsson/paneview/PaneView;->access$1600(Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/util/Dynamics;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView$3;->this$0:Lcom/sonyericsson/paneview/PaneView;

    int-to-float v3, p1

    invoke-static {v2, v3}, Lcom/sonyericsson/paneview/PaneView;->access$1200(Lcom/sonyericsson/paneview/PaneView;F)F

    move-result v2

    sub-float v2, v0, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v5, v3, v4}, Lcom/sonyericsson/util/Dynamics;->setState(FFJ)V

    .line 1187
    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView$3;->this$0:Lcom/sonyericsson/paneview/PaneView;

    invoke-static {v1}, Lcom/sonyericsson/paneview/PaneView;->access$1900(Lcom/sonyericsson/paneview/PaneView;)V

    .line 1188
    return-void
.end method
