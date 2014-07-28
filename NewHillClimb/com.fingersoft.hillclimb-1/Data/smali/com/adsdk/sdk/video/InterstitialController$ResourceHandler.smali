.class Lcom/adsdk/sdk/video/InterstitialController$ResourceHandler;
.super Landroid/os/Handler;
.source "InterstitialController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adsdk/sdk/video/InterstitialController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResourceHandler"
.end annotation


# instance fields
.field interstitialController:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/adsdk/sdk/video/InterstitialController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/adsdk/sdk/video/InterstitialController;)V
    .locals 1
    .parameter "i"

    .prologue
    .line 512
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 513
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController$ResourceHandler;->interstitialController:Ljava/lang/ref/WeakReference;

    .line 514
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 518
    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController$ResourceHandler;->interstitialController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsdk/sdk/video/InterstitialController;

    .line 519
    .local v0, wInterstitialController:Lcom/adsdk/sdk/video/InterstitialController;
    if-eqz v0, :cond_0

    .line 520
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 529
    #calls: Lcom/adsdk/sdk/video/InterstitialController;->handleMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/adsdk/sdk/video/InterstitialController;->access$5(Lcom/adsdk/sdk/video/InterstitialController;Landroid/os/Message;)V

    .line 533
    :cond_0
    :goto_0
    return-void

    .line 522
    :pswitch_0
    #calls: Lcom/adsdk/sdk/video/InterstitialController;->setProgress()I
    invoke-static {v0}, Lcom/adsdk/sdk/video/InterstitialController;->access$2(Lcom/adsdk/sdk/video/InterstitialController;)I

    .line 523
    #getter for: Lcom/adsdk/sdk/video/InterstitialController;->mShowing:Z
    invoke-static {v0}, Lcom/adsdk/sdk/video/InterstitialController;->access$3(Lcom/adsdk/sdk/video/InterstitialController;)Z

    move-result v1

    if-eqz v1, :cond_0

    #getter for: Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;
    invoke-static {v0}, Lcom/adsdk/sdk/video/InterstitialController;->access$4(Lcom/adsdk/sdk/video/InterstitialController;)Lcom/adsdk/sdk/video/InterstitialData;

    move-result-object v1

    iget-boolean v1, v1, Lcom/adsdk/sdk/video/InterstitialData;->showTimer:Z

    if-eqz v1, :cond_0

    .line 524
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/adsdk/sdk/video/InterstitialController$ResourceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 525
    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, p1, v1, v2}, Lcom/adsdk/sdk/video/InterstitialController$ResourceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 520
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
