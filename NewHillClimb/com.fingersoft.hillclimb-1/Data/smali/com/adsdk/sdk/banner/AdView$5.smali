.class Lcom/adsdk/sdk/banner/AdView$5;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/banner/AdView;->notifyNoAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/banner/AdView;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/banner/AdView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/banner/AdView$5;->this$0:Lcom/adsdk/sdk/banner/AdView;

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 378
    const-string v0, "ADSDK"

    const-string v1, "No Ad"

    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$5;->this$0:Lcom/adsdk/sdk/banner/AdView;

    #getter for: Lcom/adsdk/sdk/banner/AdView;->adListener:Lcom/adsdk/sdk/AdListener;
    invoke-static {v0}, Lcom/adsdk/sdk/banner/AdView;->access$9(Lcom/adsdk/sdk/banner/AdView;)Lcom/adsdk/sdk/AdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$5;->this$0:Lcom/adsdk/sdk/banner/AdView;

    #getter for: Lcom/adsdk/sdk/banner/AdView;->adListener:Lcom/adsdk/sdk/AdListener;
    invoke-static {v0}, Lcom/adsdk/sdk/banner/AdView;->access$9(Lcom/adsdk/sdk/banner/AdView;)Lcom/adsdk/sdk/AdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/adsdk/sdk/AdListener;->noAdFound()V

    .line 382
    :cond_0
    return-void
.end method
