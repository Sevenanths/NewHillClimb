.class Lcom/adsdk/sdk/video/InterstitialController$4;
.super Ljava/lang/Object;
.source "InterstitialController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adsdk/sdk/video/InterstitialController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/video/InterstitialController;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/video/InterstitialController;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/video/InterstitialController$4;->this$0:Lcom/adsdk/sdk/video/InterstitialController;

    .line 686
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 689
    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController$4;->this$0:Lcom/adsdk/sdk/video/InterstitialController;

    #getter for: Lcom/adsdk/sdk/video/InterstitialController;->mBrowser:Lcom/adsdk/sdk/video/InterstitialController$BrowserControl;
    invoke-static {v0}, Lcom/adsdk/sdk/video/InterstitialController;->access$0(Lcom/adsdk/sdk/video/InterstitialController;)Lcom/adsdk/sdk/video/InterstitialController$BrowserControl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 690
    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController$4;->this$0:Lcom/adsdk/sdk/video/InterstitialController;

    #getter for: Lcom/adsdk/sdk/video/InterstitialController;->mBrowser:Lcom/adsdk/sdk/video/InterstitialController$BrowserControl;
    invoke-static {v0}, Lcom/adsdk/sdk/video/InterstitialController;->access$0(Lcom/adsdk/sdk/video/InterstitialController;)Lcom/adsdk/sdk/video/InterstitialController$BrowserControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/adsdk/sdk/video/InterstitialController$BrowserControl;->launchExternalBrowser()V

    .line 692
    :cond_0
    return-void
.end method
