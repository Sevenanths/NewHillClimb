.class Lcom/fingersoft/fsadsdk/advertising/AdManager$4;
.super Ljava/lang/Thread;
.source "AdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fingersoft/fsadsdk/advertising/AdManager;->viewNextAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fingersoft/fsadsdk/advertising/AdManager;


# direct methods
.method constructor <init>(Lcom/fingersoft/fsadsdk/advertising/AdManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager$4;->this$0:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    .line 752
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const-wide/32 v8, 0xea60

    .line 758
    const/4 v0, 0x0

    .line 760
    .local v0, advertisementCreated:Z
    :try_start_0
    iget-object v5, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager$4;->this$0:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    iget-object v5, v5, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mAdProviders:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_3

    .line 762
    const-string v5, "No provider list"

    invoke-static {v5}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 796
    :goto_0
    return-void

    .line 771
    :cond_0
    const-wide/16 v5, 0x3e8

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 769
    :cond_1
    iget-object v5, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager$4;->this$0:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    #getter for: Lcom/fingersoft/fsadsdk/advertising/AdManager;->mPaused:Z
    invoke-static {v5}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->access$2(Lcom/fingersoft/fsadsdk/advertising/AdManager;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 774
    iget-object v5, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager$4;->this$0:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    iget-object v6, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager$4;->this$0:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    iget v6, v6, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mCurrentAdProviderIdx:I

    add-int/lit8 v6, v6, 0x1

    iget-object v7, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager$4;->this$0:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    iget-object v7, v7, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mAdProviders:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    rem-int/2addr v6, v7

    iput v6, v5, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mCurrentAdProviderIdx:I

    .line 775
    iget-object v5, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager$4;->this$0:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    iget-object v5, v5, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mAdProviders:Ljava/util/List;

    iget-object v6, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager$4;->this$0:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    iget v6, v6, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mCurrentAdProviderIdx:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fingersoft/fsadsdk/advertising/providers/AdProvider;

    invoke-virtual {v5}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProvider;->getTimeSinceLastUsed()J

    move-result-wide v1

    .line 777
    .local v1, sinceUsed:J
    cmp-long v5, v1, v8

    if-gez v5, :cond_2

    .line 779
    sub-long v3, v8, v1

    .line 780
    .local v3, sleepMs:J
    sub-long v5, v8, v1

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 784
    .end local v3           #sleepMs:J
    :cond_2
    iget-object v5, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager$4;->this$0:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    #getter for: Lcom/fingersoft/fsadsdk/advertising/AdManager;->mPaused:Z
    invoke-static {v5}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->access$2(Lcom/fingersoft/fsadsdk/advertising/AdManager;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 787
    const-string v5, "get next ad view"

    invoke-static {v5}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 788
    iget-object v5, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager$4;->this$0:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    iget-object v5, v5, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager$4;->this$0:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    iget-object v6, v6, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mOnViewNextAdvertiser:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 789
    const/4 v0, 0x1

    .line 766
    .end local v1           #sinceUsed:J
    :cond_3
    if-eqz v0, :cond_1

    .line 795
    :goto_1
    iget-object v5, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager$4;->this$0:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mWaitingThread:Ljava/lang/Thread;

    goto :goto_0

    .line 793
    :catch_0
    move-exception v5

    goto :goto_1
.end method
