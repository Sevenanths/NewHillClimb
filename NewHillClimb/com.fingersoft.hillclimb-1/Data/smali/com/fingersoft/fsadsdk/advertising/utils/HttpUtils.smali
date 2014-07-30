.class public Lcom/fingersoft/fsadsdk/advertising/utils/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static callUrl(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Calling URL: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 39
    new-instance v0, Lcom/fingersoft/fsadsdk/advertising/utils/UrlOpener;

    invoke-direct {v0}, Lcom/fingersoft/fsadsdk/advertising/utils/UrlOpener;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lcom/fingersoft/fsadsdk/advertising/utils/UrlOpener;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 40
    return-void
.end method

.method public static sendJsonRequest(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "requestUrl"

    .prologue
    .line 21
    :try_start_0
    new-instance v5, Ljava/net/URI;

    invoke-direct {v5, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 22
    .local v5, url:Ljava/net/URI;
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 23
    .local v0, defaultClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v5}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    .line 25
    .local v2, httpGetRequest:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 26
    .local v3, httpResponse:Lorg/apache/http/HttpResponse;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-direct {v6, v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 28
    .local v4, reader:Ljava/io/BufferedReader;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 32
    .end local v0           #defaultClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v2           #httpGetRequest:Lorg/apache/http/client/methods/HttpGet;
    .end local v3           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v4           #reader:Ljava/io/BufferedReader;
    .end local v5           #url:Ljava/net/URI;
    :goto_0
    return-object v6

    .line 30
    :catch_0
    move-exception v1

    .line 32
    .local v1, e:Ljava/lang/Exception;
    const-string v6, ""

    goto :goto_0
.end method
