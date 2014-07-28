.class Lcom/adsdk/sdk/banner/InAppWebView$2;
.super Landroid/webkit/WebChromeClient;
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
    iput-object p1, p0, Lcom/adsdk/sdk/banner/InAppWebView$2;->this$0:Lcom/adsdk/sdk/banner/InAppWebView;

    .line 128
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2
    .parameter "view"
    .parameter "progress"

    .prologue
    .line 130
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 131
    .local v0, a:Landroid/app/Activity;
    const-string v1, "Loading..."

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 132
    mul-int/lit8 v1, p2, 0x64

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setProgress(I)V

    .line 133
    const/16 v1, 0x64

    if-ne p2, v1, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 134
    :cond_0
    return-void
.end method
