.class Lcom/sonyericsson/home/layer/apptray/AppTrayController$10;
.super Ljava/lang/Object;
.source "AppTrayController.java"

# interfaces
.implements Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTraySortCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/apptray/AppTrayController;->createAppTraySortResult()Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTraySortCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)V
    .locals 0
    .parameter

    .prologue
    .line 619
    iput-object p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$10;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sort(I)V
    .locals 9
    .parameter "sortMode"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 622
    const/4 v3, 0x0

    .line 624
    .local v3, sameSort:Z
    if-nez p1, :cond_3

    .line 625
    iget-object v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$10;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1100(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Ljava/util/Comparator;

    move-result-object v4

    if-nez v4, :cond_0

    .line 626
    const/4 v3, 0x1

    .line 628
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$10;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v4, v8}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1102(Lcom/sonyericsson/home/layer/apptray/AppTrayController;Ljava/util/Comparator;)Ljava/util/Comparator;

    .line 629
    iget-object v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$10;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1200(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 630
    iget-object v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$10;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1300(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Landroid/widget/ImageView;

    move-result-object v4

    const v5, 0x7f02004a

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 654
    :cond_1
    :goto_0
    if-nez v3, :cond_2

    .line 655
    iget-object v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$10;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1800(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$10;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v5}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1700(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/paneview/PaneView;->getCurrentPane()I

    move-result v5

    neg-int v5, v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->offsetAllPanes(I)V

    .line 656
    iget-object v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$10;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1700(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sonyericsson/paneview/PaneView;->setPosition(F)V

    .line 657
    iget-object v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$10;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1700(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/sonyericsson/paneview/PaneView;->setRendererFactory(Lcom/sonyericsson/paneview/RendererFactory;)V

    .line 658
    iget-object v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$10;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1800(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->notifyDataSetChanged()V

    .line 659
    iget-object v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$10;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1700(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$10;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v5}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1900(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/paneview/PaneView;->setRendererFactory(Lcom/sonyericsson/paneview/RendererFactory;)V

    .line 663
    :try_start_0
    iget-object v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$10;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$000(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$10;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v5}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1100(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Ljava/util/Comparator;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->sort(Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 668
    :goto_1
    iget-object v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$10;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1800(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->offsetAllPanes(I)V

    .line 669
    iget-object v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$10;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1800(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->notifyDataSetChanged()V

    .line 672
    :cond_2
    iget-object v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$10;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$2100(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "home_apptray"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 674
    .local v2, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 675
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "preference_apptray_sort_order"

    invoke-interface {v1, v4, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 676
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 678
    iget-object v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$10;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    iput-boolean v6, v4, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mDisableDuringSortDialog:Z

    .line 679
    return-void

    .line 631
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #prefs:Landroid/content/SharedPreferences;
    :cond_3
    const/4 v4, 0x1

    if-ne p1, v4, :cond_5

    .line 632
    iget-object v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$10;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1100(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Ljava/util/Comparator;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$10;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v5}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1400(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Ljava/util/Comparator;

    move-result-object v5

    if-ne v4, v5, :cond_4

    .line 633
    const/4 v3, 0x1

    .line 635
    :cond_4
    iget-object v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$10;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    iget-object v5, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$10;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v5}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1400(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Ljava/util/Comparator;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1102(Lcom/sonyericsson/home/layer/apptray/AppTrayController;Ljava/util/Comparator;)Ljava/util/Comparator;

    .line 636
    iget-object v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$10;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1200(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 637
    iget-object v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$10;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1300(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Landroid/widget/ImageView;

    move-result-object v4

    const v5, 0x7f020049

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 638
    :cond_5
    const/4 v4, 0x2

    if-ne p1, v4, :cond_7

    .line 639
    iget-object v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$10;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1100(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Ljava/util/Comparator;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$10;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v5}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1500(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Ljava/util/Comparator;

    move-result-object v5

    if-ne v4, v5, :cond_6

    .line 640
    const/4 v3, 0x1

    .line 642
    :cond_6
    iget-object v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$10;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    iget-object v5, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$10;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v5}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1500(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Ljava/util/Comparator;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1102(Lcom/sonyericsson/home/layer/apptray/AppTrayController;Ljava/util/Comparator;)Ljava/util/Comparator;

    .line 643
    iget-object v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$10;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1200(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 644
    iget-object v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$10;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1300(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Landroid/widget/ImageView;

    move-result-object v4

    const v5, 0x7f02004c

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 645
    :cond_7
    const/4 v4, 0x3

    if-ne p1, v4, :cond_1

    .line 646
    iget-object v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$10;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1100(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Ljava/util/Comparator;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$10;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v5}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1600(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Ljava/util/Comparator;

    move-result-object v5

    if-ne v4, v5, :cond_8

    .line 647
    const/4 v3, 0x1

    .line 649
    :cond_8
    iget-object v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$10;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    iget-object v5, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$10;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v5}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1600(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Ljava/util/Comparator;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1102(Lcom/sonyericsson/home/layer/apptray/AppTrayController;Ljava/util/Comparator;)Ljava/util/Comparator;

    .line 650
    iget-object v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$10;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1200(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 651
    iget-object v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$10;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1300(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Landroid/widget/ImageView;

    move-result-object v4

    const v5, 0x7f02004b

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 664
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 665
    .local v0, e:Ljava/lang/Exception;
    iget-object v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$10;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$2000(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)V

    .line 666
    const-string v4, "apptray"

    const-string v5, "Sort failed"

    invoke-static {v4, v5, v0}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1
.end method

.method public sortFinished()V
    .locals 2

    .prologue
    .line 682
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$10;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mDisableDuringSortDialog:Z

    .line 683
    return-void
.end method
