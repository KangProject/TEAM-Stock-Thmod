.class public Lcom/android/browser/TitleBar;
.super Landroid/widget/LinearLayout;
.source "TitleBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/TitleBar$1;,
        Lcom/android/browser/TitleBar$MyHandler;
    }
.end annotation


# static fields
.field private static LONG_PRESS:I


# instance fields
.field private mArcsSpan:Landroid/text/style/ImageSpan;

.field private mBookmarkDrawable:Landroid/graphics/drawable/Drawable;

.field private mBrowserActivity:Lcom/android/browser/BrowserActivity;

.field private mCircularProgress:Landroid/graphics/drawable/Drawable;

.field private mFavicon:Landroid/widget/ImageView;

.field private mGenericFavicon:Landroid/graphics/drawable/Drawable;

.field private mHandler:Lcom/android/browser/TitleBar$MyHandler;

.field private mHorizontalProgress:Landroid/widget/ProgressBar;

.field private mIconDimension:I

.field private mInLoad:Z

.field private mInVoiceMode:Z

.field private mLeftMargin:I

.field private mLoadingBackground:Landroid/graphics/drawable/Drawable;

.field private mLockIcon:Landroid/widget/ImageView;

.field private mNormalBackground:Landroid/graphics/drawable/Drawable;

.field private mRightMargin:I

.field private mRtButton:Landroid/widget/ImageView;

.field private mStopButton:Landroid/widget/ImageView;

.field private mTitle:Landroid/widget/TextView;

.field private mTitleBg:Landroid/view/View;

.field private mVoiceDrawable:Landroid/graphics/drawable/Drawable;

.field private mVoiceModeBackground:Landroid/graphics/drawable/Drawable;

.field private mVoiceSearchIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x1

    sput v0, Lcom/android/browser/TitleBar;->LONG_PRESS:I

    return-void
.end method

