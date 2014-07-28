.class Lcom/adsdk/sdk/banner/ReloadTask;
.super Ljava/util/TimerTask;
.source "ReloadTask.java"


# instance fields
.field private final mWebView:Lcom/adsdk/sdk/banner/AdView;


# direct methods
.method public constructor <init>(Lcom/adsdk/sdk/banner/AdView;)V
    .locals 0
    .parameter "WebView"

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/adsdk/sdk/banner/ReloadTask;->mWebView:Lcom/adsdk/sdk/banner/AdView;

    .line 11
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/adsdk/sdk/banner/ReloadTask;->mWebView:Lcom/adsdk/sdk/banner/AdView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/banner/AdView;->loadNextAd()V

    .line 16
    return-void
.end method
