.class Lcom/sonyericsson/home/GlobalCustomizationManager$1$1;
.super Lcom/sonyericsson/home/customization/GenericCustomization;
.source "GlobalCustomizationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/GlobalCustomizationManager$1;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/home/GlobalCustomizationManager$1;

.field final synthetic val$customDefaultLabels:Ljava/util/HashMap;

.field final synthetic val$customFolderIcons:Ljava/util/HashMap;

.field final synthetic val$customOpenFolderIcons:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/GlobalCustomizationManager$1;Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter
    .parameter
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/sonyericsson/home/GlobalCustomizationManager$1$1;->this$1:Lcom/sonyericsson/home/GlobalCustomizationManager$1;

    iput-object p4, p0, Lcom/sonyericsson/home/GlobalCustomizationManager$1$1;->val$customFolderIcons:Ljava/util/HashMap;

    iput-object p5, p0, Lcom/sonyericsson/home/GlobalCustomizationManager$1$1;->val$customOpenFolderIcons:Ljava/util/HashMap;

    iput-object p6, p0, Lcom/sonyericsson/home/GlobalCustomizationManager$1$1;->val$customDefaultLabels:Ljava/util/HashMap;

    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/home/customization/GenericCustomization;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleSettingsGroup(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z
    .locals 7
    .parameter "groupType"
    .parameter "groupId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 124
    .local p3, settings:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "folders"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 125
    const-string v5, "category"

    invoke-virtual {p3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 126
    .local v0, category:Ljava/lang/String;
    iget-object v5, p0, Lcom/sonyericsson/home/GlobalCustomizationManager$1$1;->this$1:Lcom/sonyericsson/home/GlobalCustomizationManager$1;

    iget-object v5, v5, Lcom/sonyericsson/home/GlobalCustomizationManager$1;->this$0:Lcom/sonyericsson/home/GlobalCustomizationManager;

    invoke-static {v5}, Lcom/sonyericsson/home/GlobalCustomizationManager;->access$000(Lcom/sonyericsson/home/GlobalCustomizationManager;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/sonyericsson/home/customization/CustomizationUtils;->getCategoryIndex([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 129
    .local v1, categoryIndex:I
    const-string v5, "folder-icon"

    invoke-virtual {p3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 130
    .local v3, folder_icon:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 131
    iget-object v5, p0, Lcom/sonyericsson/home/GlobalCustomizationManager$1$1;->val$customFolderIcons:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :cond_0
    const-string v5, "open-folder-icon"

    invoke-virtual {p3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 134
    .local v4, open_folder_icon:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 135
    iget-object v5, p0, Lcom/sonyericsson/home/GlobalCustomizationManager$1$1;->val$customOpenFolderIcons:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :cond_1
    const-string v5, "default-label"

    invoke-virtual {p3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 138
    .local v2, folder_default_label:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 139
    iget-object v5, p0, Lcom/sonyericsson/home/GlobalCustomizationManager$1$1;->val$customDefaultLabels:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_2
    const/4 v5, 0x1

    .end local v0           #category:Ljava/lang/String;
    .end local v1           #categoryIndex:I
    .end local v2           #folder_default_label:Ljava/lang/String;
    .end local v3           #folder_icon:Ljava/lang/String;
    .end local v4           #open_folder_icon:Ljava/lang/String;
    :goto_0
    return v5

    .line 142
    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method