.method public constructor <init>(Lcom/android/browser/BrowserActivity;)V
    .locals 11
    .parameter "context"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 87
    invoke-direct {p0, p1, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    new-instance v5, Lcom/android/browser/TitleBar$MyHandler;

    invoke-direct {v5, p0, v10}, Lcom/android/browser/TitleBar$MyHandler;-><init>(Lcom/android/browser/TitleBar;Lcom/android/browser/TitleBar$1;)V

    iput-object v5, p0, Lcom/android/browser/TitleBar;->mHandler:Lcom/android/browser/TitleBar$MyHandler;

    .line 89
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 90
    .local v0, factory:Landroid/view/LayoutInflater;
    const v5, 0x7f030018

    invoke-virtual {v0, v5, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 91
    iput-object p1, p0, Lcom/android/browser/TitleBar;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    .line 93
    const v5, 0x7f0c0002

    invoke-virtual {p0, v5}, Lcom/android/browser/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/browser/TitleBar;->mTitle:Landroid/widget/TextView;

    .line 94
    iget-object v5, p0, Lcom/android/browser/TitleBar;->mTitle:Landroid/widget/TextView;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 96
    const v5, 0x7f0c0050

    invoke-virtual {p0, v5}, Lcom/android/browser/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/browser/TitleBar;->mTitleBg:Landroid/view/View;

    .line 97
    const v5, 0x7f0c0051

    invoke-virtual {p0, v5}, Lcom/android/browser/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/browser/TitleBar;->mLockIcon:Landroid/widget/ImageView;

    .line 98
    const v5, 0x7f0c0001

    invoke-virtual {p0, v5}, Lcom/android/browser/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/browser/TitleBar;->mFavicon:Landroid/widget/ImageView;

    .line 99
    const v5, 0x7f0c0052

    invoke-virtual {p0, v5}, Lcom/android/browser/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/browser/TitleBar;->mStopButton:Landroid/widget/ImageView;

    .line 101
    const v5, 0x7f0c0053

    invoke-virtual {p0, v5}, Lcom/android/browser/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/browser/TitleBar;->mRtButton:Landroid/widget/ImageView;

    .line 102
    invoke-virtual {p1}, Lcom/android/browser/BrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 103
    .local v3, resources:Landroid/content/res/Resources;
    const v5, 0x1080292

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/browser/TitleBar;->mCircularProgress:Landroid/graphics/drawable/Drawable;

    .line 105
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 106
    .local v1, metrics:Landroid/util/DisplayMetrics;
    const/high16 v5, 0x4100

    invoke-static {v8, v5, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/android/browser/TitleBar;->mLeftMargin:I

    .line 108
    const/high16 v5, 0x40c0

    invoke-static {v8, v5, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/android/browser/TitleBar;->mRightMargin:I

    .line 110
    const/high16 v5, 0x41a0

    invoke-static {v8, v5, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/android/browser/TitleBar;->mIconDimension:I

    .line 112
    iget-object v5, p0, Lcom/android/browser/TitleBar;->mCircularProgress:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Lcom/android/browser/TitleBar;->mIconDimension:I

    iget v7, p0, Lcom/android/browser/TitleBar;->mIconDimension:I

    invoke-virtual {v5, v9, v9, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 113
    const v5, 0x7f0c004f

    invoke-virtual {p0, v5}, Lcom/android/browser/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    iput-object v5, p0, Lcom/android/browser/TitleBar;->mHorizontalProgress:Landroid/widget/ProgressBar;

    .line 115
    invoke-virtual {p1}, Lcom/android/browser/BrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f02

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/browser/TitleBar;->mGenericFavicon:Landroid/graphics/drawable/Drawable;

    .line 117
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.speech.action.WEB_SEARCH"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/browser/TitleBar;->mVoiceSearchIntent:Landroid/content/Intent;

    .line 118
    iget-object v5, p0, Lcom/android/browser/TitleBar;->mVoiceSearchIntent:Landroid/content/Intent;

    const-string v6, "android.speech.extra.LANGUAGE_MODEL"

    const-string v7, "web_search"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    iget-object v5, p0, Lcom/android/browser/TitleBar;->mVoiceSearchIntent:Landroid/content/Intent;

    const-string v6, "android.speech.extras.SEND_APPLICATION_ID_EXTRA"

    invoke-virtual {v5, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 125
    invoke-virtual {p1}, Lcom/android/browser/BrowserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 126
    .local v2, pm:Landroid/content/pm/PackageManager;
    iget-object v5, p0, Lcom/android/browser/TitleBar;->mVoiceSearchIntent:Landroid/content/Intent;

    const/high16 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 128
    .local v4, ri:Landroid/content/pm/ResolveInfo;
    if-nez v4, :cond_0

    .line 129
    iput-object v10, p0, Lcom/android/browser/TitleBar;->mVoiceSearchIntent:Landroid/content/Intent;

    .line 134
    :goto_0
    iget-object v5, p0, Lcom/android/browser/TitleBar;->mRtButton:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/browser/TitleBar;->mBookmarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 135
    const v5, 0x7f020048

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/browser/TitleBar;->mVoiceModeBackground:Landroid/graphics/drawable/Drawable;

    .line 137
    iget-object v5, p0, Lcom/android/browser/TitleBar;->mTitleBg:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/browser/TitleBar;->mNormalBackground:Landroid/graphics/drawable/Drawable;

    .line 138
    const v5, 0x7f020046

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/browser/TitleBar;->mLoadingBackground:Landroid/graphics/drawable/Drawable;

    .line 139
    new-instance v5, Landroid/text/style/ImageSpan;

    const v6, 0x7f020002

    invoke-direct {v5, p1, v6, v8}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    iput-object v5, p0, Lcom/android/browser/TitleBar;->mArcsSpan:Landroid/text/style/ImageSpan;

    .line 141
    return-void

    .line 131
    :cond_0
    const v5, 0x10800a4

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/browser/TitleBar;->mVoiceDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 58
    sget v0, Lcom/android/browser/TitleBar;->LONG_PRESS:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/browser/TitleBar;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mTitleBg:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/browser/TitleBar;)Lcom/android/browser/BrowserActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    return-object v0
.end method


# virtual methods
.method public createContextMenu(Landroid/view/ContextMenu;)V
    .locals 3
    .parameter "menu"

    .prologue
    .line 159
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v1}, Lcom/android/browser/BrowserActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 160
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f0b000a

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 161
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p0, v2}, Lcom/android/browser/BrowserActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 162
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "event"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string v13, "extra_event"

    const-string v12, "com.android.common.speech.LOG_EVENT"

    .line 166
    iget-boolean v7, p0, Lcom/android/browser/TitleBar;->mInLoad:Z

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/browser/TitleBar;->mStopButton:Landroid/widget/ImageView;

    move-object v0, v7

    .line 167
    .local v0, button:Landroid/widget/ImageView;
    :goto_0
    iget-object v7, p0, Lcom/android/browser/TitleBar;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    invoke-static {v7}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    .line 169
    .local v3, slop:I
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v7

    sub-int/2addr v7, v3

    invoke-virtual {v0}, Landroid/widget/ImageView;->getRight()I

    move-result v8

    add-int/2addr v8, v3

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v9

    invoke-direct {v1, v7, v10, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 171
    .local v1, buttonRect:Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/browser/TitleBar;->mTitleBg:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    iget-object v8, p0, Lcom/android/browser/TitleBar;->mTitleBg:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v8

    iget-object v9, p0, Lcom/android/browser/TitleBar;->mTitleBg:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-direct {v4, v7, v10, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 172
    .local v4, titleRect:Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v5, v7

    .line 173
    .local v5, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v6, v7

    .line 174
    .local v6, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 240
    :cond_0
    :goto_1
    return v11

    .line 166
    .end local v0           #button:Landroid/widget/ImageView;
    .end local v1           #buttonRect:Landroid/graphics/Rect;
    .end local v3           #slop:I
    .end local v4           #titleRect:Landroid/graphics/Rect;
    .end local v5           #x:I
    .end local v6           #y:I
    :cond_1
    iget-object v7, p0, Lcom/android/browser/TitleBar;->mRtButton:Landroid/widget/ImageView;

    move-object v0, v7

    goto :goto_0

    .line 176
    .restart local v0       #button:Landroid/widget/ImageView;
    .restart local v1       #buttonRect:Landroid/graphics/Rect;
    .restart local v3       #slop:I
    .restart local v4       #titleRect:Landroid/graphics/Rect;
    .restart local v5       #x:I
    .restart local v6       #y:I
    :pswitch_0
    invoke-virtual {v1, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 177
    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setPressed(Z)V

    goto :goto_1

    .line 178
    :cond_2
    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 179
    iget-object v7, p0, Lcom/android/browser/TitleBar;->mTitleBg:Landroid/view/View;

    invoke-virtual {v7, v11}, Landroid/view/View;->setPressed(Z)V

    .line 180
    iget-object v7, p0, Lcom/android/browser/TitleBar;->mHandler:Lcom/android/browser/TitleBar$MyHandler;

    iget-object v8, p0, Lcom/android/browser/TitleBar;->mHandler:Lcom/android/browser/TitleBar$MyHandler;

    sget v9, Lcom/android/browser/TitleBar;->LONG_PRESS:I

    invoke-virtual {v8, v9}, Lcom/android/browser/TitleBar$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/browser/TitleBar$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 186
    :pswitch_1
    iget-object v7, p0, Lcom/android/browser/TitleBar;->mTitleBg:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->isPressed()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-nez v7, :cond_3

    .line 187
    iget-object v7, p0, Lcom/android/browser/TitleBar;->mTitleBg:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->setPressed(Z)V

    .line 188
    iget-object v7, p0, Lcom/android/browser/TitleBar;->mHandler:Lcom/android/browser/TitleBar$MyHandler;

    sget v8, Lcom/android/browser/TitleBar;->LONG_PRESS:I

    invoke-virtual {v7, v8}, Lcom/android/browser/TitleBar$MyHandler;->removeMessages(I)V

    .line 190
    :cond_3
    invoke-virtual {v0}, Landroid/widget/ImageView;->isPressed()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-nez v7, :cond_0

    .line 191
    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 192
    iget-object v7, p0, Lcom/android/browser/TitleBar;->mHandler:Lcom/android/browser/TitleBar$MyHandler;

    sget v8, Lcom/android/browser/TitleBar;->LONG_PRESS:I

    invoke-virtual {v7, v8}, Lcom/android/browser/TitleBar$MyHandler;->removeMessages(I)V

    goto :goto_1

    .line 196
    :pswitch_2
    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 197
    iget-object v7, p0, Lcom/android/browser/TitleBar;->mTitleBg:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->setPressed(Z)V

    .line 198
    iget-object v7, p0, Lcom/android/browser/TitleBar;->mHandler:Lcom/android/browser/TitleBar$MyHandler;

    sget v8, Lcom/android/browser/TitleBar;->LONG_PRESS:I

    invoke-virtual {v7, v8}, Lcom/android/browser/TitleBar$MyHandler;->removeMessages(I)V

    goto :goto_1

    .line 201
    :pswitch_3
    invoke-virtual {v0}, Landroid/widget/ImageView;->isPressed()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 202
    iget-boolean v7, p0, Lcom/android/browser/TitleBar;->mInVoiceMode:Z

    if-eqz v7, :cond_5

    .line 203
    iget-object v7, p0, Lcom/android/browser/TitleBar;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v7}, Lcom/android/browser/BrowserActivity;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/browser/Tab;->voiceSearchSourceIsGoogle()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 205
    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.android.common.speech.LOG_EVENT"

    invoke-direct {v2, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 207
    .local v2, i:Landroid/content/Intent;
    const-string v7, "extra_event"

    invoke-virtual {v2, v13, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 209
    iget-object v7, p0, Lcom/android/browser/TitleBar;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v7, v2}, Lcom/android/browser/BrowserActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 211
    .end local v2           #i:Landroid/content/Intent;
    :cond_4
    iget-object v7, p0, Lcom/android/browser/TitleBar;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    iget-object v8, p0, Lcom/android/browser/TitleBar;->mVoiceSearchIntent:Landroid/content/Intent;

    invoke-virtual {v7, v8}, Lcom/android/browser/BrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 217
    :goto_2
    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setPressed(Z)V

    goto/16 :goto_1

    .line 212
    :cond_5
    iget-boolean v7, p0, Lcom/android/browser/TitleBar;->mInLoad:Z

    if-eqz v7, :cond_6

    .line 213
    iget-object v7, p0, Lcom/android/browser/TitleBar;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v7}, Lcom/android/browser/BrowserActivity;->stopLoading()V

    goto :goto_2

    .line 215
    :cond_6
    iget-object v7, p0, Lcom/android/browser/TitleBar;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v7, v10}, Lcom/android/browser/BrowserActivity;->bookmarksOrHistoryPicker(Z)V

    goto :goto_2

    .line 218
    :cond_7
    iget-object v7, p0, Lcom/android/browser/TitleBar;->mTitleBg:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->isPressed()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 219
    iget-object v7, p0, Lcom/android/browser/TitleBar;->mHandler:Lcom/android/browser/TitleBar$MyHandler;

    sget v8, Lcom/android/browser/TitleBar;->LONG_PRESS:I

    invoke-virtual {v7, v8}, Lcom/android/browser/TitleBar$MyHandler;->removeMessages(I)V

    .line 220
    iget-boolean v7, p0, Lcom/android/browser/TitleBar;->mInVoiceMode:Z

    if-eqz v7, :cond_9

    .line 221
    iget-object v7, p0, Lcom/android/browser/TitleBar;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v7}, Lcom/android/browser/BrowserActivity;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/browser/Tab;->voiceSearchSourceIsGoogle()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 223
    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.android.common.speech.LOG_EVENT"

    invoke-direct {v2, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 225
    .restart local v2       #i:Landroid/content/Intent;
    const-string v7, "extra_event"

    invoke-virtual {v2, v13, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 227
    iget-object v7, p0, Lcom/android/browser/TitleBar;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v7, v2}, Lcom/android/browser/BrowserActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 229
    .end local v2           #i:Landroid/content/Intent;
    :cond_8
    iget-object v7, p0, Lcom/android/browser/TitleBar;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    iget-object v8, p0, Lcom/android/browser/TitleBar;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/browser/BrowserActivity;->showVoiceSearchResults(Ljava/lang/String;)V

    .line 234
    :goto_3
    iget-object v7, p0, Lcom/android/browser/TitleBar;->mTitleBg:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->setPressed(Z)V

    goto/16 :goto_1

    .line 232
    :cond_9
    iget-object v7, p0, Lcom/android/browser/TitleBar;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v7}, Lcom/android/browser/BrowserActivity;->editUrl()V

    goto :goto_3

    .line 174
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method setDisplayTitle(Ljava/lang/String;)V
    .locals 5
    .parameter "title"

    .prologue
    .line 353
    if-nez p1, :cond_0

    .line 354
    iget-object v2, p0, Lcom/android/browser/TitleBar;->mTitle:Landroid/widget/TextView;

    const v3, 0x7f080012

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 369
    :goto_0
    return-void

    .line 356
    :cond_0
    iget-boolean v2, p0, Lcom/android/browser/TitleBar;->mInVoiceMode:Z

    if-eqz v2, :cond_1

    .line 360
    new-instance v1, Landroid/text/SpannableString;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 361
    .local v1, spannable:Landroid/text/SpannableString;
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v0

    .line 362
    .local v0, end:I
    iget-object v2, p0, Lcom/android/browser/TitleBar;->mArcsSpan:Landroid/text/style/ImageSpan;

    const/4 v3, 0x1

    sub-int v3, v0, v3

    const/16 v4, 0x12

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 364
    iget-object v2, p0, Lcom/android/browser/TitleBar;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 366
    .end local v0           #end:I
    .end local v1           #spannable:Landroid/text/SpannableString;
    :cond_1
    iget-object v2, p0, Lcom/android/browser/TitleBar;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method setFavicon(Landroid/graphics/Bitmap;)V
    .locals 9
    .parameter "icon"

    .prologue
    const/4 v1, 0x1

    const/4 v8, 0x2

    .line 247
    const/4 v2, 0x3

    new-array v6, v2, [Landroid/graphics/drawable/Drawable;

    .line 248
    .local v6, array:[Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    new-instance v3, Landroid/graphics/drawable/PaintDrawable;

    const/high16 v4, -0x100

    invoke-direct {v3, v4}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    aput-object v3, v6, v2

    .line 249
    new-instance v7, Landroid/graphics/drawable/PaintDrawable;

    const/4 v2, -0x1

    invoke-direct {v7, v2}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    .line 250
    .local v7, p:Landroid/graphics/drawable/PaintDrawable;
    aput-object v7, v6, v1

    .line 251
    if-nez p1, :cond_0

    .line 252
    iget-object v2, p0, Lcom/android/browser/TitleBar;->mGenericFavicon:Landroid/graphics/drawable/Drawable;

    aput-object v2, v6, v8

    .line 256
    :goto_0
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .local v0, d:Landroid/graphics/drawable/LayerDrawable;
    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    .line 257
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    move v1, v8

    move v2, v8

    move v3, v8

    move v4, v8

    move v5, v8

    .line 258
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 259
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mFavicon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 260
    return-void

    .line 254
    .end local v0           #d:Landroid/graphics/drawable/LayerDrawable;
    :cond_0
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    aput-object v2, v6, v8

    goto :goto_0
.end method

.method setInVoiceMode(Z)V
    .locals 8
    .parameter "inVoiceMode"

    .prologue
    const/4 v7, 0x1

    const/16 v3, 0x8

    const/4 v6, 0x0

    .line 267
    iget-boolean v1, p0, Lcom/android/browser/TitleBar;->mInVoiceMode:Z

    if-ne v1, p1, :cond_0

    .line 295
    :goto_0
    return-void

    .line 268
    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/browser/TitleBar;->mVoiceSearchIntent:Landroid/content/Intent;

    if-eqz v1, :cond_1

    move v1, v7

    :goto_1
    iput-boolean v1, p0, Lcom/android/browser/TitleBar;->mInVoiceMode:Z

    .line 270
    iget-boolean v1, p0, Lcom/android/browser/TitleBar;->mInVoiceMode:Z

    if-eqz v1, :cond_2

    .line 271
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mRtButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/browser/TitleBar;->mVoiceDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 272
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mVoiceModeBackground:Landroid/graphics/drawable/Drawable;

    .line 273
    .local v0, titleDrawable:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mTitle:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 274
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mRtButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 275
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mStopButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 276
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mTitleBg:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 277
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mTitleBg:Landroid/view/View;

    iget v2, p0, Lcom/android/browser/TitleBar;->mLeftMargin:I

    iget-object v3, p0, Lcom/android/browser/TitleBar;->mTitleBg:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget v4, p0, Lcom/android/browser/TitleBar;->mRightMargin:I

    iget-object v5, p0, Lcom/android/browser/TitleBar;->mTitleBg:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 294
    :goto_2
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mTitle:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/android/browser/TitleBar;->mInVoiceMode:Z

    if-nez v2, :cond_4

    move v2, v7

    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto :goto_0

    .end local v0           #titleDrawable:Landroid/graphics/drawable/Drawable;
    :cond_1
    move v1, v6

    .line 268
    goto :goto_1

    .line 280
    :cond_2
    iget-boolean v1, p0, Lcom/android/browser/TitleBar;->mInLoad:Z

    if-eqz v1, :cond_3

    .line 281
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mLoadingBackground:Landroid/graphics/drawable/Drawable;

    .line 282
    .restart local v0       #titleDrawable:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mRtButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 283
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mStopButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 290
    :goto_4
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mTitle:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 291
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mTitleBg:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 292
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mTitleBg:Landroid/view/View;

    iget v2, p0, Lcom/android/browser/TitleBar;->mLeftMargin:I

    iget v3, p0, Lcom/android/browser/TitleBar;->mRightMargin:I

    invoke-virtual {v1, v2, v6, v3, v6}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_2

    .line 285
    .end local v0           #titleDrawable:Landroid/graphics/drawable/Drawable;
    :cond_3
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mNormalBackground:Landroid/graphics/drawable/Drawable;

    .line 286
    .restart local v0       #titleDrawable:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mRtButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 287
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mStopButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 288
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mRtButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/browser/TitleBar;->mBookmarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_4
    move v2, v6

    .line 294
    goto :goto_3
.end method

.method setLock(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 301
    if-nez p1, :cond_0

    .line 302
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mLockIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 307
    :goto_0
    return-void

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mLockIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 305
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mLockIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method setProgress(I)V
    .locals 5
    .parameter "newProgress"

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 313
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mHorizontalProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    if-lt p1, v0, :cond_2

    .line 314
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 315
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mCircularProgress:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 316
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mHorizontalProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 317
    iget-boolean v0, p0, Lcom/android/browser/TitleBar;->mInVoiceMode:Z

    if-nez v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mRtButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/browser/TitleBar;->mBookmarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 319
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mRtButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mStopButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mTitleBg:Landroid/view/View;

    iget-object v1, p0, Lcom/android/browser/TitleBar;->mNormalBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 322
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mTitleBg:Landroid/view/View;

    iget v1, p0, Lcom/android/browser/TitleBar;->mLeftMargin:I

    iget v2, p0, Lcom/android/browser/TitleBar;->mRightMargin:I

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 324
    :cond_0
    iput-boolean v3, p0, Lcom/android/browser/TitleBar;->mInLoad:Z

    .line 345
    :cond_1
    :goto_0
    return-void

    .line 326
    :cond_2
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mHorizontalProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 327
    iget-boolean v0, p0, Lcom/android/browser/TitleBar;->mInLoad:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/browser/TitleBar;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 332
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/browser/TitleBar;->mCircularProgress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 334
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mCircularProgress:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 335
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mHorizontalProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 336
    iget-boolean v0, p0, Lcom/android/browser/TitleBar;->mInVoiceMode:Z

    if-nez v0, :cond_3

    .line 337
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mTitleBg:Landroid/view/View;

    iget-object v1, p0, Lcom/android/browser/TitleBar;->mLoadingBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 338
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mTitleBg:Landroid/view/View;

    iget v1, p0, Lcom/android/browser/TitleBar;->mLeftMargin:I

    iget v2, p0, Lcom/android/browser/TitleBar;->mRightMargin:I

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 339
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mRtButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 340
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mStopButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 342
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/TitleBar;->mInLoad:Z

    goto :goto_0
.end method
