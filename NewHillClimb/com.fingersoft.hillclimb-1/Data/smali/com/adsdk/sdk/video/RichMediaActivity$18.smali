.class Lcom/adsdk/sdk/video/RichMediaActivity$18;
.super Ljava/lang/Object;
.source "RichMediaActivity.java"

# interfaces
.implements Lcom/adsdk/sdk/video/WebViewClient$OnPageLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adsdk/sdk/video/RichMediaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/video/RichMediaActivity;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/video/RichMediaActivity$18;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    .line 594
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageLoaded()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 598
    const-string v2, "onPageLoaded"

    invoke-static {v2}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    .line 599
    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity$18;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    #getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;
    invoke-static {v2}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$19(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/InterstitialData;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 600
    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity$18;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    #getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;
    invoke-static {v2}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$19(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/InterstitialData;

    move-result-object v2

    iget v2, v2, Lcom/adsdk/sdk/video/InterstitialData;->autoclose:I

    if-lez v2, :cond_0

    .line 601
    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity$18;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    #getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialAutocloseTimer:Ljava/util/Timer;
    invoke-static {v2}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$17(Lcom/adsdk/sdk/video/RichMediaActivity;)Ljava/util/Timer;

    move-result-object v2

    if-nez v2, :cond_0

    .line 602
    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity$18;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    iget-boolean v2, v2, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialAutocloseReset:Z

    if-nez v2, :cond_0

    .line 603
    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$InterstitialAutocloseTask;

    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity$18;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    .line 604
    iget-object v3, p0, Lcom/adsdk/sdk/video/RichMediaActivity$18;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    .line 603
    invoke-direct {v0, v2, v3}, Lcom/adsdk/sdk/video/RichMediaActivity$InterstitialAutocloseTask;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;Landroid/app/Activity;)V

    .line 605
    .local v0, autocloseTask:Lcom/adsdk/sdk/video/RichMediaActivity$InterstitialAutocloseTask;
    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity$18;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    #setter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialAutocloseTimer:Ljava/util/Timer;
    invoke-static {v2, v3}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$18(Lcom/adsdk/sdk/video/RichMediaActivity;Ljava/util/Timer;)V

    .line 606
    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity$18;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    #getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialAutocloseTimer:Ljava/util/Timer;
    invoke-static {v2}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$17(Lcom/adsdk/sdk/video/RichMediaActivity;)Ljava/util/Timer;

    move-result-object v2

    .line 609
    iget-object v3, p0, Lcom/adsdk/sdk/video/RichMediaActivity$18;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    #getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;
    invoke-static {v3}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$19(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/InterstitialData;

    move-result-object v3

    iget v3, v3, Lcom/adsdk/sdk/video/InterstitialData;->autoclose:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    .line 607
    invoke-virtual {v2, v0, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 610
    const-string v2, "onPageLoaded mInterstitialAutocloseTimer"

    invoke-static {v2}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    .line 612
    .end local v0           #autocloseTask:Lcom/adsdk/sdk/video/RichMediaActivity$InterstitialAutocloseTask;
    :cond_0
    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity$18;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    #getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;
    invoke-static {v2}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$19(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/InterstitialData;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 613
    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity$18;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    #getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;
    invoke-static {v2}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$19(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/InterstitialData;

    move-result-object v2

    iget v2, v2, Lcom/adsdk/sdk/video/InterstitialData;->showSkipButtonAfter:I

    if-lez v2, :cond_3

    .line 614
    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity$18;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    #getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialCanCloseTimer:Ljava/util/Timer;
    invoke-static {v2}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$20(Lcom/adsdk/sdk/video/RichMediaActivity;)Ljava/util/Timer;

    move-result-object v2

    if-nez v2, :cond_1

    .line 615
    new-instance v1, Lcom/adsdk/sdk/video/RichMediaActivity$CanSkipTask;

    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity$18;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    .line 616
    iget-object v3, p0, Lcom/adsdk/sdk/video/RichMediaActivity$18;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    .line 615
    invoke-direct {v1, v2, v3}, Lcom/adsdk/sdk/video/RichMediaActivity$CanSkipTask;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;Lcom/adsdk/sdk/video/RichMediaActivity;)V

    .line 617
    .local v1, skipTask:Lcom/adsdk/sdk/video/RichMediaActivity$CanSkipTask;
    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity$18;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    #setter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialCanCloseTimer:Ljava/util/Timer;
    invoke-static {v2, v3}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$21(Lcom/adsdk/sdk/video/RichMediaActivity;Ljava/util/Timer;)V

    .line 618
    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity$18;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    #getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialCanCloseTimer:Ljava/util/Timer;
    invoke-static {v2}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$20(Lcom/adsdk/sdk/video/RichMediaActivity;)Ljava/util/Timer;

    move-result-object v2

    .line 621
    iget-object v3, p0, Lcom/adsdk/sdk/video/RichMediaActivity$18;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    #getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;
    invoke-static {v3}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$19(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/InterstitialData;

    move-result-object v3

    iget v3, v3, Lcom/adsdk/sdk/video/InterstitialData;->showSkipButtonAfter:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    .line 619
    invoke-virtual {v2, v1, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 622
    const-string v2, "onPageLoaded mInterstitialCanCloseTimer"

    invoke-static {v2}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    .line 626
    .end local v1           #skipTask:Lcom/adsdk/sdk/video/RichMediaActivity$CanSkipTask;
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity$18;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    #getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialLoadingTimer:Ljava/util/Timer;
    invoke-static {v2}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$22(Lcom/adsdk/sdk/video/RichMediaActivity;)Ljava/util/Timer;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 627
    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity$18;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    #getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialLoadingTimer:Ljava/util/Timer;
    invoke-static {v2}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$22(Lcom/adsdk/sdk/video/RichMediaActivity;)Ljava/util/Timer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 628
    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity$18;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    const/4 v3, 0x0

    #setter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialLoadingTimer:Ljava/util/Timer;
    invoke-static {v2, v3}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$23(Lcom/adsdk/sdk/video/RichMediaActivity;Ljava/util/Timer;)V

    .line 630
    :cond_2
    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity$18;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    #setter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mPageLoaded:Z
    invoke-static {v2, v5}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$24(Lcom/adsdk/sdk/video/RichMediaActivity;Z)V

    .line 631
    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity$18;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    #getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialController:Lcom/adsdk/sdk/video/InterstitialController;
    invoke-static {v2}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$16(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/InterstitialController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adsdk/sdk/video/InterstitialController;->pageLoaded()V

    .line 632
    return-void

    .line 625
    :cond_3
    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity$18;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    #setter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mCanClose:Z
    invoke-static {v2, v5}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$13(Lcom/adsdk/sdk/video/RichMediaActivity;Z)V

    goto :goto_0
.end method
