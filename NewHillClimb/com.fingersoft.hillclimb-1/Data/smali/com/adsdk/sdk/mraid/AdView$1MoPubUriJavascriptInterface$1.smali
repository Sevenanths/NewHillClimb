.class Lcom/adsdk/sdk/mraid/AdView$1MoPubUriJavascriptInterface$1;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/mraid/AdView$1MoPubUriJavascriptInterface;->fireFinishLoad()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/adsdk/sdk/mraid/AdView$1MoPubUriJavascriptInterface;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/mraid/AdView$1MoPubUriJavascriptInterface;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/mraid/AdView$1MoPubUriJavascriptInterface$1;->this$1:Lcom/adsdk/sdk/mraid/AdView$1MoPubUriJavascriptInterface;

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/AdView$1MoPubUriJavascriptInterface$1;->this$1:Lcom/adsdk/sdk/mraid/AdView$1MoPubUriJavascriptInterface;

    #getter for: Lcom/adsdk/sdk/mraid/AdView$1MoPubUriJavascriptInterface;->this$0:Lcom/adsdk/sdk/mraid/AdView;
    invoke-static {v0}, Lcom/adsdk/sdk/mraid/AdView$1MoPubUriJavascriptInterface;->access$0(Lcom/adsdk/sdk/mraid/AdView$1MoPubUriJavascriptInterface;)Lcom/adsdk/sdk/mraid/AdView;

    move-result-object v0

    #calls: Lcom/adsdk/sdk/mraid/AdView;->adDidLoad()V
    invoke-static {v0}, Lcom/adsdk/sdk/mraid/AdView;->access$0(Lcom/adsdk/sdk/mraid/AdView;)V

    .line 168
    return-void
.end method
