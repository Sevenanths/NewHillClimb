.class Lcom/adsdk/sdk/AdManager$3;
.super Ljava/lang/Object;
.source "AdManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/AdManager;->requestAd(Ljava/io/InputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/AdManager;

.field private final synthetic val$xml:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/AdManager;Ljava/io/InputStream;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/AdManager$3;->this$0:Lcom/adsdk/sdk/AdManager;

    iput-object p2, p0, Lcom/adsdk/sdk/AdManager$3;->val$xml:Ljava/io/InputStream;

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/AdManager$3;)Lcom/adsdk/sdk/AdManager;
    .locals 1
    .parameter

    .prologue
    .line 230
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$3;->this$0:Lcom/adsdk/sdk/AdManager;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 233
    :goto_0
    invoke-static {}, Lcom/adsdk/sdk/video/ResourceManager;->isDownloading()Z

    move-result v3

    if-nez v3, :cond_1

    .line 239
    const-string v3, "starting request thread"

    invoke-static {v3}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 241
    :try_start_0
    new-instance v1, Lcom/adsdk/sdk/RequestRichMediaAd;

    iget-object v3, p0, Lcom/adsdk/sdk/AdManager$3;->val$xml:Ljava/io/InputStream;

    invoke-direct {v1, v3}, Lcom/adsdk/sdk/RequestRichMediaAd;-><init>(Ljava/io/InputStream;)V

    .line 242
    .local v1, requestAd:Lcom/adsdk/sdk/RequestRichMediaAd;
    iget-object v3, p0, Lcom/adsdk/sdk/AdManager$3;->this$0:Lcom/adsdk/sdk/AdManager;

    #calls: Lcom/adsdk/sdk/AdManager;->getRequest()Lcom/adsdk/sdk/AdRequest;
    invoke-static {v3}, Lcom/adsdk/sdk/AdManager;->access$0(Lcom/adsdk/sdk/AdManager;)Lcom/adsdk/sdk/AdRequest;

    move-result-object v0

    .line 243
    .local v0, request:Lcom/adsdk/sdk/AdRequest;
    iget-object v4, p0, Lcom/adsdk/sdk/AdManager$3;->this$0:Lcom/adsdk/sdk/AdManager;

    invoke-virtual {v1, v0}, Lcom/adsdk/sdk/RequestRichMediaAd;->sendRequest(Lcom/adsdk/sdk/AdRequest;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/adsdk/sdk/video/RichMediaAd;

    #setter for: Lcom/adsdk/sdk/AdManager;->mResponse:Lcom/adsdk/sdk/video/RichMediaAd;
    invoke-static {v4, v3}, Lcom/adsdk/sdk/AdManager;->access$1(Lcom/adsdk/sdk/AdManager;Lcom/adsdk/sdk/video/RichMediaAd;)V

    .line 244
    iget-object v3, p0, Lcom/adsdk/sdk/AdManager$3;->this$0:Lcom/adsdk/sdk/AdManager;

    #getter for: Lcom/adsdk/sdk/AdManager;->mResponse:Lcom/adsdk/sdk/video/RichMediaAd;
    invoke-static {v3}, Lcom/adsdk/sdk/AdManager;->access$2(Lcom/adsdk/sdk/AdManager;)Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adsdk/sdk/video/RichMediaAd;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    .line 245
    const-string v3, "response OK received"

    invoke-static {v3}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 246
    iget-object v3, p0, Lcom/adsdk/sdk/AdManager$3;->this$0:Lcom/adsdk/sdk/AdManager;

    #getter for: Lcom/adsdk/sdk/AdManager;->mListener:Lcom/adsdk/sdk/AdListener;
    invoke-static {v3}, Lcom/adsdk/sdk/AdManager;->access$4(Lcom/adsdk/sdk/AdManager;)Lcom/adsdk/sdk/AdListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 247
    iget-object v3, p0, Lcom/adsdk/sdk/AdManager$3;->this$0:Lcom/adsdk/sdk/AdManager;

    #getter for: Lcom/adsdk/sdk/AdManager;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/adsdk/sdk/AdManager;->access$5(Lcom/adsdk/sdk/AdManager;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/adsdk/sdk/AdManager$3$1;

    invoke-direct {v4, p0}, Lcom/adsdk/sdk/AdManager$3$1;-><init>(Lcom/adsdk/sdk/AdManager$3;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 284
    .end local v0           #request:Lcom/adsdk/sdk/AdRequest;
    .end local v1           #requestAd:Lcom/adsdk/sdk/RequestRichMediaAd;
    :cond_0
    :goto_1
    const-string v3, "finishing ad request thread"

    invoke-static {v3}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 285
    iget-object v3, p0, Lcom/adsdk/sdk/AdManager$3;->this$0:Lcom/adsdk/sdk/AdManager;

    const/4 v4, 0x0

    #setter for: Lcom/adsdk/sdk/AdManager;->mRequestThread:Ljava/lang/Thread;
    invoke-static {v3, v4}, Lcom/adsdk/sdk/AdManager;->access$6(Lcom/adsdk/sdk/AdManager;Ljava/lang/Thread;)V

    .line 286
    return-void

    .line 235
    :cond_1
    const-wide/16 v3, 0xc8

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 236
    :catch_0
    move-exception v3

    goto :goto_0

    .line 256
    .restart local v0       #request:Lcom/adsdk/sdk/AdRequest;
    .restart local v1       #requestAd:Lcom/adsdk/sdk/RequestRichMediaAd;
    :cond_2
    :try_start_2
    const-string v3, "response NO AD received"

    invoke-static {v3}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 257
    iget-object v3, p0, Lcom/adsdk/sdk/AdManager$3;->this$0:Lcom/adsdk/sdk/AdManager;

    #getter for: Lcom/adsdk/sdk/AdManager;->mListener:Lcom/adsdk/sdk/AdListener;
    invoke-static {v3}, Lcom/adsdk/sdk/AdManager;->access$4(Lcom/adsdk/sdk/AdManager;)Lcom/adsdk/sdk/AdListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 258
    iget-object v3, p0, Lcom/adsdk/sdk/AdManager$3;->this$0:Lcom/adsdk/sdk/AdManager;

    #getter for: Lcom/adsdk/sdk/AdManager;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/adsdk/sdk/AdManager;->access$5(Lcom/adsdk/sdk/AdManager;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/adsdk/sdk/AdManager$3$2;

    invoke-direct {v4, p0}, Lcom/adsdk/sdk/AdManager$3$2;-><init>(Lcom/adsdk/sdk/AdManager$3;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 267
    .end local v0           #request:Lcom/adsdk/sdk/AdRequest;
    .end local v1           #requestAd:Lcom/adsdk/sdk/RequestRichMediaAd;
    :catch_1
    move-exception v2

    .line 268
    .local v2, t:Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/adsdk/sdk/AdManager$3;->this$0:Lcom/adsdk/sdk/AdManager;

    new-instance v4, Lcom/adsdk/sdk/video/RichMediaAd;

    invoke-direct {v4}, Lcom/adsdk/sdk/video/RichMediaAd;-><init>()V

    #setter for: Lcom/adsdk/sdk/AdManager;->mResponse:Lcom/adsdk/sdk/video/RichMediaAd;
    invoke-static {v3, v4}, Lcom/adsdk/sdk/AdManager;->access$1(Lcom/adsdk/sdk/AdManager;Lcom/adsdk/sdk/video/RichMediaAd;)V

    .line 269
    iget-object v3, p0, Lcom/adsdk/sdk/AdManager$3;->this$0:Lcom/adsdk/sdk/AdManager;

    #getter for: Lcom/adsdk/sdk/AdManager;->mResponse:Lcom/adsdk/sdk/video/RichMediaAd;
    invoke-static {v3}, Lcom/adsdk/sdk/AdManager;->access$2(Lcom/adsdk/sdk/AdManager;)Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/adsdk/sdk/video/RichMediaAd;->setType(I)V

    .line 270
    iget-object v3, p0, Lcom/adsdk/sdk/AdManager$3;->this$0:Lcom/adsdk/sdk/AdManager;

    #getter for: Lcom/adsdk/sdk/AdManager;->mListener:Lcom/adsdk/sdk/AdListener;
    invoke-static {v3}, Lcom/adsdk/sdk/AdManager;->access$4(Lcom/adsdk/sdk/AdManager;)Lcom/adsdk/sdk/AdListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 271
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Ad Load failed. Reason:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 272
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 274
    iget-object v3, p0, Lcom/adsdk/sdk/AdManager$3;->this$0:Lcom/adsdk/sdk/AdManager;

    #getter for: Lcom/adsdk/sdk/AdManager;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/adsdk/sdk/AdManager;->access$5(Lcom/adsdk/sdk/AdManager;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/adsdk/sdk/AdManager$3$3;

    invoke-direct {v4, p0}, Lcom/adsdk/sdk/AdManager$3$3;-><init>(Lcom/adsdk/sdk/AdManager$3;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method
