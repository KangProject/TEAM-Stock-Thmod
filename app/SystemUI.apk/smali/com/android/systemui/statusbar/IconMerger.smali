.class public Lcom/android/systemui/statusbar/IconMerger;
.super Landroid/widget/LinearLayout;
.source "IconMerger.java"


# instance fields
.field private mIconSize:I

.field private mMoreIcon:Lcom/android/internal/statusbar/StatusBarIcon;

.field private mMoreView:Lcom/android/systemui/statusbar/StatusBarIconView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    const/4 v1, 0x0

    const v2, 0x7f02000f

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/IconMerger;->mMoreIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/IconMerger;->mIconSize:I

    .line 48
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    const-string v1, "more"

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/IconMerger;->mMoreView:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 49
    iget-object v0, p0, Lcom/android/systemui/statusbar/IconMerger;->mMoreView:Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/IconMerger;->mMoreIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 50
    iget-object v0, p0, Lcom/android/systemui/statusbar/IconMerger;->mMoreView:Lcom/android/systemui/statusbar/StatusBarIconView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/android/systemui/statusbar/IconMerger;->mIconSize:I

    iget v3, p0, Lcom/android/systemui/statusbar/IconMerger;->mIconSize:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v4, v1}, Lcom/android/systemui/statusbar/IconMerger;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 51
    return-void
.end method


# virtual methods
.method public addView(Lcom/android/systemui/statusbar/StatusBarIconView;I)V
    .locals 3
    .parameter "v"
    .parameter "index"

    .prologue
    .line 54
    if-nez p2, :cond_0

    .line 55
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempt to put view before the more view: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/android/systemui/statusbar/IconMerger;->mIconSize:I

    iget v2, p0, Lcom/android/systemui/statusbar/IconMerger;->mIconSize:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/IconMerger;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 58
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 25
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 62
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 64
    sub-int v15, p4, p2

    .line 65
    .local v15, maxWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/IconMerger;->getChildCount()I

    move-result v5

    .line 69
    .local v5, N:I
    const/4 v13, -0x1

    .line 70
    .local v13, fitRight:I
    const/16 v21, 0x1

    sub-int v14, v5, v21

    .local v14, i:I
    :goto_0
    if-ltz v14, :cond_0

    .line 71
    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/IconMerger;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 72
    .local v8, child:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    .line 73
    invoke-virtual {v8}, Landroid/view/View;->getLayoutedRight()I

    move-result v13

    .line 79
    .end local v8           #child:Landroid/view/View;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/IconMerger;->mMoreView:Lcom/android/systemui/statusbar/StatusBarIconView;

    move-object/from16 v16, v0

    .line 80
    .local v16, moreView:Lcom/android/systemui/statusbar/StatusBarIconView;
    const/4 v12, -0x1

    .line 81
    .local v12, fitLeft:I
    const/16 v20, -0x1

    .line 82
    .local v20, startIndex:I
    const/4 v14, 0x0

    :goto_1
    if-ge v14, v5, :cond_4

    .line 83
    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/IconMerger;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 84
    .restart local v8       #child:Landroid/view/View;
    move-object v0, v8

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_3

    .line 85
    add-int/lit8 v20, v14, 0x1

    .line 82
    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 70
    .end local v12           #fitLeft:I
    .end local v16           #moreView:Lcom/android/systemui/statusbar/StatusBarIconView;
    .end local v20           #startIndex:I
    :cond_2
    add-int/lit8 v14, v14, -0x1

    goto :goto_0

    .line 87
    .restart local v12       #fitLeft:I
    .restart local v16       #moreView:Lcom/android/systemui/statusbar/StatusBarIconView;
    .restart local v20       #startIndex:I
    :cond_3
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_1

    .line 88
    invoke-virtual {v8}, Landroid/view/View;->getLayoutedLeft()I

    move-result v12

    .line 93
    .end local v8           #child:Landroid/view/View;
    :cond_4
    if-eqz v16, :cond_5

    if-gez v20, :cond_6

    .line 143
    :cond_5
    :goto_2
    return-void

    .line 103
    :cond_6
    const/4 v6, 0x0

    .line 104
    .local v6, adjust:I
    sub-int v21, v13, v12

    move/from16 v0, v21

    move v1, v15

    if-gt v0, v1, :cond_7

    .line 105
    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/StatusBarIconView;->getLayoutedLeft()I

    move-result v21

    sub-int v6, v12, v21

    .line 106
    sub-int/2addr v12, v6

    .line 107
    sub-int/2addr v13, v6

    .line 108
    const/16 v21, 0x0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/StatusBarIconView;->getTop()I

    move-result v22

    const/16 v23, 0x0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/StatusBarIconView;->getBottom()I

    move-result v24

    move-object/from16 v0, v16

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->layout(IIII)V

    .line 110
    :cond_7
    sub-int v11, v13, p4

    .line 111
    .local v11, extra:I
    const/16 v19, -0x1

    .line 113
    .local v19, shift:I
    add-int v21, v12, v11

    add-int v7, v21, v6

    .line 114
    .local v7, breakingPoint:I
    const/16 v18, 0x0

    .line 115
    .local v18, number:I
    move/from16 v14, v20

    :goto_3
    if-ge v14, v5, :cond_c

    .line 116
    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/IconMerger;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 117
    .local v8, child:Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/StatusBarIconView;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_8

    .line 118
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/StatusBarIconView;->getLayoutedLeft()I

    move-result v9

    .line 119
    .local v9, childLeft:I
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/StatusBarIconView;->getLayoutedRight()I

    move-result v10

    .line 120
    .local v10, childRight:I
    if-ge v9, v7, :cond_a

    .line 122
    const/16 v21, 0x0

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/StatusBarIconView;->getTop()I

    move-result v22

    const/16 v23, 0x0

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/StatusBarIconView;->getBottom()I

    move-result v24

    move-object v0, v8

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->layout(IIII)V

    .line 123
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/internal/statusbar/StatusBarIcon;->number:I

    move/from16 v17, v0

    .line 124
    .local v17, n:I
    if-nez v17, :cond_9

    .line 125
    add-int/lit8 v18, v18, 0x1

    .line 115
    .end local v9           #childLeft:I
    .end local v10           #childRight:I
    .end local v17           #n:I
    :cond_8
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 126
    .restart local v9       #childLeft:I
    .restart local v10       #childRight:I
    .restart local v17       #n:I
    :cond_9
    if-lez v17, :cond_8

    .line 127
    add-int v18, v18, v17

    goto :goto_4

    .line 131
    .end local v17           #n:I
    :cond_a
    if-gez v19, :cond_b

    .line 132
    sub-int v19, v9, v12

    .line 135
    :cond_b
    sub-int v21, v9, v19

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/StatusBarIconView;->getTop()I

    move-result v22

    sub-int v23, v10, v19

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/StatusBarIconView;->getBottom()I

    move-result v24

    move-object v0, v8

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->layout(IIII)V

    goto :goto_4

    .line 141
    .end local v8           #child:Lcom/android/systemui/statusbar/StatusBarIconView;
    .end local v9           #childLeft:I
    .end local v10           #childRight:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/IconMerger;->mMoreIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    move-object/from16 v21, v0

    move/from16 v0, v18

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/internal/statusbar/StatusBarIcon;->number:I

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/IconMerger;->mMoreView:Lcom/android/systemui/statusbar/StatusBarIconView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/IconMerger;->mMoreIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    goto/16 :goto_2
.end method
