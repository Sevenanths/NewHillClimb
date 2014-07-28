.class Lcom/adsdk/sdk/banner/InAppWebView$1;
.super Landroid/webkit/WebViewClient;
.source "InAppWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/banner/InAppWebView;->initializeWebView(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/banner/InAppWebView;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/banner/InAppWebView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/banner/InAppWebView$1;->this$0:Lcom/adsdk/sdk/banner/InAppWebView;

    .line 71
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 75
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 76
    .local v0, a:Landroid/app/Activity;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MRAID error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 77
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 8
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v3, 0x1

    .line 81
    if-nez p2, :cond_0

    const/4 v3, 0x0

    .line 101
    :goto_0
    return v3

    .line 83
    :cond_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 84
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, host:Ljava/lang/String;
    const-string v4, "http:"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "https:"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 87
    :cond_1
    const-string v4, "play.google.com"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 88
    const-string v4, "market.android.com"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 89
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_2
    :try_start_0
    iget-object v4, p0, Lcom/adsdk/sdk/banner/InAppWebView$1;->this$0:Lcom/adsdk/sdk/banner/InAppWebView;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v4, v5}, Lcom/adsdk/sdk/banner/InAppWebView;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_1
    iget-object v4, p0, Lcom/adsdk/sdk/banner/InAppWebView$1;->this$0:Lcom/adsdk/sdk/banner/InAppWebView;

    invoke-virtual {v4}, Lcom/adsdk/sdk/banner/InAppWebView;->finish()V

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, exception:Landroid/content/ActivityNotFoundException;
    const-string v4, "MoPub"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unable to start activity for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 97
    const-string v6, "Ensure that your phone can handle this intent."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 96
    invoke-static {v4, v5}, Lcom/adsdk/sdk/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
