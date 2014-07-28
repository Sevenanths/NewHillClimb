.class Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon$1;
.super Ljava/lang/Object;
.source "AdProviderAmazon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon;


# direct methods
.method constructor <init>(Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon$1;->this$0:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon$1;->this$0:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon;

    #getter for: Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon;->adView:Lcom/amazon/device/ads/AdLayout;
    invoke-static {v1}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon;->access$0(Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon;)Lcom/amazon/device/ads/AdLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdLayout;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon$1;->this$0:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon;

    invoke-virtual {v2}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " - Reloading ad"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon$1;->this$0:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon;

    #getter for: Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon;->adView:Lcom/amazon/device/ads/AdLayout;
    invoke-static {v1}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon;->access$0(Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon;)Lcom/amazon/device/ads/AdLayout;

    move-result-object v1

    new-instance v2, Lcom/amazon/device/ads/AdTargetingOptions;

    invoke-direct {v2}, Lcom/amazon/device/ads/AdTargetingOptions;-><init>()V

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/AdLayout;->loadAd(Lcom/amazon/device/ads/AdTargetingOptions;)Z

    .line 101
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon$1;->this$0:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon;

    #getter for: Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon;->adViewFailed:Z
    invoke-static {v1}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon;->access$1(Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon$1;->this$0:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon;

    invoke-virtual {v2}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " - Ad loading failed, aborting reload task"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 99
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon$1;->this$0:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon;

    iget-object v1, v1, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v1}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->onAdViewFailed()V

    goto :goto_0

    .line 93
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon$1;->this$0:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon;

    invoke-virtual {v2}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " - Ad not shown, postponing reload"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon$1;->this$0:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon;

    #getter for: Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon;->access$2(Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon$1;->this$0:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon;

    #getter for: Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon;->reloadTask:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon;->access$3(Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/32 v3, 0xea60

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
