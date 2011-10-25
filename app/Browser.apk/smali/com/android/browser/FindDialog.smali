.class Lcom/android/browser/FindDialog;
.super Lcom/android/browser/WebDialog;
.source "FindDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private mEditText:Landroid/widget/EditText;

.field private mFindListener:Landroid/view/View$OnClickListener;

.field private mFindPreviousListener:Landroid/view/View$OnClickListener;

.field private mMatches:Landroid/widget/TextView;

.field private mMatchesFound:Z

.field private mMatchesView:Landroid/view/View;

.field private mNextButton:Landroid/view/View;

.field private mNumberOfMatches:I

.field private mPrevButton:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserActivity;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/browser/WebDialog;-><init>(Lcom/android/browser/BrowserActivity;)V

    .line 51
    new-instance v2, Lcom/android/browser/FindDialog$1;

    invoke-direct {v2, p0}, Lcom/android/browser/FindDialog$1;-><init>(Lcom/android/browser/FindDialog;)V

    iput-object v2, p0, Lcom/android/browser/FindDialog;->mFindListener:Landroid/view/View$OnClickListener;

    .line 57
    new-instance v2, Lcom/android/browser/FindDialog$2;

    invoke-direct {v2, p0}, Lcom/android/browser/FindDialog$2;-><init>(Lcom/android/browser/FindDialog;)V

    iput-object v2, p0, Lcom/android/browser/FindDialog;->mFindPreviousListener:Landroid/view/View$OnClickListener;

    .line 79
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 80
    .local v1, factory:Landroid/view/LayoutInflater;
    const v2, 0x7f030005

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 82
    invoke-virtual {p0}, Lcom/android/browser/FindDialog;->addCancel()V

    .line 83
    const v2, 0x7f0c0012

    invoke-virtual {p0, v2}, Lcom/android/browser/FindDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/browser/FindDialog;->mEditText:Landroid/widget/EditText;

    .line 85
    const v2, 0x7f0c0008

    invoke-virtual {p0, v2}, Lcom/android/browser/FindDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 86
    .local v0, button:Landroid/view/View;
    iget-object v2, p0, Lcom/android/browser/FindDialog;->mFindListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iput-object v0, p0, Lcom/android/browser/FindDialog;->mNextButton:Landroid/view/View;

    .line 89
    const v2, 0x7f0c0007

    invoke-virtual {p0, v2}, Lcom/android/browser/FindDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 90
    iget-object v2, p0, Lcom/android/browser/FindDialog;->mFindPreviousListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iput-object v0, p0, Lcom/android/browser/FindDialog;->mPrevButton:Landroid/view/View;

    .line 93
    const v2, 0x7f0c0014

    invoke-virtual {p0, v2}, Lcom/android/browser/FindDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/browser/FindDialog;->mMatches:Landroid/widget/TextView;

    .line 94
    const v2, 0x7f0c0013

    invoke-virtual {p0, v2}, Lcom/android/browser/FindDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/FindDialog;->mMatchesView:Landroid/view/View;

    .line 95
    invoke-direct {p0}, Lcom/android/browser/FindDialog;->disableButtons()V

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/FindDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/browser/FindDialog;->findNext()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/browser/FindDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/browser/FindDialog;->updateMatchesString()V

    return-void
.end method

.method private disableButtons()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 70
    iget-object v0, p0, Lcom/android/browser/FindDialog;->mPrevButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 71
    iget-object v0, p0, Lcom/android/browser/FindDialog;->mNextButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 72
    iget-object v0, p0, Lcom/android/browser/FindDialog;->mPrevButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 73
    iget-object v0, p0, Lcom/android/browser/FindDialog;->mNextButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 74
    return-void
.end method

.method private findAll()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 192
    iget-object v2, p0, Lcom/android/browser/FindDialog;->mWebView:Landroid/webkit/WebView;

    if-nez v2, :cond_0

    .line 193
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "No WebView for FindDialog::findAll"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 196
    :cond_0
    iget-object v2, p0, Lcom/android/browser/FindDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 197
    .local v0, find:Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 198
    invoke-direct {p0}, Lcom/android/browser/FindDialog;->disableButtons()V

    .line 199
    iget-object v2, p0, Lcom/android/browser/FindDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->clearMatches()V

    .line 200
    iget-object v2, p0, Lcom/android/browser/FindDialog;->mMatchesView:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 223
    :cond_1
    :goto_0
    return-void

    .line 202
    :cond_2
    iget-object v2, p0, Lcom/android/browser/FindDialog;->mMatchesView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 203
    iget-object v2, p0, Lcom/android/browser/FindDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->findAll(Ljava/lang/String;)I

    move-result v1

    .line 204
    .local v1, found:I
    iput-boolean v4, p0, Lcom/android/browser/FindDialog;->mMatchesFound:Z

    .line 205
    invoke-direct {p0, v1}, Lcom/android/browser/FindDialog;->setMatchesFound(I)V

    .line 206
    const/4 v2, 0x2

    if-ge v1, v2, :cond_3

    .line 207
    invoke-direct {p0}, Lcom/android/browser/FindDialog;->disableButtons()V

    .line 208
    if-nez v1, :cond_1

    goto :goto_0

    .line 217
    :cond_3
    iget-object v2, p0, Lcom/android/browser/FindDialog;->mPrevButton:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 218
    iget-object v2, p0, Lcom/android/browser/FindDialog;->mNextButton:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 219
    iget-object v2, p0, Lcom/android/browser/FindDialog;->mPrevButton:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 220
    iget-object v2, p0, Lcom/android/browser/FindDialog;->mNextButton:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method private findNext()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/browser/FindDialog;->mWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No WebView for FindDialog::findNext"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/android/browser/FindDialog;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->findNext(Z)V

    .line 155
    invoke-direct {p0}, Lcom/android/browser/FindDialog;->updateMatchesString()V

    .line 156
    invoke-virtual {p0}, Lcom/android/browser/FindDialog;->hideSoftInput()V

    .line 157
    return-void
