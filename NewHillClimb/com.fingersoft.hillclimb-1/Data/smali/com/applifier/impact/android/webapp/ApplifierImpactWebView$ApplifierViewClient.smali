.class Lcom/applifier/impact/android/webapp/ApplifierImpactWebView$ApplifierViewClient;
.super Landroid/webkit/WebViewClient;
.source "ApplifierImpactWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApplifierViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;


# direct methods
.method private constructor <init>(Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;)V
    .locals 0
    .parameter

    .prologue
    .line 309
    iput-object p1, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebView$ApplifierViewClient;->this$0:Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;Lcom/applifier/impact/android/webapp/ApplifierImpactWebView$ApplifierViewClient;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 309
    invoke-direct {p0, p1}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebView$ApplifierViewClient;-><init>(Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;)V

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .parameter "view"
    .parameter "url"

    .prologue
    .line 334
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 335
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter "webview"
    .parameter "url"

    .prologue
    .line 312
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Finished url: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 314
    iget-object v0, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebView$ApplifierViewClient;->this$0:Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;

    #getter for: Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;->_listener:Lcom/applifier/impact/android/webapp/IApplifierImpactWebViewListener;
    invoke-static {v0}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;->access$0(Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;)Lcom/applifier/impact/android/webapp/IApplifierImpactWebViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebView$ApplifierViewClient;->this$0:Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;

    #getter for: Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;->_webAppLoaded:Z
    invoke-static {v0}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;->access$1(Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebView$ApplifierViewClient;->this$0:Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;

    const/4 v1, 0x1

    #setter for: Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;->_webAppLoaded:Z
    invoke-static {v0, v1}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;->access$2(Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;Z)V

    .line 316
    iget-object v0, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebView$ApplifierViewClient;->this$0:Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;

    #getter for: Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;->_listener:Lcom/applifier/impact/android/webapp/IApplifierImpactWebViewListener;
    invoke-static {v0}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;->access$0(Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;)Lcom/applifier/impact/android/webapp/IApplifierImpactWebViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/applifier/impact/android/webapp/IApplifierImpactWebViewListener;->onWebAppLoaded()V

    .line 318
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ApplifierViewClient.onReceivedError() -> "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 329
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 330
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Trying to load url: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 323
    const/4 v0, 0x0

    return v0
.end method
