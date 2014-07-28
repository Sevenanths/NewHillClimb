.class Lcom/fingersoft/fsadsdk/advertising/AdManager$3;
.super Ljava/lang/Object;
.source "AdManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fingersoft/fsadsdk/advertising/AdManager;->getAdProviderPriorities()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fingersoft/fsadsdk/advertising/AdManager;

.field private final synthetic val$manager:Lcom/fingersoft/fsadsdk/advertising/AdManager;


# direct methods
.method constructor <init>(Lcom/fingersoft/fsadsdk/advertising/AdManager;Lcom/fingersoft/fsadsdk/advertising/AdManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager$3;->this$0:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    iput-object p2, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager$3;->val$manager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    .line 507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 512
    iget-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager$3;->this$0:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    iget-object v3, v3, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "reward.install.on"

    invoke-static {v3, v4, v8}, Lcom/fingersoft/fsadsdk/advertising/ApplicationSettings;->getValueInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 513
    .local v0, isRewardInstallOn:I
    iget-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager$3;->this$0:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    iget-object v3, v3, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "reward.install.package"

    invoke-static {v3, v4, v6}, Lcom/fingersoft/fsadsdk/advertising/ApplicationSettings;->getValueString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 515
    .local v1, packageName:Ljava/lang/String;
    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    if-eqz v1, :cond_0

    const-string v3, ""

    if-eq v1, v3, :cond_0

    .line 516
    iget-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager$3;->this$0:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v3, v1}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 518
    iget-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager$3;->this$0:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    iget-object v3, v3, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "reward.pending."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lcom/fingersoft/fsadsdk/advertising/ApplicationSettings;->getValueString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 519
    .local v2, pending:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Reward pending status: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 521
    if-nez v2, :cond_0

    .line 522
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Reward offer is on, setting the reward to pending for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 525
    iget-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager$3;->this$0:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    iget-object v3, v3, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "pendingRewardPackageName"

    invoke-static {v3, v4, v1}, Lcom/fingersoft/fsadsdk/advertising/ApplicationSettings;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    iget-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager$3;->this$0:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    iget-object v3, v3, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "reward.pending."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pending"

    invoke-static {v3, v4, v5}, Lcom/fingersoft/fsadsdk/advertising/ApplicationSettings;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    .end local v2           #pending:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager$3;->this$0:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    new-instance v4, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;

    iget-object v5, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager$3;->val$manager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    iget-object v6, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager$3;->this$0:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    iget-object v6, v6, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mLinkListener:Lcom/fingersoft/fsadsdk/advertising/LinkListener;

    invoke-direct {v4, v5, v6}, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;-><init>(Lcom/fingersoft/fsadsdk/advertising/AdManager;Lcom/fingersoft/fsadsdk/advertising/LinkListener;)V

    iput-object v4, v3, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mAppReleaseCheck:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;

    .line 533
    iget-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager$3;->this$0:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    iget-object v3, v3, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mAppReleaseCheck:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;

    const-wide/16 v4, 0x2710

    iget-object v6, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager$3;->val$manager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v6}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "startup_counter"

    invoke-static {v6, v7, v8}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getPrefValueInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;->execute(JI)V

    .line 534
    return-void
.end method
