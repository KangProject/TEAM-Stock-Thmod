.class public Lcom/android/settings/SetBackupQuestion;
.super Landroid/app/Activity;
.source "SetBackupQuestion.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAnswerText:Landroid/widget/EditText;

.field private mBackupQuestionUtils:Lcom/android/internal/widget/BackupQuestionUtils;

.field private mButtonBar:Landroid/view/View;

.field private mFooterCancelButton:Landroid/widget/Button;

.field private mFooterConfirmButton:Landroid/widget/TextView;

.field private mKeyboardOpen:Z

.field private mQuestion:I

.field private mQuestionText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SetBackupQuestion;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/SetBackupQuestion;->mFooterConfirmButton:Landroid/widget/TextView;

    return-object v0
.end method

.method private queryKeyboardOpen()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 233
    invoke-virtual {p0}, Lcom/android/settings/SetBackupQuestion;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 235
    .local v0, configuration:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private saveAnswerAndFinish()V
    .locals 3

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/settings/SetBackupQuestion;->mBackupQuestionUtils:Lcom/android/internal/widget/BackupQuestionUtils;

    iget v1, p0, Lcom/android/settings/SetBackupQuestion;->mQuestion:I

    iget-object v2, p0, Lcom/android/settings/SetBackupQuestion;->mAnswerText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/BackupQuestionUtils;->saveQuestionAnswerPair(ILjava/lang/String;)V

    .line 225
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/SetBackupQuestion;->setResult(I)V

    .line 226
    invoke-virtual {p0}, Lcom/android/settings/SetBackupQuestion;->finish()V

    .line 227
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 241
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 246
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/settings/SetBackupQuestion;->mFooterConfirmButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 189
    invoke-direct {p0}, Lcom/android/settings/SetBackupQuestion;->saveAnswerAndFinish()V

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SetBackupQuestion;->mFooterCancelButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 191
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/SetBackupQuestion;->setResult(I)V

    .line 192
    invoke-virtual {p0}, Lcom/android/settings/SetBackupQuestion;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 87
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    new-instance v2, Lcom/android/internal/widget/BackupQuestionUtils;

    invoke-virtual {p0}, Lcom/android/settings/SetBackupQuestion;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/widget/BackupQuestionUtils;-><init>(Landroid/content/ContentResolver;)V

    iput-object v2, p0, Lcom/android/settings/SetBackupQuestion;->mBackupQuestionUtils:Lcom/android/internal/widget/BackupQuestionUtils;

    .line 91
    const v2, 0x7f090001

    invoke-virtual {p0, v2}, Lcom/android/settings/SetBackupQuestion;->setTitle(I)V

    .line 93
    invoke-direct {p0}, Lcom/android/settings/SetBackupQuestion;->queryKeyboardOpen()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/SetBackupQuestion;->mKeyboardOpen:Z

    .line 95
    if-nez p1, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/SetBackupQuestion;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 97
    .local v1, launchIntent:Landroid/content/Intent;
    const-string v2, "question_id"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/SetBackupQuestion;->mQuestion:I

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/SetBackupQuestion;->setupViews()V

    .line 99
    iget-object v2, p0, Lcom/android/settings/SetBackupQuestion;->mFooterConfirmButton:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 113
    .end local v1           #launchIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 103
    :cond_0
    const-string v2, "questionId"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/SetBackupQuestion;->mQuestion:I

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/SetBackupQuestion;->setupViews()V

    .line 105
    const-string v2, "chosenAnswer"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, answer:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 107
    iget-object v2, p0, Lcom/android/settings/SetBackupQuestion;->mAnswerText:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 111
    :goto_1
    iget-object v2, p0, Lcom/android/settings/SetBackupQuestion;->mFooterConfirmButton:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/SetBackupQuestion;->mAnswerText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-lez v3, :cond_2

    const/4 v3, 0x1

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 109
    :cond_1
    iget-object v2, p0, Lcom/android/settings/SetBackupQuestion;->mAnswerText:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    move v3, v4

    .line 111
    goto :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 199
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 200
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/SetBackupQuestion;->setResult(I)V

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/SetBackupQuestion;->finish()V

    .line 203
    :cond_0
    const/16 v0, 0x52

    if-ne p1, v0, :cond_1

    .line 205
    const/4 v0, 0x1

    .line 208
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 117
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 118
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 214
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 216
    const-string v0, "questionId"

    iget v1, p0, Lcom/android/settings/SetBackupQuestion;->mQuestion:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 217
    const-string v0, "chosenAnswer"

    iget-object v1, p0, Lcom/android/settings/SetBackupQuestion;->mAnswerText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/settings/SetBackupQuestion;->mFooterConfirmButton:Landroid/widget/TextView;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 251
    return-void

    .line 249
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method setupViews()V
    .locals 4

    .prologue
    .line 121
    const v2, 0x7f03003f

    invoke-virtual {p0, v2}, Lcom/android/settings/SetBackupQuestion;->setContentView(I)V

    .line 123
    const v2, 0x7f0b00bf

    invoke-virtual {p0, v2}, Lcom/android/settings/SetBackupQuestion;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/SetBackupQuestion;->mQuestionText:Landroid/widget/TextView;

    .line 125
    const/4 v1, 0x0

    .line 126
    .local v1, question:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/SetBackupQuestion;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 127
    .local v0, context:Landroid/content/Context;
    iget v2, p0, Lcom/android/settings/SetBackupQuestion;->mQuestion:I

    packed-switch v2, :pswitch_data_0

    .line 143
    :goto_0
    if-eqz v1, :cond_0

    .line 144
    iget-object v2, p0, Lcom/android/settings/SetBackupQuestion;->mQuestionText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    :cond_0
    const v2, 0x7f0b00c3

    invoke-virtual {p0, v2}, Lcom/android/settings/SetBackupQuestion;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/SetBackupQuestion;->mFooterConfirmButton:Landroid/widget/TextView;

    .line 149
    iget-object v2, p0, Lcom/android/settings/SetBackupQuestion;->mFooterConfirmButton:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    const v2, 0x7f0b00c2

    invoke-virtual {p0, v2}, Lcom/android/settings/SetBackupQuestion;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/SetBackupQuestion;->mFooterCancelButton:Landroid/widget/Button;

    .line 153
    iget-object v2, p0, Lcom/android/settings/SetBackupQuestion;->mFooterCancelButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    const v2, 0x7f0b00be

    invoke-virtual {p0, v2}, Lcom/android/settings/SetBackupQuestion;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/SetBackupQuestion;->mButtonBar:Landroid/view/View;

    .line 157
    const v2, 0x7f0b00c0

    invoke-virtual {p0, v2}, Lcom/android/settings/SetBackupQuestion;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/settings/SetBackupQuestion;->mAnswerText:Landroid/widget/EditText;

    .line 158
    iget-object v2, p0, Lcom/android/settings/SetBackupQuestion;->mAnswerText:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v2, p0, Lcom/android/settings/SetBackupQuestion;->mAnswerText:Landroid/widget/EditText;

    new-instance v3, Lcom/android/settings/SetBackupQuestion$1;

    invoke-direct {v3, p0}, Lcom/android/settings/SetBackupQuestion$1;-><init>(Lcom/android/settings/SetBackupQuestion;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 176
    iget-object v2, p0, Lcom/android/settings/SetBackupQuestion;->mAnswerText:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 178
    iget-boolean v2, p0, Lcom/android/settings/SetBackupQuestion;->mKeyboardOpen:Z

    if-eqz v2, :cond_1

    .line 179
    iget-object v2, p0, Lcom/android/settings/SetBackupQuestion;->mAnswerText:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 180
    iget-object v2, p0, Lcom/android/settings/SetBackupQuestion;->mAnswerText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 184
    :goto_1
    return-void

    .line 130
    :pswitch_0
    const v2, 0x10400bd

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 131
    goto :goto_0

    .line 133
    :pswitch_1
    const v2, 0x10400be

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 134
    goto :goto_0

    .line 136
    :pswitch_2
    const v2, 0x10400bf

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 137
    goto :goto_0

    .line 139
    :pswitch_3
    const v2, 0x10400c0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 182
    :cond_1
    iget-object v2, p0, Lcom/android/settings/SetBackupQuestion;->mAnswerText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_1

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