.end method

.method private setMatchesFound(I)V
    .locals 0
    .parameter "found"

    .prologue
    .line 226
    iput p1, p0, Lcom/android/browser/FindDialog;->mNumberOfMatches:I

    .line 227
    invoke-direct {p0}, Lcom/android/browser/FindDialog;->updateMatchesString()V

    .line 228
    return-void
.end method

.method private updateMatchesString()V
    .locals 7

    .prologue
    .line 238
    iget-object v1, p0, Lcom/android/browser/FindDialog;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v1}, Lcom/android/browser/BrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f09

    iget v3, p0, Lcom/android/browser/FindDialog;->mNumberOfMatches:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/browser/FindDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->findIndex()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, p0, Lcom/android/browser/FindDialog;->mNumberOfMatches:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, template:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/browser/FindDialog;->mMatches:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 246
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 182
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Lcom/android/browser/WebDialog;->dismiss()V

    .line 106
    iget-object v0, p0, Lcom/android/browser/FindDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->notifyFindDialogDismissed()V

    .line 107
    invoke-virtual {p0}, Lcom/android/browser/FindDialog;->hideSoftInput()V

    .line 108
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 132
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 133
    .local v0, keyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 134
    const/16 v2, 0x42

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/browser/FindDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 136
    iget-boolean v2, p0, Lcom/android/browser/FindDialog;->mMatchesFound:Z

    if-eqz v2, :cond_0

    .line 137
    invoke-direct {p0}, Lcom/android/browser/FindDialog;->findNext()V

    :goto_0
    move v2, v3

    .line 147
    :goto_1
    return v2

    .line 139
    :cond_0
    invoke-direct {p0}, Lcom/android/browser/FindDialog;->findAll()V

    .line 141
    iget-object v2, p0, Lcom/android/browser/FindDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 142
    .local v1, span:Landroid/text/Spannable;
    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v2

    invoke-static {v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_0

    .line 147
    .end local v1           #span:Landroid/text/Spannable;
    :cond_1
    invoke-super {p0, p1}, Lcom/android/browser/WebDialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_1
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 112
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 113
    invoke-virtual {p0}, Lcom/android/browser/FindDialog;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 114
    .local v1, state:Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_1

    .line 115
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 116
    .local v0, action:I
    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 118
    invoke-virtual {v1, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    move v2, v4

    .line 127
    .end local v0           #action:I
    .end local v1           #state:Landroid/view/KeyEvent$DispatcherState;
    :goto_0
    return v2

    .line 120
    .restart local v0       #action:I
    .restart local v1       #state:Landroid/view/KeyEvent$DispatcherState;
    :cond_0
    if-ne v4, v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, p1}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 122
    iget-object v2, p0, Lcom/android/browser/FindDialog;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v2}, Lcom/android/browser/BrowserActivity;->closeDialogs()V

    move v2, v4

    .line 123
    goto :goto_0

    .line 127
    .end local v0           #action:I
    .end local v1           #state:Landroid/view/KeyEvent$DispatcherState;
    :cond_1
    invoke-super {p0, p1}, Lcom/android/browser/WebDialog;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/android/browser/FindDialog;->findAll()V

    .line 189
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/browser/FindDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 232
    invoke-direct {p0}, Lcom/android/browser/FindDialog;->findAll()V

    .line 233
    return-void
.end method

.method public show()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 160
    invoke-super {p0}, Lcom/android/browser/WebDialog;->show()V

    .line 162
    iget-object v3, p0, Lcom/android/browser/FindDialog;->mMatchesView:Landroid/view/View;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 163
    iput-boolean v5, p0, Lcom/android/browser/FindDialog;->mMatchesFound:Z

    .line 165
    iget-object v3, p0, Lcom/android/browser/FindDialog;->mMatches:Landroid/widget/TextView;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v3, p0, Lcom/android/browser/FindDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 167
    iget-object v3, p0, Lcom/android/browser/FindDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 168
    .local v2, span:Landroid/text/Spannable;
    invoke-interface {v2}, Landroid/text/Spannable;->length()I

    move-result v1

    .line 169
    .local v1, length:I
    invoke-static {v2, v5, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 170
    const/16 v3, 0x12

    invoke-interface {v2, p0, v5, v1, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 171
    invoke-direct {p0}, Lcom/android/browser/FindDialog;->disableButtons()V

    .line 172
    iget-object v3, p0, Lcom/android/browser/FindDialog;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Lcom/android/browser/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 174
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v3, p0, Lcom/android/browser/FindDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v3, v5}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 175
    return-void
.end method
