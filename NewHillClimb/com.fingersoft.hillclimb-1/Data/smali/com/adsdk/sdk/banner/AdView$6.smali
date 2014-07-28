.class Lcom/adsdk/sdk/banner/AdView$6;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/banner/AdView;->notifyLoadAdFailed(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/banner/AdView;

.field private final synthetic val$e:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/banner/AdView;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/banner/AdView$6;->this$0:Lcom/adsdk/sdk/banner/AdView;

    iput-object p2, p0, Lcom/adsdk/sdk/banner/AdView$6;->val$e:Ljava/lang/Throwable;

    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 391
    const-string v0, "ADSDK"

    const-string v1, "Exception in request thread"

    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView$6;->val$e:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Lcom/adsdk/sdk/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 392
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$6;->this$0:Lcom/adsdk/sdk/banner/AdView;

    #getter for: Lcom/adsdk/sdk/banner/AdView;->adListener:Lcom/adsdk/sdk/AdListener;
    invoke-static {v0}, Lcom/adsdk/sdk/banner/AdView;->access$9(Lcom/adsdk/sdk/banner/AdView;)Lcom/adsdk/sdk/AdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 393
    const-string v0, "ADSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "notify bannerListener: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 394
    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView$6;->this$0:Lcom/adsdk/sdk/banner/AdView;

    #getter for: Lcom/adsdk/sdk/banner/AdView;->adListener:Lcom/adsdk/sdk/AdListener;
    invoke-static {v2}, Lcom/adsdk/sdk/banner/AdView;->access$9(Lcom/adsdk/sdk/banner/AdView;)Lcom/adsdk/sdk/AdListener;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 393
    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$6;->this$0:Lcom/adsdk/sdk/banner/AdView;

    #getter for: Lcom/adsdk/sdk/banner/AdView;->adListener:Lcom/adsdk/sdk/AdListener;
    invoke-static {v0}, Lcom/adsdk/sdk/banner/AdView;->access$9(Lcom/adsdk/sdk/banner/AdView;)Lcom/adsdk/sdk/AdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/adsdk/sdk/AdListener;->noAdFound()V

    .line 397
    :cond_0
    return-void
.end method
