.class public Lcom/adsdk/sdk/video/WebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "WebChromeClient.java"


# instance fields
.field private mActivity:Lcom/adsdk/sdk/video/RichMediaActivity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 13
    instance-of v0, p1, Lcom/adsdk/sdk/video/RichMediaActivity;

    if-eqz v0, :cond_0

    .line 14
    check-cast p1, Lcom/adsdk/sdk/video/RichMediaActivity;

    .end local p1
    iput-object p1, p0, Lcom/adsdk/sdk/video/WebChromeClient;->mActivity:Lcom/adsdk/sdk/video/RichMediaActivity;

    .line 16
    :cond_0
    return-void
.end method


# virtual methods
.method public onHideCustomView()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "WebChromeClient onHideCustomView"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/adsdk/sdk/video/WebChromeClient;->mActivity:Lcom/adsdk/sdk/video/RichMediaActivity;

    if-nez v0, :cond_0

    .line 32
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    .line 36
    :goto_0
    return-void

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/video/WebChromeClient;->mActivity:Lcom/adsdk/sdk/video/RichMediaActivity;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->onHideCustomView()V

    goto :goto_0
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 1
    .parameter "view"
    .parameter "callback"

    .prologue
    .line 20
    const-string v0, "WebChromeClient onShowCustomView"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/adsdk/sdk/video/WebChromeClient;->mActivity:Lcom/adsdk/sdk/video/RichMediaActivity;

    if-nez v0, :cond_0

    .line 22
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 26
    :goto_0
    return-void

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/video/WebChromeClient;->mActivity:Lcom/adsdk/sdk/video/RichMediaActivity;

    invoke-virtual {v0, p1, p2}, Lcom/adsdk/sdk/video/RichMediaActivity;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    goto :goto_0
.end method
