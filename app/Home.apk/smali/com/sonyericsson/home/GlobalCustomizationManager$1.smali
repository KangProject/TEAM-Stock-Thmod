.class Lcom/sonyericsson/home/GlobalCustomizationManager$1;
.super Lcom/sonyericsson/util/Worker$Task;
.source "GlobalCustomizationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/GlobalCustomizationManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private folderDefaultLabels:[Ljava/lang/String;

.field private folderIconDrawables:[Landroid/graphics/drawable/Drawable;

.field private openFolderIconDrawables:[Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/sonyericsson/home/GlobalCustomizationManager;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/GlobalCustomizationManager;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/sonyericsson/home/GlobalCustomizationManager$1;->this$0:Lcom/sonyericsson/home/GlobalCustomizationManager;

    iput-object p3, p0, Lcom/sonyericsson/home/GlobalCustomizationManager$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/sonyericsson/util/Worker$Task;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 14

    .prologue
    .line 113
    iget-object v1, p0, Lcom/sonyericsson/home/GlobalCustomizationManager$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 114
    .local v13, res:Landroid/content/res/Resources;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 115
    .local v4, customFolderIcons:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 116
    .local v5, customOpenFolderIcons:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 118
    .local v6, customDefaultLabels:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v0, Lcom/sonyericsson/home/GlobalCustomizationManager$1$1;

    iget-object v2, p0, Lcom/sonyericsson/home/GlobalCustomizationManager$1;->val$context:Landroid/content/Context;

    const-string v3, "global"

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/home/GlobalCustomizationManager$1$1;-><init>(Lcom/sonyericsson/home/GlobalCustomizationManager$1;Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 149
    .local v0, genericCustomization:Lcom/sonyericsson/home/customization/GenericCustomization;
    invoke-static {}, Lcom/sonyericsson/home/GlobalCustomizationManager;->access$100()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/home/customization/GenericCustomization;->applyCustomization(Landroid/net/Uri;Z)Z

    .line 151
    const/16 v1, 0x8

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/sonyericsson/home/GlobalCustomizationManager$1;->folderIconDrawables:[Landroid/graphics/drawable/Drawable;

    .line 152
    const/16 v1, 0x8

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/sonyericsson/home/GlobalCustomizationManager$1;->openFolderIconDrawables:[Landroid/graphics/drawable/Drawable;

    .line 153
    const/high16 v1, 0x7f06

    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/home/GlobalCustomizationManager$1;->folderDefaultLabels:[Ljava/lang/String;

    .line 155
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    const/16 v1, 0x8

    if-ge v12, v1, :cond_2

    .line 157
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 158
    .local v9, customFolderIcon:Ljava/lang/String;
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 159
    .local v11, customOpenFolderIcon:Ljava/lang/String;
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 160
    .local v7, customDefaultLabel:Ljava/lang/String;
    const/4 v8, 0x0

    .line 161
    .local v8, customFolderDrawable:Landroid/graphics/drawable/BitmapDrawable;
    const/4 v10, 0x0

    .line 163
    .local v10, customOpenFolderDrawable:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v9, :cond_0

    if-eqz v11, :cond_0

    if-eqz v7, :cond_0

    .line 165
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    .end local v8           #customFolderDrawable:Landroid/graphics/drawable/BitmapDrawable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/etc/customization/content/com/sonyericsson/home/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v13, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 167
    .restart local v8       #customFolderDrawable:Landroid/graphics/drawable/BitmapDrawable;
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    .end local v10           #customOpenFolderDrawable:Landroid/graphics/drawable/BitmapDrawable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/etc/customization/content/com/sonyericsson/home/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v13, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 171
    .restart local v10       #customOpenFolderDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    if-eqz v8, :cond_1

    if-eqz v10, :cond_1

    .line 172
    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 173
    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 174
    iget-object v1, p0, Lcom/sonyericsson/home/GlobalCustomizationManager$1;->folderIconDrawables:[Landroid/graphics/drawable/Drawable;

    aput-object v8, v1, v12

    .line 175
    iget-object v1, p0, Lcom/sonyericsson/home/GlobalCustomizationManager$1;->openFolderIconDrawables:[Landroid/graphics/drawable/Drawable;

    aput-object v10, v1, v12

    .line 176
    iget-object v1, p0, Lcom/sonyericsson/home/GlobalCustomizationManager$1;->folderDefaultLabels:[Ljava/lang/String;

    aput-object v7, v1, v12

    .line 155
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 178
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/home/GlobalCustomizationManager$1;->folderIconDrawables:[Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/sonyericsson/home/GlobalCustomizationManager;->access$200()[I

    move-result-object v2

    aget v2, v2, v12

    invoke-virtual {v13, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v12

    .line 179
    iget-object v1, p0, Lcom/sonyericsson/home/GlobalCustomizationManager$1;->openFolderIconDrawables:[Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/sonyericsson/home/GlobalCustomizationManager;->access$300()[I

    move-result-object v2

    aget v2, v2, v12

    invoke-virtual {v13, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v12

    goto :goto_1

    .line 183
    .end local v7           #customDefaultLabel:Ljava/lang/String;
    .end local v8           #customFolderDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v9           #customFolderIcon:Ljava/lang/String;
    .end local v10           #customOpenFolderDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v11           #customOpenFolderIcon:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public postExecute()V
    .locals 4

    .prologue
    .line 187
    iget-object v2, p0, Lcom/sonyericsson/home/GlobalCustomizationManager$1;->this$0:Lcom/sonyericsson/home/GlobalCustomizationManager;

    iget-object v3, p0, Lcom/sonyericsson/home/GlobalCustomizationManager$1;->folderIconDrawables:[Landroid/graphics/drawable/Drawable;

    invoke-static {v2, v3}, Lcom/sonyericsson/home/GlobalCustomizationManager;->access$402(Lcom/sonyericsson/home/GlobalCustomizationManager;[Landroid/graphics/drawable/Drawable;)[Landroid/graphics/drawable/Drawable;

    .line 188
    iget-object v2, p0, Lcom/sonyericsson/home/GlobalCustomizationManager$1;->this$0:Lcom/sonyericsson/home/GlobalCustomizationManager;

    iget-object v3, p0, Lcom/sonyericsson/home/GlobalCustomizationManager$1;->openFolderIconDrawables:[Landroid/graphics/drawable/Drawable;

    invoke-static {v2, v3}, Lcom/sonyericsson/home/GlobalCustomizationManager;->access$502(Lcom/sonyericsson/home/GlobalCustomizationManager;[Landroid/graphics/drawable/Drawable;)[Landroid/graphics/drawable/Drawable;

    .line 189
    iget-object v2, p0, Lcom/sonyericsson/home/GlobalCustomizationManager$1;->this$0:Lcom/sonyericsson/home/GlobalCustomizationManager;

    iget-object v3, p0, Lcom/sonyericsson/home/GlobalCustomizationManager$1;->folderDefaultLabels:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sonyericsson/home/GlobalCustomizationManager;->access$602(Lcom/sonyericsson/home/GlobalCustomizationManager;[Ljava/lang/String;)[Ljava/lang/String;

    .line 191
    iget-object v2, p0, Lcom/sonyericsson/home/GlobalCustomizationManager$1;->this$0:Lcom/sonyericsson/home/GlobalCustomizationManager;

    invoke-static {v2}, Lcom/sonyericsson/home/GlobalCustomizationManager;->access$700(Lcom/sonyericsson/home/GlobalCustomizationManager;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 192
    .local v0, callback:Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 195
    .end local v0           #callback:Ljava/lang/Runnable;
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/home/GlobalCustomizationManager$1;->this$0:Lcom/sonyericsson/home/GlobalCustomizationManager;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sonyericsson/home/GlobalCustomizationManager;->access$702(Lcom/sonyericsson/home/GlobalCustomizationManager;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    .line 196
    return-void
.end method
