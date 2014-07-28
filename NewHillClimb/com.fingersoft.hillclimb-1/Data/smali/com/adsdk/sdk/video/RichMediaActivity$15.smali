.class Lcom/adsdk/sdk/video/RichMediaActivity$15;
.super Ljava/lang/Object;
.source "RichMediaActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/adsdk/sdk/video/RichMediaActivity$15;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    .line 540
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 545
    const-string v0, "ADSDK"

    .line 546
    const-string v1, "RichMediaActivity mInterstitialClickListener"

    .line 545
    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$15;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    #getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialController:Lcom/adsdk/sdk/video/InterstitialController;
    invoke-static {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$16(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/InterstitialController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$15;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    #getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialController:Lcom/adsdk/sdk/video/InterstitialController;
    invoke-static {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$16(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/InterstitialController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/InterstitialController;->toggle()V

    .line 549
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$15;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    #getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialController:Lcom/adsdk/sdk/video/InterstitialController;
    invoke-static {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$16(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/InterstitialController;

    move-result-object v0

    .line 550
    invoke-virtual {v0}, Lcom/adsdk/sdk/video/InterstitialController;->resetAutoclose()V

    .line 552
    :cond_0
    return-void
.end method
