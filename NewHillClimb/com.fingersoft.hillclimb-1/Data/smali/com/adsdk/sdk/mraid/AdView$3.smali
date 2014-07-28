.class Lcom/adsdk/sdk/mraid/AdView$3;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/mraid/AdView;->registerClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/mraid/AdView;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/mraid/AdView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/mraid/AdView$3;->this$0:Lcom/adsdk/sdk/mraid/AdView;

    .line 623
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 625
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 626
    .local v1, httpclient:Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    iget-object v3, p0, Lcom/adsdk/sdk/mraid/AdView$3;->this$0:Lcom/adsdk/sdk/mraid/AdView;

    #getter for: Lcom/adsdk/sdk/mraid/AdView;->mClickthroughUrl:Ljava/lang/String;
    invoke-static {v3}, Lcom/adsdk/sdk/mraid/AdView;->access$5(Lcom/adsdk/sdk/mraid/AdView;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 627
    .local v2, httpget:Lorg/apache/http/client/methods/HttpGet;
    const-string v3, "User-Agent"

    iget-object v4, p0, Lcom/adsdk/sdk/mraid/AdView$3;->this$0:Lcom/adsdk/sdk/mraid/AdView;

    #getter for: Lcom/adsdk/sdk/mraid/AdView;->mUserAgent:Ljava/lang/String;
    invoke-static {v4}, Lcom/adsdk/sdk/mraid/AdView;->access$6(Lcom/adsdk/sdk/mraid/AdView;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    :try_start_0
    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 635
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 637
    :goto_0
    return-void

    .line 630
    :catch_0
    move-exception v0

    .line 631
    .local v0, e:Lorg/apache/http/client/ClientProtocolException;
    :try_start_1
    const-string v3, "MoPub"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Click tracking failed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/adsdk/sdk/mraid/AdView$3;->this$0:Lcom/adsdk/sdk/mraid/AdView;

    #getter for: Lcom/adsdk/sdk/mraid/AdView;->mClickthroughUrl:Ljava/lang/String;
    invoke-static {v5}, Lcom/adsdk/sdk/mraid/AdView;->access$5(Lcom/adsdk/sdk/mraid/AdView;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 635
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_0

    .line 632
    .end local v0           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v0

    .line 633
    .local v0, e:Ljava/io/IOException;
    :try_start_2
    const-string v3, "MoPub"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Click tracking failed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/adsdk/sdk/mraid/AdView$3;->this$0:Lcom/adsdk/sdk/mraid/AdView;

    #getter for: Lcom/adsdk/sdk/mraid/AdView;->mClickthroughUrl:Ljava/lang/String;
    invoke-static {v5}, Lcom/adsdk/sdk/mraid/AdView;->access$5(Lcom/adsdk/sdk/mraid/AdView;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 635
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_0

    .line 634
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 635
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 636
    throw v3
.end method
