.class Lcom/adsdk/sdk/mraid/MraidView$MraidWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "MraidView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adsdk/sdk/mraid/MraidView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MraidWebChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/mraid/MraidView;


# direct methods
.method private constructor <init>(Lcom/adsdk/sdk/mraid/MraidView;)V
    .locals 0
    .parameter

    .prologue
    .line 382
    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MraidView$MraidWebChromeClient;->this$0:Lcom/adsdk/sdk/mraid/MraidView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adsdk/sdk/mraid/MraidView;Lcom/adsdk/sdk/mraid/MraidView$MraidWebChromeClient;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 382
    invoke-direct {p0, p1}, Lcom/adsdk/sdk/mraid/MraidView$MraidWebChromeClient;-><init>(Lcom/adsdk/sdk/mraid/MraidView;)V

    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1
    .parameter "view"
    .parameter "url"
    .parameter "message"
    .parameter "result"

    .prologue
    .line 385
    const-string v0, "MraidView"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const/4 v0, 0x0

    return v0
.end method
