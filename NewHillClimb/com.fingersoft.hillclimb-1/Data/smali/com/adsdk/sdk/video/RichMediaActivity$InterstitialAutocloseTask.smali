.class Lcom/adsdk/sdk/video/RichMediaActivity$InterstitialAutocloseTask;
.super Ljava/util/TimerTask;
.source "RichMediaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adsdk/sdk/video/RichMediaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InterstitialAutocloseTask"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field final synthetic this$0:Lcom/adsdk/sdk/video/RichMediaActivity;


# direct methods
.method public constructor <init>(Lcom/adsdk/sdk/video/RichMediaActivity;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter "activity"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/adsdk/sdk/video/RichMediaActivity$InterstitialAutocloseTask;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 89
    iput-object p2, p0, Lcom/adsdk/sdk/video/RichMediaActivity$InterstitialAutocloseTask;->mActivity:Landroid/app/Activity;

    .line 90
    return-void
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/video/RichMediaActivity$InterstitialAutocloseTask;)Lcom/adsdk/sdk/video/RichMediaActivity;
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$InterstitialAutocloseTask;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 95
    const-string v0, "###########TRACKING INTERSTITIAL AUTOCLOSE"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$InterstitialAutocloseTask;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    const/4 v1, 0x1

    #setter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mResult:Z
    invoke-static {v0, v1}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$12(Lcom/adsdk/sdk/video/RichMediaActivity;Z)V

    .line 97
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$InterstitialAutocloseTask;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/adsdk/sdk/video/RichMediaActivity$InterstitialAutocloseTask$1;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$InterstitialAutocloseTask$1;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity$InterstitialAutocloseTask;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 120
    return-void
.end method
