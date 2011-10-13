.class public Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;
.super Landroid/widget/RelativeLayout;
.source "BackupSelectionUnlockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final AWAKE_POKE_MILLIS:I = 0x3a98

.field private static final DEBUG:Z = false

.field private static final GOOGLE_ACCOUNT:I = 0x1

.field private static final LOCK_SCREEN_TAG:Ljava/lang/String; = "BackupSelectionUnlockScreen"

.field private static final SECURITY_QUESTION:I


# instance fields
.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private final mContext:Landroid/content/Context;

.field private mEmergencyCall:Landroid/widget/Button;

.field private final mKeyboardOpen:Z

.field private final mListView:Landroid/widget/ListView;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mNextButton:Landroid/widget/Button;

.field private mSelectedPosition:I

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;)V
    .registers 8
    .parameter "context"
    .parameter "updateMonitor"
    .parameter "callback"
    .parameter "lockPatternUtils"

    .prologue
    const/4 v2, 0x1

    .line 81
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->mSelectedPosition:I

    .line 82
    iput-object p1, p0, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->mContext:Landroid/content/Context;

    .line 83
    iput-object p2, p0, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 84
    iput-object p3, p0, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 85
    iput-object p4, p0, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 87
    invoke-direct {p0}, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->queryKeyboardOpen()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->mKeyboardOpen:Z

    .line 89
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090032

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 92
    const v0, 0x10201c7

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->mListView:Landroid/widget/ListView;

    .line 93
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen$1;-><init>(Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 103
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->populateList(Landroid/content/Context;)V

    .line 105
    const v0, 0x10201c9

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->mNextButton:Landroid/widget/Button;

    .line 106
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->setFocusableInTouchMode(Z)V

    .line 110
    const v0, 0x10201c6

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->mEmergencyCall:Landroid/widget/Button;

    .line 111
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->mEmergencyCall:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->mSelectedPosition:I

    return p1
.end method

.method private populateList(Landroid/content/Context;)V
    .registers 13
    .parameter "context"

    .prologue
    .line 115
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "heading"

    aput-object v2, v4, v1

    const/4 v1, 0x1

    const-string v2, "text"

    aput-object v2, v4, v1

    .line 116
    .local v4, fromKeys:[Ljava/lang/String;
    const/4 v1, 0x2

    new-array v5, v1, [I

    fill-array-data v5, :array_7a

    .line 117
    .local v5, toIds:[I
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 118
    .local v7, firstRow:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 120
    .local v9, secondRow:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x2

    new-array v10, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const v2, 0x10400ad

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v1

    const/4 v1, 0x1

    const v2, 0x10400ae

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v1

    .line 123
    .local v10, securityValues:[Ljava/lang/String;
    const/4 v1, 0x2

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const v2, 0x10400af

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v1

    const/4 v1, 0x1

    const v2, 0x10400ae

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v1

    .line 126
    .local v6, accountValues:[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, pos:I
    :goto_4c
    const/4 v1, 0x2

    if-ge v8, v1, :cond_60

    .line 127
    aget-object v1, v4, v8

    aget-object v2, v10, v8

    invoke-virtual {v7, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    aget-object v1, v4, v8

    aget-object v2, v6, v8

    invoke-virtual {v9, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    add-int/lit8 v8, v8, 0x1

    goto :goto_4c

    .line 130
    :cond_60
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v2, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    const v3, 0x1090033

    .line 135
    .local v3, id:I
    new-instance v0, Landroid/widget/SimpleAdapter;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 136
    .local v0, adapter:Landroid/widget/SimpleAdapter;
    iget-object v1, p0, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 137
    return-void

    .line 116
    :array_7a
    .array-data 0x4
        0x95t 0x1t 0x2t 0x1t
        0x96t 0x1t 0x2t 0x1t
    .end array-data
.end method

.method private queryKeyboardOpen()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 192
    iget-object v1, p0, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 193
    .local v0, configuration:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v1, v2, :cond_11

    move v1, v2

    :goto_10
    return v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method


# virtual methods
.method public cleanUp()V
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 156
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 178
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_28

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_28

    .line 180
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 181
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToLockScreen()V

    .line 186
    :goto_1a
    const/4 v0, 0x1

    .line 188
    :goto_1b
    return v0

    .line 183
    :cond_1c
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setTemporarilyLocked(Z)V

    .line 184
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_1a

    .line 188
    :cond_28
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1b
.end method

.method public needsInput()Z
    .registers 2

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .prologue
    .line 205
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 206
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->updateConfiguration()V

    .line 207
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 160
    iget-object v1, p0, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v2, 0x3a98

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 161
    iget-object v1, p0, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->mNextButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_1b

    .line 162
    iget v0, p0, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->mSelectedPosition:I

    .line 163
    .local v0, clickedPos:I
    if-nez v0, :cond_25

    .line 164
    iget-object v1, p0, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget-object v2, Lcom/android/internal/widget/LockPatternUtils$PatternUnlockMode;->Question:Lcom/android/internal/widget/LockPatternUtils$PatternUnlockMode;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setPatternUnlocker(Lcom/android/internal/widget/LockPatternUtils$PatternUnlockMode;)V

    .line 165
    iget-object v1, p0, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 171
    .end local v0           #clickedPos:I
    :cond_1b
    :goto_1b
    iget-object v1, p0, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->mEmergencyCall:Landroid/widget/Button;

    if-ne p1, v1, :cond_24

    .line 172
    iget-object v1, p0, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->takeEmergencyCallAction()V

    .line 174
    :cond_24
    return-void

    .line 166
    .restart local v0       #clickedPos:I
    :cond_25
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    .line 167
    iget-object v1, p0, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget-object v2, Lcom/android/internal/widget/LockPatternUtils$PatternUnlockMode;->Account:Lcom/android/internal/widget/LockPatternUtils$PatternUnlockMode;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setPatternUnlocker(Lcom/android/internal/widget/LockPatternUtils$PatternUnlockMode;)V

    .line 168
    iget-object v1, p0, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_1b
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 212
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 213
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->updateConfiguration()V

    .line 214
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 147
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 151
    return-void
.end method

.method public updateConfiguration()V
    .registers 4

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 198
    .local v0, newConfig:Landroid/content/res/Configuration;
    invoke-direct {p0}, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->queryKeyboardOpen()Z

    move-result v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->mKeyboardOpen:Z

    if-eq v1, v2, :cond_15

    .line 199
    iget-object v1, p0, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1, v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 201
    :cond_15
    return-void
.end method
