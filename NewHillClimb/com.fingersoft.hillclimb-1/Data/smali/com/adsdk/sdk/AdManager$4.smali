.class Lcom/adsdk/sdk/AdManager$4;
.super Ljava/lang/Object;
.source "AdManager.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


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


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/AdManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/AdManager$4;->this$0:Lcom/adsdk/sdk/AdManager;

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "thread"
    .parameter "ex"

    .prologue
    .line 294
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$4;->this$0:Lcom/adsdk/sdk/AdManager;

    new-instance v1, Lcom/adsdk/sdk/video/RichMediaAd;

    invoke-direct {v1}, Lcom/adsdk/sdk/video/RichMediaAd;-><init>()V

    #setter for: Lcom/adsdk/sdk/AdManager;->mResponse:Lcom/adsdk/sdk/video/RichMediaAd;
    invoke-static {v0, v1}, Lcom/adsdk/sdk/AdManager;->access$1(Lcom/adsdk/sdk/AdManager;Lcom/adsdk/sdk/video/RichMediaAd;)V

    .line 295
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$4;->this$0:Lcom/adsdk/sdk/AdManager;

    #getter for: Lcom/adsdk/sdk/AdManager;->mResponse:Lcom/adsdk/sdk/video/RichMediaAd;
    invoke-static {v0}, Lcom/adsdk/sdk/AdManager;->access$2(Lcom/adsdk/sdk/AdManager;)Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/RichMediaAd;->setType(I)V

    .line 297
    const-string v0, "Handling exception in ad request thread"

    .line 296
    invoke-static {v0, p2}, Lcom/adsdk/sdk/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 299
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$4;->this$0:Lcom/adsdk/sdk/AdManager;

    const/4 v1, 0x0

    #setter for: Lcom/adsdk/sdk/AdManager;->mRequestThread:Ljava/lang/Thread;
    invoke-static {v0, v1}, Lcom/adsdk/sdk/AdManager;->access$6(Lcom/adsdk/sdk/AdManager;Ljava/lang/Thread;)V

    .line 300
    return-void
.end method
