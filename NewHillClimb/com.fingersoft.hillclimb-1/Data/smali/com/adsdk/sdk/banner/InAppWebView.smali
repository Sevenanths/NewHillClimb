.class public Lcom/adsdk/sdk/banner/InAppWebView;
.super Landroid/app/Activity;
.source "InAppWebView.java"


# static fields
.field public static final URL_EXTRA:Ljava/lang/String; = "extra_url"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private initializeWebView(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    .line 58
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 59
    .local v1, webView:Landroid/webkit/WebView;
    invoke-virtual {p0, v1}, Lcom/adsdk/sdk/banner/InAppWebView;->setContentView(Landroid/view/View;)V

    .line 60
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 62
    .local v0, webSettings:Landroid/webkit/WebSettings;
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 68
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 69
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 70
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 71
    new-instance v2, Lcom/adsdk/sdk/banner/InAppWebView$1;

    invoke-direct {v2, p0}, Lcom/adsdk/sdk/banner/InAppWebView$1;-><init>(Lcom/adsdk/sdk/banner/InAppWebView;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 128
    new-instance v2, Lcom/adsdk/sdk/banner/InAppWebView$2;

    invoke-direct {v2, p0}, Lcom/adsdk/sdk/banner/InAppWebView$2;-><init>(Lcom/adsdk/sdk/banner/InAppWebView;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 136
    const-string v2, "REDIRECT_URI"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 137
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x2

    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {p0}, Lcom/adsdk/sdk/banner/InAppWebView;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 29
    invoke-virtual {p0}, Lcom/adsdk/sdk/banner/InAppWebView;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v3, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 31
    invoke-virtual {p0}, Lcom/adsdk/sdk/banner/InAppWebView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 39
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/adsdk/sdk/banner/InAppWebView;->initializeWebView(Landroid/content/Intent;)V

    .line 55
    return-void
.end method
