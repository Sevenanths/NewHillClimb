.class Lcom/adsdk/sdk/banner/AdView$3;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/banner/AdView;->loadContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/banner/AdView;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/banner/AdView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/banner/AdView$3;->this$0:Lcom/adsdk/sdk/banner/AdView;

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 323
    const-string v2, "ADSDK"

    const-string v3, "starting request thread"

    invoke-static {v2, v3}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView$3;->this$0:Lcom/adsdk/sdk/banner/AdView;

    #getter for: Lcom/adsdk/sdk/banner/AdView;->xml:Ljava/io/InputStream;
    invoke-static {v2}, Lcom/adsdk/sdk/banner/AdView;->access$1(Lcom/adsdk/sdk/banner/AdView;)Ljava/io/InputStream;

    move-result-object v2

    if-nez v2, :cond_1

    .line 326
    new-instance v1, Lcom/adsdk/sdk/RequestBannerAd;

    invoke-direct {v1}, Lcom/adsdk/sdk/RequestBannerAd;-><init>()V

    .line 332
    .local v1, requestAd:Lcom/adsdk/sdk/RequestBannerAd;
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/adsdk/sdk/banner/AdView$3;->this$0:Lcom/adsdk/sdk/banner/AdView;

    .line 333
    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView$3;->this$0:Lcom/adsdk/sdk/banner/AdView;

    #calls: Lcom/adsdk/sdk/banner/AdView;->getRequest()Lcom/adsdk/sdk/AdRequest;
    invoke-static {v2}, Lcom/adsdk/sdk/banner/AdView;->access$2(Lcom/adsdk/sdk/banner/AdView;)Lcom/adsdk/sdk/AdRequest;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/RequestBannerAd;->sendRequest(Lcom/adsdk/sdk/AdRequest;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adsdk/sdk/BannerAd;

    .line 332
    #setter for: Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/BannerAd;
    invoke-static {v3, v2}, Lcom/adsdk/sdk/banner/AdView;->access$3(Lcom/adsdk/sdk/banner/AdView;Lcom/adsdk/sdk/BannerAd;)V

    .line 334
    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView$3;->this$0:Lcom/adsdk/sdk/banner/AdView;

    #getter for: Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/BannerAd;
    invoke-static {v2}, Lcom/adsdk/sdk/banner/AdView;->access$4(Lcom/adsdk/sdk/banner/AdView;)Lcom/adsdk/sdk/BannerAd;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 335
    const-string v2, "ADSDK"

    const-string v3, "response received"

    invoke-static {v2, v3}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string v2, "ADSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getVisibility: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 337
    iget-object v4, p0, Lcom/adsdk/sdk/banner/AdView$3;->this$0:Lcom/adsdk/sdk/banner/AdView;

    invoke-virtual {v4}, Lcom/adsdk/sdk/banner/AdView;->getVisibility()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 336
    invoke-static {v2, v3}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView$3;->this$0:Lcom/adsdk/sdk/banner/AdView;

    #getter for: Lcom/adsdk/sdk/banner/AdView;->updateHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/adsdk/sdk/banner/AdView;->access$5(Lcom/adsdk/sdk/banner/AdView;)Landroid/os/Handler;

    move-result-object v2

    .line 339
    iget-object v3, p0, Lcom/adsdk/sdk/banner/AdView$3;->this$0:Lcom/adsdk/sdk/banner/AdView;

    #getter for: Lcom/adsdk/sdk/banner/AdView;->showContent:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/adsdk/sdk/banner/AdView;->access$6(Lcom/adsdk/sdk/banner/AdView;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView$3;->this$0:Lcom/adsdk/sdk/banner/AdView;

    const/4 v3, 0x0

    #setter for: Lcom/adsdk/sdk/banner/AdView;->loadContentThread:Ljava/lang/Thread;
    invoke-static {v2, v3}, Lcom/adsdk/sdk/banner/AdView;->access$8(Lcom/adsdk/sdk/banner/AdView;Ljava/lang/Thread;)V

    .line 345
    const-string v2, "ADSDK"

    const-string v3, "finishing request thread"

    invoke-static {v2, v3}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    return-void

    .line 328
    .end local v1           #requestAd:Lcom/adsdk/sdk/RequestBannerAd;
    :cond_1
    new-instance v1, Lcom/adsdk/sdk/RequestBannerAd;

    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView$3;->this$0:Lcom/adsdk/sdk/banner/AdView;

    #getter for: Lcom/adsdk/sdk/banner/AdView;->xml:Ljava/io/InputStream;
    invoke-static {v2}, Lcom/adsdk/sdk/banner/AdView;->access$1(Lcom/adsdk/sdk/banner/AdView;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/adsdk/sdk/RequestBannerAd;-><init>(Ljava/io/InputStream;)V

    .restart local v1       #requestAd:Lcom/adsdk/sdk/RequestBannerAd;
    goto :goto_0

    .line 341
    :catch_0
    move-exception v0

    .line 342
    .local v0, e:Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView$3;->this$0:Lcom/adsdk/sdk/banner/AdView;

    #calls: Lcom/adsdk/sdk/banner/AdView;->notifyLoadAdFailed(Ljava/lang/Throwable;)V
    invoke-static {v2, v0}, Lcom/adsdk/sdk/banner/AdView;->access$7(Lcom/adsdk/sdk/banner/AdView;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
