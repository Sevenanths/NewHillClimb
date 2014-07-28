.class Lcom/adsdk/sdk/banner/BannerAdView$2;
.super Landroid/webkit/WebViewClient;
.source "BannerAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/banner/BannerAdView;->createWebView(Landroid/content/Context;)Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/banner/BannerAdView;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/banner/BannerAdView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/banner/BannerAdView$2;->this$0:Lcom/adsdk/sdk/banner/BannerAdView;

    .line 194
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v2, 0x1

    .line 198
    iget-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView$2;->this$0:Lcom/adsdk/sdk/banner/BannerAdView;

    #getter for: Lcom/adsdk/sdk/banner/BannerAdView;->response:Lcom/adsdk/sdk/BannerAd;
    invoke-static {v0}, Lcom/adsdk/sdk/banner/BannerAdView;->access$0(Lcom/adsdk/sdk/banner/BannerAdView;)Lcom/adsdk/sdk/BannerAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/BannerAd;->getSkipOverlay()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 199
    iget-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView$2;->this$0:Lcom/adsdk/sdk/banner/BannerAdView;

    #calls: Lcom/adsdk/sdk/banner/BannerAdView;->doOpenUrl(Ljava/lang/String;)V
    invoke-static {v0, p2}, Lcom/adsdk/sdk/banner/BannerAdView;->access$1(Lcom/adsdk/sdk/banner/BannerAdView;Ljava/lang/String;)V

    .line 200
    const-string v0, "TouchListener"

    const-string v1, "false"

    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :goto_0
    return v2

    .line 203
    :cond_0
    const-string v0, "TouchListener"

    const-string v1, "default"

    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView$2;->this$0:Lcom/adsdk/sdk/banner/BannerAdView;

    #calls: Lcom/adsdk/sdk/banner/BannerAdView;->openLink()V
    invoke-static {v0}, Lcom/adsdk/sdk/banner/BannerAdView;->access$2(Lcom/adsdk/sdk/banner/BannerAdView;)V

    goto :goto_0
.end method
