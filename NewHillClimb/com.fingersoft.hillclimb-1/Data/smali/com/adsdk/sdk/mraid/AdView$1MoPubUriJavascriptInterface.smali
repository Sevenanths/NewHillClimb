.class final Lcom/adsdk/sdk/mraid/AdView$1MoPubUriJavascriptInterface;
.super Ljava/lang/Object;
.source "AdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/mraid/AdView;->addMoPubUriJavascriptInterface()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MoPubUriJavascriptInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/mraid/AdView;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/mraid/AdView;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/adsdk/sdk/mraid/AdView$1MoPubUriJavascriptInterface;->this$0:Lcom/adsdk/sdk/mraid/AdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/mraid/AdView$1MoPubUriJavascriptInterface;)Lcom/adsdk/sdk/mraid/AdView;
    .locals 1
    .parameter

    .prologue
    .line 160
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/AdView$1MoPubUriJavascriptInterface;->this$0:Lcom/adsdk/sdk/mraid/AdView;

    return-object v0
.end method


# virtual methods
.method public fireFinishLoad()Z
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/AdView$1MoPubUriJavascriptInterface;->this$0:Lcom/adsdk/sdk/mraid/AdView;

    new-instance v1, Lcom/adsdk/sdk/mraid/AdView$1MoPubUriJavascriptInterface$1;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/mraid/AdView$1MoPubUriJavascriptInterface$1;-><init>(Lcom/adsdk/sdk/mraid/AdView$1MoPubUriJavascriptInterface;)V

    #calls: Lcom/adsdk/sdk/mraid/AdView;->postHandlerRunnable(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/adsdk/sdk/mraid/AdView;->access$4(Lcom/adsdk/sdk/mraid/AdView;Ljava/lang/Runnable;)V

    .line 170
    const/4 v0, 0x1

    return v0
.end method
