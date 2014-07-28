.class Lcom/adsdk/sdk/video/RichMediaActivity$17;
.super Ljava/lang/Object;
.source "RichMediaActivity.java"

# interfaces
.implements Lcom/adsdk/sdk/video/InterstitialController$OnResetAutocloseListener;


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
    iput-object p1, p0, Lcom/adsdk/sdk/video/RichMediaActivity$17;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    .line 579
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResetAutoclose()V
    .locals 2

    .prologue
    .line 584
    const-string v0, "###########RESET AUTOCLOSE INTERSTITIAL"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    .line 585
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$17;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialAutocloseReset:Z

    .line 586
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$17;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    #getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialAutocloseTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$17(Lcom/adsdk/sdk/video/RichMediaActivity;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$17;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    #getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialAutocloseTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$17(Lcom/adsdk/sdk/video/RichMediaActivity;)Ljava/util/Timer;

    move-result-object v0

    .line 588
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 589
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$17;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    const/4 v1, 0x0

    #setter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialAutocloseTimer:Ljava/util/Timer;
    invoke-static {v0, v1}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$18(Lcom/adsdk/sdk/video/RichMediaActivity;Ljava/util/Timer;)V

    .line 591
    :cond_0
    return-void
.end method
