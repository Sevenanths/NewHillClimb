.class public abstract Lcom/adsdk/sdk/RequestAd;
.super Ljava/lang/Object;
.source "RequestAd.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field is:Ljava/io/InputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    .local p0, this:Lcom/adsdk/sdk/RequestAd;,"Lcom/adsdk/sdk/RequestAd<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract parse(Ljava/io/InputStream;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adsdk/sdk/RequestException;
        }
    .end annotation
.end method

.method abstract parseTestString()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adsdk/sdk/RequestException;
        }
    .end annotation
.end method

.method public sendRequest(Lcom/adsdk/sdk/AdRequest;)Ljava/lang/Object;
    .locals 10
    .parameter "request"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adsdk/sdk/AdRequest;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adsdk/sdk/RequestException;
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/adsdk/sdk/RequestAd;,"Lcom/adsdk/sdk/RequestAd<TT;>;"
    const/16 v9, 0x2710

    .line 21
    iget-object v7, p0, Lcom/adsdk/sdk/RequestAd;->is:Ljava/io/InputStream;

    if-nez v7, :cond_1

    .line 22
    const-string v7, "Parse Real"

    invoke-static {v7}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1}, Lcom/adsdk/sdk/AdRequest;->toString()Ljava/lang/String;

    move-result-object v6

    .line 24
    .local v6, url:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Ad RequestPerform HTTP Get Url: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 25
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 26
    .local v0, client:Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v7

    invoke-static {v7, v9}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 28
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v7

    invoke-static {v7, v9}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 30
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v7

    .line 31
    invoke-virtual {p1}, Lcom/adsdk/sdk/AdRequest;->getUserAgent()Ljava/lang/String;

    move-result-object v8

    .line 30
    invoke-static {v7, v8}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 32
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v6}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 35
    .local v2, get:Lorg/apache/http/client/methods/HttpGet;
    :try_start_0
    invoke-virtual {v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 36
    .local v3, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    .line 37
    .local v4, responseCode:I
    const/16 v7, 0xc8

    if-ne v4, v7, :cond_0

    .line 38
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/adsdk/sdk/RequestAd;->parse(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v7

    .line 54
    .end local v0           #client:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v2           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v3           #response:Lorg/apache/http/HttpResponse;
    .end local v4           #responseCode:I
    .end local v6           #url:Ljava/lang/String;
    :goto_0
    return-object v7

    .line 40
    .restart local v0       #client:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v2       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v3       #response:Lorg/apache/http/HttpResponse;
    .restart local v4       #responseCode:I
    .restart local v6       #url:Ljava/lang/String;
    :cond_0
    new-instance v7, Lcom/adsdk/sdk/RequestException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Server Error. Response code:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 40
    invoke-direct {v7, v8}, Lcom/adsdk/sdk/RequestException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Lcom/adsdk/sdk/RequestException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    .line 43
    .end local v3           #response:Lorg/apache/http/HttpResponse;
    .end local v4           #responseCode:I
    :catch_0
    move-exception v1

    .line 44
    .local v1, e:Lcom/adsdk/sdk/RequestException;
    throw v1

    .line 45
    .end local v1           #e:Lcom/adsdk/sdk/RequestException;
    :catch_1
    move-exception v1

    .line 46
    .local v1, e:Lorg/apache/http/client/ClientProtocolException;
    new-instance v7, Lcom/adsdk/sdk/RequestException;

    const-string v8, "Error in HTTP request"

    invoke-direct {v7, v8, v1}, Lcom/adsdk/sdk/RequestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 47
    .end local v1           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_2
    move-exception v1

    .line 48
    .local v1, e:Ljava/io/IOException;
    new-instance v7, Lcom/adsdk/sdk/RequestException;

    const-string v8, "Error in HTTP request"

    invoke-direct {v7, v8, v1}, Lcom/adsdk/sdk/RequestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 49
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v5

    .line 50
    .local v5, t:Ljava/lang/Throwable;
    new-instance v7, Lcom/adsdk/sdk/RequestException;

    const-string v8, "Error in HTTP request"

    invoke-direct {v7, v8, v5}, Lcom/adsdk/sdk/RequestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 53
    .end local v0           #client:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v2           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v5           #t:Ljava/lang/Throwable;
    .end local v6           #url:Ljava/lang/String;
    :cond_1
    const-string v7, "Parse Injected"

    invoke-static {v7}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/adsdk/sdk/RequestAd;->parseTestString()Ljava/lang/Object;

    move-result-object v7

    goto :goto_0
.end method
