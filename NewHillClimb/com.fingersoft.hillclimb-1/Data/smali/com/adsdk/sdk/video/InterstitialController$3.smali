.class Lcom/adsdk/sdk/video/InterstitialController$3;
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
    iput-object p1, p0, Lcom/adsdk/sdk/video/InterstitialController$3;->this$0:Lcom/adsdk/sdk/video/InterstitialController;

    .line 676
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 679
    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController$3;->this$0:Lcom/adsdk/sdk/video/InterstitialController;

    #getter for: Lcom/adsdk/sdk/video/InterstitialController;->mBrowser:Lcom/adsdk/sdk/video/InterstitialController$BrowserControl;
    invoke-static {v0}, Lcom/adsdk/sdk/video/InterstitialController;->access$0(Lcom/adsdk/sdk/video/InterstitialController;)Lcom/adsdk/sdk/video/InterstitialController$BrowserControl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController$3;->this$0:Lcom/adsdk/sdk/video/InterstitialController;

    #getter for: Lcom/adsdk/sdk/video/InterstitialController;->mBrowser:Lcom/adsdk/sdk/video/InterstitialController$BrowserControl;
    invoke-static {v0}, Lcom/adsdk/sdk/video/InterstitialController;->access$0(Lcom/adsdk/sdk/video/InterstitialController;)Lcom/adsdk/sdk/video/InterstitialController$BrowserControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/adsdk/sdk/video/InterstitialController$BrowserControl;->goForward()V

    .line 682
    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController$3;->this$0:Lcom/adsdk/sdk/video/InterstitialController;

    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController$3;->this$0:Lcom/adsdk/sdk/video/InterstitialController;

    #getter for: Lcom/adsdk/sdk/video/InterstitialController;->mDefaultTimeout:I
    invoke-static {v1}, Lcom/adsdk/sdk/video/InterstitialController;->access$1(Lcom/adsdk/sdk/video/InterstitialController;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/InterstitialController;->show(I)V

    .line 683
    return-void
.end method
