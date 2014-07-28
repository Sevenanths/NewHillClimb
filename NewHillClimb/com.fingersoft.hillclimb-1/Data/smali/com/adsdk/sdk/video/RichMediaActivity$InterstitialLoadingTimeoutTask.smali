.class Lcom/adsdk/sdk/video/RichMediaActivity$InterstitialLoadingTimeoutTask;
.super Ljava/util/TimerTask;
.source "RichMediaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adsdk/sdk/video/RichMediaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InterstitialLoadingTimeoutTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/video/RichMediaActivity;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/adsdk/sdk/video/RichMediaActivity$InterstitialLoadingTimeoutTask;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 128
    const-string v0, "ADSDK"

    .line 129
    const-string v1, "###########TRACKING INTERSTITIAL LOADING TIMEOUT"

    .line 128
    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$InterstitialLoadingTimeoutTask;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    const/4 v1, 0x1

    #setter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mCanClose:Z
    invoke-static {v0, v1}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$13(Lcom/adsdk/sdk/video/RichMediaActivity;Z)V

    .line 131
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$InterstitialLoadingTimeoutTask;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    #getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialController:Lcom/adsdk/sdk/video/InterstitialController;
    invoke-static {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$16(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/InterstitialController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/InterstitialController;->pageLoaded()V

    .line 132
    return-void
.end method
